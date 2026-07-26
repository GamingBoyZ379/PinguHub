--== NoobIncremental Rayfield Version ==--
if not game:IsLoaded() then
    game.Loaded:Wait()
end

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local RS = game:GetService("ReplicatedStorage")
local GameContent = workspace:WaitForChild("__GAME_CONTENT")

local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

task.wait(0.25)

-- State
local MovementMode = "Teleport"
local SelectedTrialDifficulty = "Easy"
local SelectedMob = nil
local SelectedOre = nil
local SelectedCapsule = nil
local SelectedRune = nil

local autoTrialOn = false
local farmAllOn = false
local farmSelectedOn = false
local farmAllOresOn = false
local farmSelectedOreOn = false
local autoCapsuleOn = false
local autoRollOn = false
local autoT1ChestOn = false
local autoT2ChestOn = false

local TrialActive = false
local AutosPaused = false
local movementCancelled = false
local hideRollsOn = false

local OreList = {}
local MobList = {}
local capsuleOptions = {}
local capsuleDisplayMap = {}
local runeOptions = {}

-- Helpers
local function normalizeMode(mode)
    if typeof(mode) == "table" then
        return mode[1]
    end
    return mode
end

local function getRoot()
    local char = LocalPlayer.Character
    return char and char:FindFirstChild("HumanoidRootPart")
end

local function isPlayerInTrial()
    local hud = LocalPlayer.PlayerGui:FindFirstChild("HUD")
    local leaveButton = hud and hud:FindFirstChild("LeaveTrial")
    return leaveButton and leaveButton.Visible
end

local function updateAutoPauseState()
    TrialActive = isPlayerInTrial()
    AutosPaused = TrialActive
end

local function getHP(obj)
    if not obj or not obj.Parent then return 0 end
    local ui = obj:FindFirstChild("OresTopUI")
    if not ui then return 0 end
    local bar = ui:FindFirstChild("Bar")
    if not bar then return 0 end
    local hpLabel = bar:FindFirstChild("Health")
    if not hpLabel then return 0 end
    local raw = tostring(hpLabel.Text):gsub("%s+", ""):lower()
    local left = raw:match("^(.-)/")
    if not left then return 0 end
    local num = tonumber(left)
    if num then return num end
    if left ~= "0" then
        return 1
    end
    return 0
end

local function isAlive(obj)
    return getHP(obj) > 0
end

local function isTrialMobAlive(mob)
    if not mob or not mob.Parent then return false end
    return getHP(mob) > 0
end

local function leaveTrial()
    local Event = RS:FindFirstChild("__Net") and RS.__Net:FindFirstChild("MainRemote")
    if Event then
        Event:FireServer("LeaveTrial")
    end
end

local function getTargetCFrame(obj)
    if obj:IsA("Model") then
        local specificPart = obj:FindFirstChild("TouchPart") or obj:FindFirstChild("Handle")
        if specificPart then return specificPart.CFrame end
        local ok, pivot = pcall(function() return obj:GetPivot() end)
        if ok then return pivot end
    elseif obj:IsA("BasePart") then
        return obj.CFrame
    end
    return nil
end

-- Movement (Discord-style, Legit ignores aliveCheckFn)
local function moveTo(cframe, aliveCheckFn)
    movementCancelled = false
    local mode = normalizeMode(MovementMode)
    local root = getRoot()
    local character = LocalPlayer.Character
    local humanoid = character and character:FindFirstChild("Humanoid")
    if not root or not humanoid then return end
    if not cframe then return end
    if AutosPaused then return end

    if mode == "Teleport" then
        root.CFrame = cframe
        return
    end

    if mode == "Tween" then
        local TweenService = game:GetService("TweenService")
        local distance = (root.Position - cframe.Position).Magnitude
        local tween = TweenService:Create(
            root,
            TweenInfo.new(distance / 60, Enum.EasingStyle.Linear),
            { CFrame = cframe }
        )
        tween:Play()
        while tween.PlaybackState == Enum.PlaybackState.Playing do
            if movementCancelled or AutosPaused then
                tween:Cancel()
                return
            end
            if mode ~= "Legit" and aliveCheckFn and not aliveCheckFn() then
                tween:Cancel()
                return
            end
            task.wait(0.05)
        end
        return
    end

    -- Walk / Legit
    local targetPos = cframe.Position
    humanoid:MoveTo(targetPos)
    local reached = false
    local connection = humanoid.MoveToFinished:Connect(function()
        reached = true
    end)

    local lastPos = root.Position
    local stuckTimer = 0

    while not reached do
        task.wait(0.05)
        if movementCancelled or AutosPaused then
            connection:Disconnect()
            return
        end
        if mode ~= "Legit" and aliveCheckFn and not aliveCheckFn() then
            connection:Disconnect()
            return
        end

        local currentPos = root.Position
        local distMoved = (currentPos - lastPos).Magnitude
        lastPos = currentPos

        if distMoved < 0.05 then
            stuckTimer += 0.05
        else
            stuckTimer = 0
        end

        if stuckTimer > 0.6 then
            humanoid.Jump = true
            humanoid:MoveTo(targetPos)
            stuckTimer = 0
        end

        if stuckTimer > 1.2 then
            root.CFrame = cframe + Vector3.new(0, 0.3, 0)
            break
        end
    end

    connection:Disconnect()
