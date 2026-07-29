--== NoobIncremental ==--
if not game:IsLoaded() then
    game.Loaded:Wait()
end

local Players       = game:GetService("Players")
local LocalPlayer   = Players.LocalPlayer
local RS            = game:GetService("ReplicatedStorage")
local TweenService  = game:GetService("TweenService")

local GameContent   = workspace:WaitForChild("__GAME_CONTENT")
local OresFolder    = GameContent:WaitForChild("Ores")
local MobsFolder    = GameContent:WaitForChild("Mobs")
local UIZones       = GameContent:WaitForChild("UIZones")
local RuneZones     = GameContent:WaitForChild("RuneZones")
local TrialsRoot    = GameContent:WaitForChild("Trials")

local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

task.wait(0.25)

---------------------------------------------------------------------
-- State
---------------------------------------------------------------------
local MovementMode            = "Teleport"
local SelectedTrialDifficulty = "Easy"
local SelectedMob             = {}
local SelectedOre             = {}
local SelectedCapsule         = nil
local SelectedRune            = nil

local autoTrialOn        = false
local farmAllOn          = false
local farmSelectedOn     = false
local farmAllOresOn      = false
local farmSelectedOreOn  = false
local autoCapsuleOn      = false
local autoRollOn         = false
local autoT1ChestOn      = false
local autoT2ChestOn      = false

local TrialActive        = false
local AutosPaused        = false
local movementCancelled  = false
local hideRollsOn        = false

local OreList            = {}
local MobList            = {}
local capsuleOptions     = {}
local capsuleDisplayMap  = {}
local runeOptions        = {}

-- Dropdown refs
local OreDropdown
local MobDropdown
local CapsuleDropdown
local RuneDropdown

---------------------------------------------------------------------
-- Helpers
---------------------------------------------------------------------
local function normalizeMode(mode)
    if typeof(mode) == "table" then
        return mode[1]
    end
    return mode
end

local function normalizeSelection(v)
    return typeof(v) == "table" and v[1] or v
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
    local Net = RS:FindFirstChild("__Net")
    local Event = Net and Net:FindFirstChild("MainRemote")
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

---------------------------------------------------------------------
-- Movement (Legit ignores aliveCheckFn intentionally)
---------------------------------------------------------------------
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

local function getClosest(folder, filterFn)
    local root = getRoot()
    if not root then return nil end

    local best, bestDist

    for _, obj in ipairs(folder:GetChildren()) do
        if filterFn(obj) then
            local cf = getTargetCFrame(obj)
            if cf then
                local dist = (root.Position - cf.Position).Magnitude
                if not bestDist or dist < bestDist then
                    bestDist = dist
                    best = obj
                end
            end
        end
    end

    return best
end

---------------------------------------------------------------------
-- Lists + Refresh
---------------------------------------------------------------------
local function refreshOreList()
    local seen, list = {}, {}

    for _, ore in ipairs(OresFolder:GetChildren()) do
        local clean = ore.Name:match("^(.-)#?%d*$") or ore.Name
        if not seen[clean] then
            seen[clean] = true
            table.insert(list, clean)
        end
    end

    OreList = list
    if OreDropdown then OreDropdown:Refresh(list) end
end

local function refreshMobList()
    local seen, list = {}, {}

    for _, mob in ipairs(MobsFolder:GetChildren()) do
        local clean = mob.Name:match("^(.-)#?%d*$") or mob.Name
        if not seen[clean] then
            seen[clean] = true
            table.insert(list, clean)
        end
    end

    MobList = list
    if MobDropdown then MobDropdown:Refresh(list) end
end

local function refreshCapsuleList()
    local list, map = {}, {}

    for _, child in ipairs(UIZones:GetChildren()) do
        if child.Name:find("__Capsule") then
            local display = child.Name:gsub("__Capsule", "")
            if display == "" then display = "Default" end
            table.insert(list, display)
            map[display] = child.Name
        end
    end

    capsuleOptions    = list
    capsuleDisplayMap = map
    if CapsuleDropdown then CapsuleDropdown:Refresh(list) end
end

local function refreshRuneList()
    local list = {}

    for _, child in ipairs(RuneZones:GetChildren()) do
        table.insert(list, child.Name)
    end

    runeOptions = list
    if RuneDropdown then RuneDropdown:Refresh(list) end
end