end

-- Lists
local function refreshOreList()
    local oresFolder = GameContent:FindFirstChild("Ores")
    if not oresFolder then return end
    local seen = {}
    OreList = {}
    for _, ore in ipairs(oresFolder:GetChildren()) do
        local cleanName = ore.Name:match("^(.-)#?%d*$") or ore.Name
        if not seen[cleanName] then
            seen[cleanName] = true
            table.insert(OreList, cleanName)
        end
    end
end

local function refreshMobList()
    local mobsFolder = GameContent:FindFirstChild("Mobs")
    if not mobsFolder then return end
    local seen = {}
    MobList = {}
    for _, mob in ipairs(mobsFolder:GetChildren()) do
        local cleanName = mob.Name:match("^(.-)#?%d*$") or mob.Name
        if not seen[cleanName] then
            seen[cleanName] = true
            table.insert(MobList, cleanName)
        end
    end
end

local function refreshCapsuleList()
    local options = {}
    local displayToFull = {}
    local uiZones = GameContent:FindFirstChild("UIZones")
    if uiZones then
        for _, child in ipairs(uiZones:GetChildren()) do
            if child.Name:find("__Capsule") then
                local displayName = child.Name:gsub("__Capsule", "")
                if displayName == "" then displayName = "Default" end
                table.insert(options, displayName)
                displayToFull[displayName] = child.Name
            end
        end
    end
    capsuleOptions = options
    capsuleDisplayMap = displayToFull
end

local function refreshRuneList()
    local options = {}
    local runeZones = GameContent:FindFirstChild("RuneZones")
    if runeZones then
        for _, child in ipairs(runeZones:GetChildren()) do
            table.insert(options, child.Name)
        end
    end
    runeOptions = options
end

refreshOreList()
refreshMobList()
refreshCapsuleList()
refreshRuneList()

-- Auto-refresh lists
local oresFolder = GameContent:FindFirstChild("Ores")
local mobsFolderRoot = GameContent:FindFirstChild("Mobs")
local uiZonesRoot = GameContent:FindFirstChild("UIZones")
local runeZonesRoot = GameContent:FindFirstChild("RuneZones")

if oresFolder then
    oresFolder.ChildAdded:Connect(function()
        refreshOreList()
        if _G.OreDropdown then
            _G.OreDropdown:Set(OreList)
        end
    end)
    oresFolder.ChildRemoved:Connect(function()
        refreshOreList()
        if _G.OreDropdown then
            _G.OreDropdown:Set(OreList)
        end
    end)
end

if mobsFolderRoot then
    mobsFolderRoot.ChildAdded:Connect(function()
        refreshMobList()
        if _G.MobDropdown then
            _G.MobDropdown:Set(MobList)
        end
    end)
    mobsFolderRoot.ChildRemoved:Connect(function()
        refreshMobList()
        if _G.MobDropdown then
            _G.MobDropdown:Set(MobList)
        end
    end)
end

if uiZonesRoot then
    uiZonesRoot.ChildAdded:Connect(function()
        refreshCapsuleList()
        if _G.CapsuleDropdown then
            _G.CapsuleDropdown:Set(capsuleOptions)
        end
    end)
    uiZonesRoot.ChildRemoved:Connect(function()
        refreshCapsuleList()
        if _G.CapsuleDropdown then
            _G.CapsuleDropdown:Set(capsuleOptions)
        end
    end)
end

if runeZonesRoot then
    runeZonesRoot.ChildAdded:Connect(function()
        refreshRuneList()
        if _G.RuneDropdown then
            _G.RuneDropdown:Set(runeOptions)
        end
    end)
    runeZonesRoot.ChildRemoved:Connect(function()
        refreshRuneList()
        if _G.RuneDropdown then
            _G.RuneDropdown:Set(runeOptions)
        end
    end)
end

-- Rayfield UI
local Window = Rayfield:CreateWindow({
    Name = "Noob Incremental Script",
    LoadingTitle = "Loading PinguHub...",
    LoadingSubtitle = "Made by pengus3npai",
    ConfigurationSaving = {
        Enabled = false,
        FolderName = nil,
        FileName = "NoobIncrementalConfig"
    },
    Discord = {
        Enabled = false
    }
})

local SettingsTab      = Window:CreateTab("Settings")
local AutoTrialTab     = Window:CreateTab("AutoTrial")
local AutoOresTab      = Window:CreateTab("AutoOres")
local AutoMobsTab      = Window:CreateTab("AutoMobs")
local AutoCapsulesTab  = Window:CreateTab("AutoCapsules")
local AutoRunesTab     = Window:CreateTab("AutoRunes")
local ItemsTab         = Window:CreateTab("Items")
local MiscTab          = Window:CreateTab("Misc")
local CreditsTab       = Window:CreateTab("Credits")

-- Settings
SettingsTab:CreateDropdown({
    Name = "Movement Mode",
    Options = { "Teleport", "Tween", "Walk", "Legit" },
    CurrentOption = MovementMode,
    Callback = function(selected)
        MovementMode = normalizeMode(selected)
    end
})

SettingsTab:CreateToggle({
    Name = "Hide Rolls",
    CurrentValue = false,
    Callback = function(state)
        hideRollsOn = state
        task.spawn(function()
            while hideRollsOn do
                local pg = Players.LocalPlayer.PlayerGui
                local hud = pg:FindFirstChild("HUD")
                if hud then hud.Enabled = true end
                for _, gui in ipairs(pg:GetChildren()) do
                    if gui:IsA("ScreenGui") and gui.Name == "Animations" then
                        local main = gui:FindFirstChild("Main")
                        if main then
                            local container = main:FindFirstChild("Container")
                            if container then container.Visible = false end
                        end
                    end
                end
                task.wait(0.05)
            end
            local pg = Players.LocalPlayer.PlayerGui
            for _, gui in ipairs(pg:GetChildren()) do
                if gui:IsA("ScreenGui") and gui.Name == "Animations" then
                    local main = gui:FindFirstChild("Main")
                    if main then
                        local container = main:FindFirstChild("Container")
                        if container then container.Visible = true end
                    end
                end
            end
        end)
    end
})

-- AutoTrial
local leaveTime = 900
local autoLeaveEnabled = false

AutoTrialTab:CreateDropdown({
    Name = "Trial Difficulty",
    Options = { "Hard", "Medium", "Easy" },
    CurrentOption = SelectedTrialDifficulty,
    Callback = function(selected)
        SelectedTrialDifficulty = normalizeMode(selected)
    end
})

AutoTrialTab:CreateSlider({
    Name = "Leave Trial After (Seconds)",
    Range = {1, 1200},
    Increment = 1,
    CurrentValue = 900,
    Callback = function(value)
        leaveTime = value
    end
})

AutoTrialTab:CreateToggle({
    Name = "Auto Leave Trial",
    CurrentValue = true,
    Callback = function(state)
        autoLeaveEnabled = state
    end
})

AutoTrialTab:CreateToggle({
    Name = "Auto Trial",
    CurrentValue = false,
    Callback = function(state)
        autoTrialOn = state
        movementCancelled = not state
    end
})