refreshOreList()
refreshMobList()
refreshCapsuleList()
refreshRuneList()

-- Auto-refresh hooks
OresFolder.ChildAdded:Connect(refreshOreList)
OresFolder.ChildRemoved:Connect(refreshOreList)

MobsFolder.ChildAdded:Connect(refreshMobList)
MobsFolder.ChildRemoved:Connect(refreshMobList)

UIZones.ChildAdded:Connect(refreshCapsuleList)
UIZones.ChildRemoved:Connect(refreshCapsuleList)

RuneZones.ChildAdded:Connect(refreshRuneList)

---------------------------------------------------------------------
-- Rayfield UI
---------------------------------------------------------------------
local Window = Rayfield:CreateWindow({
    Name = "Noob Incremental Script",
    LoadingTitle = "Loading PinguHub...",
    LoadingSubtitle = "Made by pengus3npai",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "PinguHub",
        FileName = "NoobIncremental"
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
local UITab			   = Window:CreateTab("UI")
local TeleportTab 	   = Window:CreateTab("Teleports")
local MiscTab          = Window:CreateTab("Misc")
local CreditsTab       = Window:CreateTab("Credits")

---------------------------------------------------------------------
-- Settings
---------------------------------------------------------------------
SettingsTab:CreateDropdown({
    Name = "Movement Mode",
	Flag = "MovementMode",
    Options = { "Teleport", "Tween", "Walk", "Legit" },
    CurrentOption = { MovementMode },
    MultipleOptions = false,
    Callback = function(selected)
        MovementMode = normalizeSelection(selected)
    end
})

SettingsTab:CreateToggle({
    Name = "Hide Rolls",
	Flag = "HideRolls",
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

---------------------------------------------------------------------
-- AutoTrial
---------------------------------------------------------------------
local leaveTime        = 900
local autoLeaveEnabled = true

AutoTrialTab:CreateDropdown({
    Name = "Trial Difficulty",
	Flag = "TrialDifficulty",
    Options = { "Hard", "Medium", "Easy" },
    CurrentOption = { SelectedTrialDifficulty },
    MultipleOptions = false,
    Callback = function(selected)
        SelectedTrialDifficulty = normalizeSelection(selected)
    end
})

AutoTrialTab:CreateSlider({
    Name = "Leave Trial At (Seconds) Left",
	Flag = "TrialLeaveTime",
    Range = {1, 1200},
    Increment = 1,
    CurrentValue = leaveTime,
    Callback = function(value)
        leaveTime = value
    end
})

AutoTrialTab:CreateToggle({
    Name = "Auto Leave Trial",
	Flag = "AutoLeaveTrial",
    CurrentValue = true,
    Callback = function(state)
        autoLeaveEnabled = state
    end
})

AutoTrialTab:CreateToggle({
    Name = "Auto Trial",
	Flag = "AutoTrial",
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
            local trialRoom = TrialsRoot:FindFirstChild(SelectedTrialDifficulty .. "TrialRoom")
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

            local timeLeftObj = RS.TrialsStatus[SelectedTrialDifficulty].TimeLeft
            if autoLeaveEnabled and timeLeftObj.Value > 0 and timeLeftObj.Value <= leaveTime then
                leaveTrial()

                -- Wait until trial actually ends
                repeat
                    task.wait(0.2)
                    updateAutoPauseState()
                until not TrialActive

                AutosPaused = false
                continue
            end

            local trialRoom = TrialsRoot:FindFirstChild(SelectedTrialDifficulty .. "TrialRoom")
            local mobsFolder = trialRoom and trialRoom:FindFirstChild("Mobs")

            if mobsFolder then
                local root = getRoot()
                if root then
                    local mode = normalizeMode(MovementMode)

                    if mode == "Legit" then
                        -- Legit: sequential, no alive checks, mobs disappear when dead
                        for _, mob in ipairs(mobsFolder:GetChildren()) do
                            local cf = getTargetCFrame(mob)
                            if cf then
                                movementCancelled = false
                                moveTo(cf, nil)
                                task.wait(0.1)
                            end
                        end
                    else
                        local closestMob = getClosest(mobsFolder, function(m)
                            return isTrialMobAlive(m)
                        end)

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

---------------------------------------------------------------------
-- AutoOres
---------------------------------------------------------------------
OreDropdown = AutoOresTab:CreateDropdown({
    Name = "Target Ore",
	Flag = "TargetOre",
    Options = OreList,
    CurrentOption = {},
    MultipleOptions = true,
    Callback = function(selected)
        SelectedOre = selected -- keep full table for multi-select
    end
})

AutoOresTab:CreateToggle({
    Name = "Farm All Ores",
	Flag = "FarmAllOres",
    CurrentValue = false,
    Callback = function(state)
        farmAllOresOn = state
        movementCancelled = not state
        if not state then return end

        local currentGroupName = nil

        task.spawn(function()
            while farmAllOresOn do
                updateAutoPauseState()
                if AutosPaused then task.wait(0.1) continue end

                local root = getRoot()
                if not root then task.wait(0.1) continue end

                ------------------------------------------------------------------
                -- Build groups by name
                ------------------------------------------------------------------
                local groups = {}
                for _, ore in ipairs(OresFolder:GetChildren()) do
                    groups[ore.Name] = groups[ore.Name] or {}
                    table.insert(groups[ore.Name], ore)
                end

                ------------------------------------------------------------------
                -- Pick a group if none selected
                ------------------------------------------------------------------
                if not currentGroupName then
                    local names = {}
                    for name in pairs(groups) do table.insert(names, name) end
                    currentGroupName = names[math.random(#names)]
                end

                local group = groups[currentGroupName]
                if not group then
                    currentGroupName = nil
                    continue
                end

                ------------------------------------------------------------------
                -- Check if any ore in this group is still alive
                ------------------------------------------------------------------
                local aliveList = {}
                for _, ore in ipairs(group) do
                    if isAlive(ore) then
                        table.insert(aliveList, ore)
                    end
                end

                ------------------------------------------------------------------
                -- If none alive → roll new group
                ------------------------------------------------------------------
                if #aliveList == 0 then
                    currentGroupName = nil
                    task.wait(0.05)
                    continue
                end

                ------------------------------------------------------------------
                -- Kill all alive ores in this group
                ------------------------------------------------------------------
                for _, ore in ipairs(aliveList) do
                    if not farmAllOresOn then break end

                    local cf = getTargetCFrame(ore)
                    if cf then
                        movementCancelled = false
                        moveTo(cf, function()
                            return isAlive(ore)
                        end)
                    end
                end

                task.wait(0.05)
            end
        end)
    end
})

AutoOresTab:CreateToggle({
    Name = "Farm Selected Ore",
	Flag = "FarmSelectedOre",
    CurrentValue = false,
    Callback = function(state)
        farmSelectedOreOn = state
        movementCancelled = not state
        if not state then return end

        task.spawn(function()
            while farmSelectedOreOn do
                updateAutoPauseState()
                if AutosPaused then task.wait(0.1) continue end

                local root = getRoot()
                if not root or not SelectedOre or #SelectedOre == 0 then
                    task.wait(0.1)
                    continue
                end

                local mode = normalizeMode(MovementMode)

                if mode == "Legit" then
                    -- Legit: sequential over matching ore names, no alive checks
                    for _, ore in ipairs(OresFolder:GetChildren()) do
                        if not farmSelectedOreOn then break end
                        local cleanName = ore.Name:match("^(.-)#?%d*$") or ore.Name
                        if table.find(SelectedOre, cleanName) then
                            local cf = getTargetCFrame(ore)
                            if cf then
                                movementCancelled = false
                                moveTo(cf, nil)
                                task.wait(0.1)
                            end
                        end
                    end
                else
                    local closestOre = getClosest(OresFolder, function(o)
                        local cleanName = o.Name:match("^(.-)#?%d*$") or o.Name
                        return table.find(SelectedOre, cleanName) and isAlive(o)
                    end)

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

---------------------------------------------------------------------
-- AutoMobs
---------------------------------------------------------------------
MobDropdown = AutoMobsTab:CreateDropdown({
    Name = "Target Mob",
	Flag = "TargetMob",
    Options = MobList,
    CurrentOption = {},
    MultipleOptions = true,
    Callback = function(selected)
        SelectedMob = selected -- keep full table for multi-select
    end
})

AutoMobsTab:CreateToggle({
    Name = "Farm All Mobs",
	Flag = "FarmAllMobs",
    CurrentValue = false,
    Callback = function(state)
        farmAllOn = state
        movementCancelled = not state
        if not state then return end

        local currentGroupName = nil

        task.spawn(function()
            while farmAllOn do
                updateAutoPauseState()
                if AutosPaused then task.wait(0.1) continue end

                local root = getRoot()
                if not root then task.wait(0.1) continue end

                ------------------------------------------------------------------
                -- Build groups by name
                ------------------------------------------------------------------
                local groups = {}
                for _, mob in ipairs(MobsFolder:GetChildren()) do
                    groups[mob.Name] = groups[mob.Name] or {}
                    table.insert(groups[mob.Name], mob)
                end

                ------------------------------------------------------------------
                -- Pick a group if none selected
                ------------------------------------------------------------------
                if not currentGroupName then
                    local names = {}
                    for name in pairs(groups) do table.insert(names, name) end
                    currentGroupName = names[math.random(#names)]
                end

                local group = groups[currentGroupName]
                if not group then
                    currentGroupName = nil
                    continue
                end

                ------------------------------------------------------------------
                -- Check if any mob in this group is still alive
                ------------------------------------------------------------------
                local aliveList = {}
                for _, mob in ipairs(group) do
                    if isAlive(mob) then
                        table.insert(aliveList, mob)
                    end
                end

                ------------------------------------------------------------------
                -- If none alive → roll new group
                ------------------------------------------------------------------
                if #aliveList == 0 then
                    currentGroupName = nil
                    task.wait(0.05)
                    continue
                end

                ------------------------------------------------------------------
                -- Kill all alive mobs in this group
                ------------------------------------------------------------------
                for _, mob in ipairs(aliveList) do
                    if not farmAllOn then break end

                    local cf = getTargetCFrame(mob)
                    if cf then
                        movementCancelled = false
                        moveTo(cf, function()
                            return isAlive(mob)
                        end)
                    end
                end

                task.wait(0.05)
            end
        end)
    end
})

AutoMobsTab:CreateToggle({
    Name = "Farm Selected Mob",
	Flag = "FarmSelectedMob",
    CurrentValue = false,
    Callback = function(state)
        farmSelectedMobOn = state
        movementCancelled = not state
        if not state then return end

        task.spawn(function()
            while farmSelectedMobOn do
                updateAutoPauseState()
                if AutosPaused then task.wait(0.1) continue end

                local root = getRoot()
                if not root or not SelectedMob or #SelectedMob == 0 then
                    task.wait(0.1)
                    continue
                end

                local mode = normalizeMode(MovementMode)

                if mode == "Legit" then
                    -- Legit: sequential over matching mob names, no alive checks
                    for _, omob in ipairs(MobsFolder:GetChildren()) do
                        if not farmSelectedMobOn then break end
                        local cleanName = mob.Name:match("^(.-)#?%d*$") or mob.Name
                        if table.find(SelectedMob, cleanName) then
                            local cf = getTargetCFrame(mob)
                            if cf then
                                movementCancelled = false
                                moveTo(cf, nil)
                                task.wait(0.1)
                            end
                        end
                    end
                else
                    local closestMob = getClosest(MobsFolder, function(o)
                        local cleanName = o.Name:match("^(.-)#?%d*$") or o.Name
                        return table.find(SelectedMob, cleanName) and isAlive(o)
                    end)

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
    Name = "Auto Start Ritual",
    Flag = "AutoRitual",
    CurrentValue = false,
    Callback = function(state)
        autoStartRitualOn = state
        if not state then return end

        task.spawn(function()
            while autoStartRitualOn do
                updateAutoPauseState()
                if AutosPaused then task.wait(0.1) continue end

                ------------------------------------------------------------------
                -- Ritual board + CAN check
                ------------------------------------------------------------------
                local ritualPart = workspace.__GAME_CONTENT
                    .Contents["WORLD - 3"]
                    .RitualChamberModel
                    .MainPart

                local canObj = ritualPart
                    and ritualPart:FindFirstChild("SurfaceGui")
                    and ritualPart.SurfaceGui:FindFirstChild("Bar")
                    and ritualPart.SurfaceGui.Bar:FindFirstChild("CAN")

                if not (canObj and canObj.Enabled) then
                    task.wait(0.2)
                    continue
                end

                local root = getRoot()
                if ritualPart and root then
                    local dist = (root.Position - ritualPart.Position).Magnitude
                    local mode = normalizeMode(MovementMode)

                    ------------------------------------------------------------------
                    -- PAUSE autos while moving to ritual
                    ------------------------------------------------------------------
                    AutosPaused = true

                    if dist > 10 then
                        movementCancelled = false

                        if mode == "Legit" then
                            moveTo(ritualPart.CFrame, nil)
                        else
                            moveTo(ritualPart.CFrame, function()
                                return true -- ritualPart never "dies"
                            end)
                        end
                    end

                    task.wait(0.2)

                    ------------------------------------------------------------------
                    -- Fire ritual remote AFTER movement finishes
                    ------------------------------------------------------------------
                    local Net = RS:FindFirstChild("__Net")
                    local Event = Net and Net:FindFirstChild("MainRemote")

                    if Event then
                        Event:FireServer("StartRitual")
                    end

                    ------------------------------------------------------------------
                    -- UNPAUSE autos after firing ritual
                    ------------------------------------------------------------------
                    AutosPaused = false
                end

                task.wait(1)
            end
        end)
    end
})

---------------------------------------------------------------------
-- AutoCapsules
---------------------------------------------------------------------
CapsuleDropdown = AutoCapsulesTab:CreateDropdown({
    Name = "Capsule",
	Flag = "TargetCapsule",
    Options = capsuleOptions,
    CurrentOption = {},
    MultipleOptions = false,
    Callback = function(selected)
        SelectedCapsule = normalizeSelection(selected)
    end
})

AutoCapsulesTab:CreateToggle({
    Name = "Auto Open",
	Flag = "AutoCapsule",
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
                    local capsuleObj = fullName and UIZones:FindFirstChild(fullName)

                    if capsuleObj then
                        local cf = getTargetCFrame(capsuleObj)
                        local root = getRoot()

                        if cf and root then
                            local dist = (root.Position - cf.Position).Magnitude
                            local mode = normalizeMode(MovementMode)

                            if dist > 10 then
                                movementCancelled = false
                                if mode == "Legit" then
                                    moveTo(cf, nil)
                                else
                                    moveTo(cf)
                                end
                            end

                            local Net = RS:FindFirstChild("__Net")
                            local Event = Net and Net:FindFirstChild("MainRemote")
                            if Event then
                                task.wait(1)
                                Event:FireServer("ToggleMinionAutoOpen", SelectedCapsule)
                            end
                        end
                    end
                end

                task.wait(0.3)
            end
        end)
    end
})

---------------------------------------------------------------------
-- AutoRunes
---------------------------------------------------------------------
RuneDropdown = AutoRunesTab:CreateDropdown({
    Name = "Runes",
	Flag = "TargetRune",
    Options = runeOptions,
    CurrentOption = {},
    MultipleOptions = false,
    Callback = function(selected)
        SelectedRune = normalizeSelection(selected)
    end
})

AutoRunesTab:CreateToggle({
    Name = "Autoroll",
	Flag = "AutoRune",
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
                    local runeObj = RuneZones:FindFirstChild(SelectedRune)

                    if runeObj then
                        local cf = getTargetCFrame(runeObj)
                        local root = getRoot()

                        if cf and root then
                            local dist = (root.Position - cf.Position).Magnitude
                            local mode = normalizeMode(MovementMode)

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

---------------------------------------------------------------------
-- Items
---------------------------------------------------------------------
ItemsTab:CreateToggle({
    Name = "Auto Use T1 Chest",
	Flag = "AutoT1Chest",
    CurrentValue = false,
    Callback = function(state)
        autoT1ChestOn = state
        if not state then return end

        task.spawn(function()
            while autoT1ChestOn do
                local Net = RS:FindFirstChild("__Net")
                local Event = Net and Net:FindFirstChild("MainRemote")
                if Event then
                    Event:FireServer("OpenChest", "T1TrialChest", 100)
                end
                task.wait(2)
            end
        end)
    end
})

ItemsTab:CreateToggle({
    Name = "Auto Use T2 Chest",
	Flag = "AutoT2Chest",
    CurrentValue = false,
    Callback = function(state)
        autoT2ChestOn = state
        if not state then return end

        task.spawn(function()
            while autoT2ChestOn do
                local Net = RS:FindFirstChild("__Net")
                local Event = Net and Net:FindFirstChild("MainRemote")
                if Event then
                    Event:FireServer("OpenChest", "T2TrialChest", 100)
                end
                task.wait(2)
            end
        end)
    end
})

UITab:CreateButton({
    Name = "Open Expedition UI",
    Callback = function()
        local Event = game:GetService("ReplicatedStorage").__Net.ToggleUI
        firesignal(Event.OnClientEvent, "Open", "Expedition")
    end
})

UITab:CreateButton({
    Name = "Open Enchants UI",
    Callback = function()
        local Event = game:GetService("ReplicatedStorage").__Net.ToggleUI
        firesignal(Event.OnClientEvent, "Open", "Enchants")
    end
})

UITab:CreateButton({
    Name = "Open Sword Enchants",
    Callback = function()
        local Event = game:GetService("ReplicatedStorage").__Net.ToggleUI
        firesignal(Event.OnClientEvent, "Open", "SwordEnchants")
    end
})

UITab:CreateButton({
    Name = "Open Auras",
    Callback = function()
        local Event = game:GetService("ReplicatedStorage").__Net.ToggleUI
        firesignal(Event.OnClientEvent, "Open", "Auras")
    end
})

UITab:CreateButton({
    Name = "Open Rune Sacrifice",
    Callback = function()
        local Event = game:GetService("ReplicatedStorage").__Net.ToggleUI
        firesignal(Event.OnClientEvent, "Open", "RuneSacrifice")
    end
})

local function tpTo(x, y, z)
    local root = getRoot()
    if root then
        root.CFrame = CFrame.new(x, y, z)
    end
end

TeleportTab:CreateButton({
    Name = "Lab",
    Callback = function()
        tpTo(-2609, 45, -619)
    end
})

TeleportTab:CreateButton({
    Name = "Realm 1",
    Callback = function()
        tpTo(1143, 15, -591)
    end
})

TeleportTab:CreateButton({
    Name = "Realm 2",
    Callback = function()
        tpTo(1042, 10, 3288)
    end
})

TeleportTab:CreateButton({
    Name = "Realm 3",
    Callback = function()
        tpTo(1019, 10, 7770)
    end
})

TeleportTab:CreateButton({
    Name = "Football",
    Callback = function()
        tpTo(-2701, 40, -119)
    end
})


MiscTab:CreateButton({
    Name = "Redeem Codes (Be in a server with others)",
    Callback = function()
        local Players = game:GetService("Players")
        local RS = game:GetService("ReplicatedStorage")
        local Event = RS.__Net.MainRemote

        local localPlayer = Players.LocalPlayer
        local myCodesFolder = localPlayer:FindFirstChild("EXTRA") and localPlayer.EXTRA:FindFirstChild("CODES")
        if not myCodesFolder then
            print("No local CODES folder found.")
            return
        end

        -- Build a set of your codes
        local myCodes = {}
        for _, codeObj in ipairs(myCodesFolder:GetChildren()) do
            myCodes[codeObj.Name] = true
        end

        -- Collect missing codes first
        local missingCodes = {}

        for _, player in ipairs(Players:GetPlayers()) do
            if player ~= localPlayer then
                local extra = player:FindFirstChild("EXTRA")
                local codesFolder = extra and extra:FindFirstChild("CODES")

                if codesFolder then
                    for _, codeObj in ipairs(codesFolder:GetChildren()) do
                        local codeName = codeObj.Name
                        if not myCodes[codeName] then
                            table.insert(missingCodes, codeName)
                        end
                    end
                end
            end
        end

        -- Redeem codes with 2s delay
        task.spawn(function()
            for _, codeName in ipairs(missingCodes) do
                print("Redeeming missing code:", codeName)
                Event:FireServer("EnterCode", codeName)
                task.wait(2) -- required delay
            end
        end)

        print("Finished checking and redeeming missing codes.")
    end
})

local antiAFKOn = false
local antiAFKConnection = nil

MiscTab:CreateToggle({
    Name = "Anti AFK",
    Flag = "AntiAFK",
    CurrentValue = false,
    Callback = function(state)
        antiAFKOn = state

        -- Turn OFF Anti-AFK
        if not state then
            if antiAFKConnection then
                antiAFKConnection:Disconnect()
                antiAFKConnection = nil
            end
            print("Anti-AFK disabled.")
            return
        end

        -- Turn ON Anti-AFK
        local VirtualUser = cloneref(game:GetService("VirtualUser"))
        local Players = cloneref(game:GetService("Players"))

        antiAFKConnection = Players.LocalPlayer.Idled:Connect(function()
            VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
            task.wait()
            VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        end)

        print("Anti-AFK enabled.")
    end
})

MiscTab:CreateButton({
    Name = "Print Debug Info",
    Callback = function()
        print("===== DEBUG INFO =====")

        -- Movement + Trial
        print("MovementMode:", MovementMode)
        print("SelectedTrialDifficulty:", SelectedTrialDifficulty)

        -- Trial status
        local ts = RS:FindFirstChild("TrialsStatus")
        if ts and ts:FindFirstChild(SelectedTrialDifficulty) then
            print("TimeLeft:", ts[SelectedTrialDifficulty].TimeLeft.Value)
            if ts[SelectedTrialDifficulty]:FindFirstChild("InTrial") then
                print("InTrial:", ts[SelectedTrialDifficulty].InTrial.Value)
            end
        else
            print("TimeLeft: <invalid difficulty>")
        end

		print("AutoLeaveTime", leaveTime)
        print("TrialActive:", TrialActive)
        print("AutosPaused:", AutosPaused)

        -- Toggles
        print("autoTrialOn:", autoTrialOn)
        print("autoLeaveEnabled:", autoLeaveEnabled)
        print("farmAllOn:", farmAllOn)
        print("farmSelectedOn:", farmSelectedOn)
        print("farmAllOresOn:", farmAllOresOn)
        print("farmSelectedOreOn:", farmSelectedOreOn)
        print("autoCapsuleOn:", autoCapsuleOn)
        print("autoRollOn:", autoRollOn)
        print("autoT1ChestOn:", autoT1ChestOn)
        print("autoT2ChestOn:", autoT2ChestOn)
        print("hideRollsOn:", hideRollsOn)

        -- Dropdown selections
        print("SelectedMob:", SelectedMob)
        print("SelectedOre:", SelectedOre)
        print("SelectedCapsule:", SelectedCapsule)
        print("SelectedRune:", SelectedRune)

        -- Lists
        print("MobList:", MobList)
        print("OreList:", OreList)
        print("CapsuleOptions:", capsuleOptions)
        print("RuneOptions:", runeOptions)

        print("===== END DEBUG =====")
    end
})

local streamerModeOn = false
local spoofSelf = "@PinguHub User"
local spoofOthers = "@User"
local originalOverheads = {}

local Players = game:GetService("Players")

local function spoofOverhead(player)
    if not streamerModeOn then return end

    local spoofName = (player == Players.LocalPlayer) and spoofSelf or spoofOthers
    local char = player.Character
    if not char then return end

    local head = char:FindFirstChild("Head")
    if not head then return end

    local overhead = head:FindFirstChild("OverheadGui")
    if not overhead then return end

    local frame = overhead:FindFirstChild("Frame")
    if not frame then return end

    local label = frame:FindFirstChild("Username")
    if not label then return end

    -- store original once
    if not originalOverheads[player] then
        originalOverheads[player] = label.Text
    end

    label.Text = spoofName
end

local function revertOverhead(player)
    local char = player.Character
    if not char then return end

    local head = char:FindFirstChild("Head")
    if not head then return end

    local overhead = head:FindFirstChild("OverheadGui")
    if not overhead then return end

    local frame = overhead:FindFirstChild("Frame")
    if not frame then return end

    local label = frame:FindFirstChild("Username")
    if not label then return end

    if originalOverheads[player] then
        label.Text = originalOverheads[player]
    end
end

local function applyAll()
    for _, p in ipairs(Players:GetPlayers()) do
        spoofOverhead(p)
    end
end

local function revertAll()
    for _, p in ipairs(Players:GetPlayers()) do
        revertOverhead(p)
    end
end

-- auto-refresh on respawn
Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function()
        task.wait(0.2)
        if streamerModeOn then
            spoofOverhead(player)
        end
    end)
end)

-- auto-refresh when overhead reloads
workspace.ChildAdded:Connect(function(obj)
    if not streamerModeOn then return end
    local player = Players:GetPlayerFromCharacter(obj)
    if player then
        task.wait(0.2)
        spoofOverhead(player)
    end
end)

MiscTab:CreateToggle({
    Name = "Streamer Mode (Overhead Only)",
    CurrentValue = false,
    Callback = function(state)
        streamerModeOn = state
        if state then
            applyAll()
        else
            revertAll()
        end
    end
})

---------------------------------------------------------------------
-- Ancient Fragment Viewer
---------------------------------------------------------------------
local fragSection = MiscTab:CreateSection("Ancient Fragment Viewer")

local fragLabels = {}        -- Rayfield label objects
local lastFragValues = {}    -- saved fragment values
local Players = game:GetService("Players")

local CoreGui = game:GetService("CoreGui")

local function findRayfield()
    -- Search every descendant for an Instance named "Rayfield"
    for _, obj in ipairs(CoreGui:GetDescendants()) do
        if obj.Name == "Rayfield" then
            return obj
        end
    end
    return nil
end

local RayfieldGui = findRayfield()

local RayfieldMisc = nil
if RayfieldGui then
    -- Safely walk the tree (mobile-safe)
    local main = RayfieldGui:FindFirstChild("Main")
    if main then
        local elements = main:FindFirstChild("Elements")
        if elements then
            RayfieldMisc = elements:FindFirstChild("Misc")
        end
    end
end

---------------------------------------------------------------------
-- Helpers
---------------------------------------------------------------------

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
    lastFragValues[player.UserId] = valueText

    local label = fragLabels[player]
    if label then
        label:Set(player.Name .. " — " .. valueText)
    end
end

local function watchFragmentValue(player)
    task.spawn(function()
        local valueObj

        for _ = 1, 10 do
            valueObj = getFragmentValueObject(player)
            if valueObj then break end
            task.wait(1)
        end

        if not valueObj then
            updateFragmentLabel(player, "N/A")
            return
        end

        updateFragmentLabel(player, tostring(valueObj.Value))

        valueObj.Changed:Connect(function(newValue)
            updateFragmentLabel(player, tostring(newValue))
        end)
    end)
end

---------------------------------------------------------------------
-- Row creation / removal
---------------------------------------------------------------------

local function createFragmentRow(player)
    if fragLabels[player] then return end

    fragLabels[player] = MiscTab:CreateLabel(player.Name .. " — ...")
    watchFragmentValue(player)
end

local function markPlayerLeft(player)
    local label = fragLabels[player]
    if not label then return end

    local saved = lastFragValues[player.UserId] or "N/A"
    label:Set(player.Name .. " — " .. saved .. " (left)")
end

---------------------------------------------------------------------
-- Clear Left Players (DESTROY LABEL ELEMENT)
---------------------------------------------------------------------

MiscTab:CreateButton({
    Name = "Clear Left Players",
    Callback = function()
        for _, element in ipairs(RayfieldMisc:GetChildren()) do
            local title = element:FindFirstChild("Title")
            if title and title.Text and title.Text:find("%(left%)") then
                element:Destroy()  -- destroy the entire label element
            end
        end

        -- Clean fragLabels table
        for player, label in pairs(fragLabels) do
            local title = label.Title
            if title and title.Text and title.Text:find("%(left%)") then
                fragLabels[player] = nil
            end
        end
    end
})

---------------------------------------------------------------------
-- Init
---------------------------------------------------------------------

for _, p in ipairs(Players:GetPlayers()) do
    createFragmentRow(p)
end

Players.PlayerAdded:Connect(function(player)
    -- If they rejoin, remove old left label
    for _, element in ipairs(RayfieldMisc:GetChildren()) do
        local title = element:FindFirstChild("Title")
        if title and title.Text:find(player.Name .. " —") and title.Text:find("%(left%)") then
            element:Destroy()
        end
    end

    fragLabels[player] = nil
    createFragmentRow(player)
end)

Players.PlayerRemoving:Connect(markPlayerLeft)


---------------------------------------------------------------------
-- Credits
---------------------------------------------------------------------
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

        local reqPayload = {
            Url = "http://127.0.0.1:6463/rpc?v=1",
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json",
                ["Origin"] = "https://discord.com"
            },
            Body = http:JSONEncode(payload)
        }

        if syn and syn.request then
            syn.request(reqPayload)
        elseif request then
            request(reqPayload)
        end

        Rayfield:Notify({
            Title = "Discord",
            Content = "Invite copied & Discord opened.",
            Duration = 5,
            Image = 4483362458
        })
    end
})
CreditsTab:CreateLabel("Made by pengus3npai")