task.spawn(function()
    while task.wait(0.1) do
        if not autoTrialOn then continue end

        updateAutoPauseState()

        local trialsStatus = RS:FindFirstChild("TrialsStatus")
        local entryOpen = trialsStatus and trialsStatus:FindFirstChild("EntryOpen")

        if entryOpen and entryOpen.Value == true and not TrialActive then
            local trialsRoot = GameContent:FindFirstChild("Trials")
            local trialRoom = trialsRoot and trialsRoot:FindFirstChild(SelectedTrialDifficulty .. "TrialRoom")
            local trialModel = trialRoom and trialRoom:FindFirstChild("__Trial" .. SelectedTrialDifficulty .. "Room")
            local touchPart = trialModel and trialModel:FindFirstChild("TouchPart")

            if touchPart then
                local root = getRoot()
                if root then
                    root.CFrame = touchPart.CFrame
                end
            end
        end

        if TrialActive then
            AutosPaused = false

            local timeLeft = RS.TrialsStatus[SelectedTrialDifficulty].TimeLeft
            if autoLeaveEnabled and timeLeft.Value > 0 and timeLeft.Value <= leaveTime then
                leaveTrial()
                AutosPaused = false
                continue
            end

            local trialsRoot = GameContent:FindFirstChild("Trials")
            local trialRoom = trialsRoot and trialsRoot:FindFirstChild(SelectedTrialDifficulty .. "TrialRoom")
            local mobsFolder = trialRoom and trialRoom:FindFirstChild("Mobs")

            if mobsFolder then
                local root = getRoot()
                if root then
                    local mode = normalizeMode(MovementMode)

                    if mode == "Legit" then
                        for _, mob in ipairs(mobsFolder:GetChildren()) do
                            local cf = getTargetCFrame(mob)
                            if cf then
                                movementCancelled = false
                                moveTo(cf, nil)
                                task.wait(0.1)
                            end
                        end
                    else
                        local closestMob, closestDist

                        for _, mob in ipairs(mobsFolder:GetChildren()) do
                            if isTrialMobAlive(mob) then
                                local cf = getTargetCFrame(mob)
                                if cf then
                                    local dist = (root.Position - cf.Position).Magnitude
                                    if not closestDist or dist < closestDist then
                                        closestDist = dist
                                        closestMob = mob
                                    end
                                end
                            end
                        end

                        if closestMob then
                            local cf = getTargetCFrame(closestMob)
                            if cf then
                                movementCancelled = false
                                moveTo(cf, function()
                                    return isTrialMobAlive(closestMob)
                                end)
                            end
                        end
                    end
                end
            end
        else
            AutosPaused = false
        end
    end
end)

-- AutoOres
_G.OreDropdown = AutoOresTab:CreateDropdown({
    Name = "Target Ore",
    Options = OreList,
    CurrentOption = "",
    Callback = function(selected)
        SelectedOre = normalizeMode(selected)
    end
})

AutoOresTab:CreateToggle({
    Name = "Farm All Ores",
    CurrentValue = false,
    Callback = function(state)
        farmAllOresOn = state
        movementCancelled = not state
        if not state then return end

        task.spawn(function()
            while farmAllOresOn do
                updateAutoPauseState()
                if AutosPaused then task.wait(0.1) continue end

                local oresFolder = GameContent:FindFirstChild("Ores")
                local root = getRoot()
                if not oresFolder or not root then
                    task.wait(0.1)
                    continue
                end

                local mode = normalizeMode(MovementMode)

                if mode == "Legit" then
                    for _, ore in ipairs(oresFolder:GetChildren()) do
                        if not farmAllOresOn then break end

                        local cf = getTargetCFrame(ore)
                        if cf then
                            movementCancelled = false
                            moveTo(cf, nil)
                            task.wait(0.1)
                        end
                    end
                else
                    local closestOre, closestDist

                    for _, ore in ipairs(oresFolder:GetChildren()) do
                        if isAlive(ore) then
                            local cf = getTargetCFrame(ore)
                            if cf then
                                local dist = (root.Position - cf.Position).Magnitude
                                if not closestDist or dist < closestDist then
                                    closestDist = dist
                                    closestOre = ore
                                end
                            end
                        end
                    end

                    if closestOre then
                        local cf = getTargetCFrame(closestOre)
                        if cf then
                            movementCancelled = false
                            moveTo(cf, function()
                                return isAlive(closestOre)
                            end)
                        end
                    end
                end

                task.wait(0.05)
            end
        end)
    end
})

AutoOresTab:CreateToggle({
    Name = "Farm Selected Ore",
    CurrentValue = false,
    Callback = function(state)
        farmSelectedOreOn = state
        movementCancelled = not state
        if not state then return end

        task.spawn(function()
            while farmSelectedOreOn do
                updateAutoPauseState()
                if AutosPaused then task.wait(0.1) continue end

                local oresFolder = GameContent:FindFirstChild("Ores")
                local root = getRoot()
                if not oresFolder or not root then
                    task.wait(0.1)
                    continue
                end

                local mode = normalizeMode(MovementMode)

                if mode == "Legit" then
                    for _, ore in ipairs(oresFolder:GetChildren()) do
                        if not farmSelectedOreOn then break end

                        local cleanName = ore.Name:match("^(.-)#?%d*$") or ore.Name
                        if cleanName == SelectedOre then
                            local cf = getTargetCFrame(ore)
                            if cf then
                                movementCancelled = false
                                moveTo(cf, nil)
                                task.wait(0.1)
                            end
                        end
                    end
                else
                    local closestOre, closestDist

                    for _, ore in ipairs(oresFolder:GetChildren()) do
                        local cleanName = ore.Name:match("^(.-)#?%d*$") or ore.Name
                        if cleanName == SelectedOre and isAlive(ore) then
                            local cf = getTargetCFrame(ore)
                            if cf then
                                local dist = (root.Position - cf.Position).Magnitude
                                if not closestDist or dist < closestDist then
                                    closestDist = dist
                                    closestOre = ore
                                end
                            end
                        end
                    end

                    if closestOre then
                        local cf = getTargetCFrame(closestOre)
                        if cf then
                            movementCancelled = false
                            moveTo(cf, function()
                                return isAlive(closestOre)
                            end)
                        end
                    end
                end

                task.wait(0.05)
            end
        end)
    end
})

-- AutoMobs
_G.MobDropdown = AutoMobsTab:CreateDropdown({
    Name = "Target Mob",
    Options = MobList,
    CurrentOption = "",
    Callback = function(selected)
        SelectedMob = normalizeMode(selected)
    end
})

AutoMobsTab:CreateToggle({
    Name = "Farm All Mobs",
    CurrentValue = false,
    Callback = function(state)
        farmAllOn = state
        movementCancelled = not state
        if not state then return end

        task.spawn(function()
            while farmAllOn do
                updateAutoPauseState()
                if AutosPaused then task.wait(0.1) continue end

                local mobsFolder = GameContent:FindFirstChild("Mobs")
                local root = getRoot()
                if not mobsFolder or not root then
                    task.wait(0.1)
                    continue
                end

                local mode = normalizeMode(MovementMode)

                if mode == "Legit" then
                    for _, mob in ipairs(mobsFolder:GetChildren()) do
                        if not farmAllOn then break end

                        local cf = getTargetCFrame(mob)
                        if cf then
                            movementCancelled = false
                            moveTo(cf, nil)
                            task.wait(0.1)
                        end
                    end
                else
                    local closestMob, closestDist

                    for _, mob in ipairs(mobsFolder:GetChildren()) do
                        if isAlive(mob) then
                            local cf = getTargetCFrame(mob)
                            if cf then
                                local dist = (root.Position - cf.Position).Magnitude
                                if not closestDist or dist < closestDist then
                                    closestDist = dist
                                    closestMob = mob
                                end
                            end
                        end
                    end

                    if closestMob then
                        local cf = getTargetCFrame(closestMob)
                        if cf then
                            movementCancelled = false
                            moveTo(cf, function()
                                return isAlive(closestMob)
                            end)
                        end
                    end
                end

                task.wait(0.05)
            end
        end)
    end
})

AutoMobsTab:CreateToggle({
    Name = "Farm Selected Mobs",
    CurrentValue = false,
    Callback = function(state)
        farmSelectedOn = state
        movementCancelled = not state
        if not state then return end

        task.spawn(function()
            while farmSelectedOn do
                updateAutoPauseState()
                if AutosPaused then task.wait(0.1) continue end

                local mobsFolder = GameContent:FindFirstChild("Mobs")
                local root = getRoot()
                if not mobsFolder or not root then
                    task.wait(0.1)
                    continue
                end

                local mode = normalizeMode(MovementMode)

                if mode == "Legit" then
                    for _, mob in ipairs(mobsFolder:GetChildren()) do
                        if not farmSelectedOn then break end

                        local cleanName = mob.Name:match("^(.-)#?%d*$") or mob.Name
                        if cleanName == SelectedMob then
                            local cf = getTargetCFrame(mob)
                            if cf then
                                movementCancelled = false
                                moveTo(cf, nil)
                                task.wait(0.1)
                            end
                        end
                    end
                else
                    local closestMob, closestDist

                    for _, mob in ipairs(mobsFolder:GetChildren()) do
                        local cleanName = mob.Name:match("^(.-)#?%d*$") or mob.Name
                        if cleanName == SelectedMob and isAlive(mob) then
                            local cf = getTargetCFrame(mob)
                            if cf then
                                local dist = (root.Position - cf.Position).Magnitude
                                if not closestDist or dist < closestDist then
                                    closestDist = dist
                                    closestMob = mob
                                end
                            end
                        end
                    end

                    if closestMob then
                        local cf = getTargetCFrame(closestMob)
                        if cf then
                            movementCancelled = false
                            moveTo(cf, function()
                                return isAlive(closestMob)
                            end)
                        end
                    end
                end

                task.wait(0.05)
            end
        end)
    end
})

--== AutoCapsules ==--

_G.CapsuleDropdown = AutoCapsulesTab:CreateDropdown({
    Name = "Capsule",
    Options = capsuleOptions,
    CurrentOption = "",
    Callback = function(selected)
        SelectedCapsule = normalizeMode(selected)
    end
})

AutoCapsulesTab:CreateToggle({
    Name = "Auto Open",
    CurrentValue = false,
    Callback = function(state)
        autoCapsuleOn = state
        movementCancelled = not state
        if not state then return end

        task.spawn(function()
            while autoCapsuleOn do
                updateAutoPauseState()
                if AutosPaused then task.wait(0.1) continue end

                if SelectedCapsule then
                    local fullName = capsuleDisplayMap[SelectedCapsule]
                    local uiZones = GameContent:FindFirstChild("UIZones")
                    local capsuleObj = uiZones and uiZones:FindFirstChild(fullName)

                    if capsuleObj then
                        local cf = getTargetCFrame(capsuleObj)
                        local root = getRoot()

                        if cf and root then
                            local dist = (root.Position - cf.Position).Magnitude
                            local mode = normalizeMode(MovementMode)

                            -- ONLY MOVE IF >10 STUDS AWAY
                            if dist > 10 then
                                movementCancelled = false

                                if mode == "Legit" then
                                    moveTo(cf, nil)
                                else
                                    moveTo(cf)
                                end

                                -- Fire auto-open AFTER movement
                                local Net = RS:FindFirstChild("__Net")
                                if Net then
                                    local Event = Net:FindFirstChild("MainRemote")
                                    if Event then
                                        task.wait(1)
                                        Event:FireServer("ToggleMinionAutoOpen", SelectedCapsule)
                                    end
                                end
                            end
                        end
                    end
                end

                task.wait(0.3)
            end
        end)
    end
})

--== AutoRunes ==--

_G.RuneDropdown = AutoRunesTab:CreateDropdown({
    Name = "Runes",
    Options = runeOptions,
    CurrentOption = "",
    Callback = function(selected)
        SelectedRune = normalizeMode(selected)
    end
})

AutoRunesTab:CreateToggle({
    Name = "Autoroll",
    CurrentValue = false,
    Callback = function(state)
        autoRollOn = state
        movementCancelled = not state
        if not state then return end

        task.spawn(function()
            while autoRollOn do
                updateAutoPauseState()
                if AutosPaused then task.wait(0.1) continue end

                if SelectedRune then
                    local runeZones = GameContent:FindFirstChild("RuneZones")
                    local runeObj = runeZones and runeZones:FindFirstChild(SelectedRune)

                    if runeObj then
                        local cf = getTargetCFrame(runeObj)
                        local root = getRoot()

                        if cf and root then
                            local dist = (root.Position - cf.Position).Magnitude
                            local mode = normalizeMode(MovementMode)

                            -- ONLY MOVE IF >10 STUDS AWAY
                            if dist > 10 then
                                movementCancelled = false

                                if mode == "Legit" then
                                    moveTo(cf, nil)
                                else
                                    moveTo(cf)
                                end
                            end
                        end
                    end
                end

                task.wait(0.3)
            end
        end)
    end
})

-- Items
ItemsTab:CreateToggle({
    Name = "Auto Use T1 Chest",
    CurrentValue = false,
    Callback = function(state)
        autoT1ChestOn = state
        if not state then return end

        task.spawn(function()
            while autoT1ChestOn do
                local Net = RS:FindFirstChild("__Net")
                if Net then
                    local Event = Net:FindFirstChild("MainRemote")
                    if Event then
                        Event:FireServer("OpenChest", "T1TrialChest", 100)
                    end
                end
                task.wait(2)
            end
        end)
    end
})

ItemsTab:CreateToggle({
    Name = "Auto Use T2 Chest",
    CurrentValue = false,
    Callback = function(state)
        autoT2ChestOn = state
        if not state then return end

        task.spawn(function()
            while autoT2ChestOn do
                local Net = RS:FindFirstChild("__Net")
                if Net then
                    local Event = Net:FindFirstChild("MainRemote")
                    if Event then
                        Event:FireServer("OpenChest", "T2TrialChest", 100)
                    end
                end
                task.wait(2)
            end
        end)
    end
})

-- Ancient Fragment Viewer
local fragSection = MiscTab:CreateSection("Ancient Fragment Viewer")
local fragLabels = {}

local function getFragmentValueObject(player)
    local currencies = player:FindFirstChild("CURRENCIES")
    if not currencies then return nil end
    local fragment = currencies:FindFirstChild("AncientFragment")
    if not fragment then return nil end
    local amount = fragment:FindFirstChild("Amount")
    if not amount then return nil end
    return amount:FindFirstChild("1")
end

local function updateFragmentLabel(player, valueText)
    local label = fragLabels[player]
    if label then
        label:Set(player.Name .. " — " .. valueText)
    end
end

local function watchFragmentValue(player)
    local valueObj = getFragmentValueObject(player)
    if not valueObj then
        updateFragmentLabel(player, "N/A")
        return
    end
    updateFragmentLabel(player, tostring(valueObj.Value))
    valueObj.Changed:Connect(function(newValue)
        updateFragmentLabel(player, tostring(newValue))
    end)
end

local function createFragmentRow(player)
    if fragLabels[player] then return end
    fragLabels[player] = MiscTab:CreateLabel(player.Name .. " — ...")
    task.spawn(function()
        for _ = 1, 10 do
            if getFragmentValueObject(player) then break end
            task.wait(1)
        end
        watchFragmentValue(player)
    end)
end

local function removeFragmentRow(player)
    if fragLabels[player] then
        fragLabels[player]:Set(player.Name .. " — (left)")
        fragLabels[player] = nil
    end
end

for _, p in ipairs(Players:GetPlayers()) do
    createFragmentRow(p)
end

Players.PlayerAdded:Connect(function(p)
    createFragmentRow(p)
end)

Players.PlayerRemoving:Connect(function(p)
    removeFragmentRow(p)
end)

-- Credits
CreditsTab:CreateSection("Credits")
CreditsTab:CreateLabel("Made by pengus3npai")

CreditsTab:CreateButton({
    Name = "Join Discord Server",
    Callback = function()
        local invite = "GN6s5uctZM"
        local http = game:GetService("HttpService")

        if setclipboard then
            setclipboard("https://discord.gg/" .. invite)
        end

        local payload = {
            cmd = "INVITE_BROWSER",
            args = { code = invite },
            nonce = http:GenerateGUID(false)
        }

        if syn and syn.request then
            syn.request({
                Url = "http://127.0.0.1:6463/rpc?v=1",
                Method = "POST",
                Headers = {
                    ["Content-Type"] = "application/json",
                    ["Origin"] = "https://discord.com"
                },
                Body = http:JSONEncode(payload)
            })
        elseif request then
            request({
                Url = "http://127.0.0.1:6463/rpc?v=1",
                Method = "POST",
                Headers = {
                    ["Content-Type"] = "application/json",
                    ["Origin"] = "https://discord.com"
                },
                Body = http:JSONEncode(payload)
            })
        end

        Rayfield:Notify({
            Title = "Discord",
            Content = "Invite copied & Discord opened.",
            Duration = 5,
            Image = 4483362458
        })
    end
})
