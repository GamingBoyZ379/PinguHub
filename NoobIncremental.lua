--== Wait For Game Loaded ==--
if not game:IsLoaded() then
    game.Loaded:Wait()
end
-- Create a quick loading frame
local loadingFrame = Instance.new("ScreenGui")
loadingFrame.Name = "LoadingFrame"
loadingFrame.ResetOnSpawn = false
loadingFrame.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(0.3, 0, 0.1, 0)
textLabel.Position = UDim2.new(0.35, 0, 0.45, 0)
textLabel.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
textLabel.TextScaled = true
textLabel.Font = Enum.Font.SourceSansBold
textLabel.Text = "Loading..."
textLabel.Parent = loadingFrame

-- Fade in/out while waiting
textLabel.TextTransparency = 1
for i = 1, 10 do
    textLabel.TextTransparency = 1 - i * 0.1
    task.wait(0.05)
end

task.wait(5)

for i = 1, 10 do
    textLabel.TextTransparency = i * 0.1
    task.wait(0.05)
end

loadingFrame:Destroy()

local DiscordLib =
    loadstring(game:HttpGet "https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/discord")()

local win = DiscordLib:Window("Noob Incremental Script")
local serv = win:Server("Main", "http://www.roblox.com/asset/?id=10698557097")

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local RS = game:GetService("ReplicatedStorage")
local GameContent = workspace:WaitForChild("__GAME_CONTENT")

-- ==========================================================
-- Shared state
-- ==========================================================
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

local TrialActive = false
local AutosPaused = false

local OreList = {}
local MobList = {}
local capsuleOptions = {}
local capsuleDisplayMap = {}
local runeOptions = {}

-- Dropdown objects
local oreDropdown
local mobDropdown
local capsuleDropdown
local runeDropdown

-- ==========================================================
-- Trial State
-- ==========================================================
local function isPlayerInTrial()
    local hud = LocalPlayer.PlayerGui:FindFirstChild("HUD")
    local leaveButton = hud and hud:FindFirstChild("LeaveTrial")
    return leaveButton and leaveButton.Visible
end

local function updateAutoPauseState()
    TrialActive = isPlayerInTrial()
    AutosPaused = TrialActive
end

-- ==========================================================
-- Refresh Logic 
-- ==========================================================
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

-- ==========================================================
-- Helpers
-- ==========================================================
local function getRoot()
    local char = LocalPlayer.Character
    return char and char:FindFirstChild("HumanoidRootPart")
end

local function isMobAlive(mob)
    if not mob or not mob.Parent then return false end

    local ui = mob:FindFirstChild("OresTopUI")
    if not ui then return false end

    local bar = ui:FindFirstChild("Bar")
    if not bar then return false end

    local healthLabel =
        bar:FindFirstChild("Health")
        or bar:FindFirstChild("HP")
        or bar:FindFirstChild("HealthValue")

    if not healthLabel then return false end

    local hp = tostring(healthLabel.Text):gsub("%s+", "")
    if hp == "" or hp == "0" or hp:match("^0/") or hp:lower():find("respawning") then
        return false
    end

    return true
end

local function isOreAlive(ore)
    return ore and ore.Parent ~= nil
end

local function leaveTrial()
    local hud = LocalPlayer.PlayerGui:FindFirstChild("HUD")
    local leaveButton = hud and hud:FindFirstChild("LeaveTrial")
    if leaveButton then firesignal(leaveButton.MouseButton1Click) end
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

local function isFarEnough(cframe, threshold)
    threshold = threshold or 10
    local root = getRoot()
    return root and (root.Position - cframe.Position).Magnitude > threshold
end

local function waitForNextWave(mobsFolder)
    while #mobsFolder:GetChildren() > 0 do task.wait(0.1) end
    while #mobsFolder:GetChildren() == 0 do task.wait(0.1) end
end

-- ==========================================================
-- Movement
-- ==========================================================
local function moveTo(cframe, aliveCheckFn)
    local root = getRoot()
    local character = LocalPlayer.Character
    local humanoid = character and character:FindFirstChild("Humanoid")
    if not root or not humanoid then return end

    if MovementMode == "Teleport" then
        root.CFrame = cframe

    elseif MovementMode == "Tween" then
        local TweenService = game:GetService("TweenService")
        local distance = (root.Position - cframe.Position).Magnitude
        local tween = TweenService:Create(root, TweenInfo.new(distance / 60, Enum.EasingStyle.Linear), {CFrame = cframe})
        tween:Play()

        while tween.PlaybackState == Enum.PlaybackState.Playing do
            if aliveCheckFn and not aliveCheckFn() then tween:Cancel() return end
            task.wait(0.1)
        end

    elseif MovementMode == "Walk" or MovementMode == "Legit" then
        local safeCF = cframe
        local startPos = root.Position
        local targetPos = safeCF.Position

        humanoid:MoveTo(targetPos)

        local reached = false
        local stuckTimer = 0
        local lastPos = startPos

        local connection = humanoid.MoveToFinished:Connect(function() reached = true end)

        while not reached do
            task.wait(0.1)

            if MovementMode == "Walk" and aliveCheckFn and not aliveCheckFn() then
                connection:Disconnect()
                return
            end

            local currentPos = root.Position
            local distMoved = (currentPos - lastPos).Magnitude
            lastPos = currentPos

            if distMoved < 0.05 then stuckTimer += 0.1 else stuckTimer = 0 end

            -- Jump assist when stuck
            if stuckTimer > 0.6 then
                root.CFrame = root.CFrame + Vector3.new(0, 0.2, 0)
                humanoid.Jump = true
                humanoid:MoveTo(targetPos)
                stuckTimer = 0
            end

            -- Super stuck recovery
            if (currentPos - startPos).Magnitude < 1 and stuckTimer > 1.2 then
                humanoid.Jump = true
                root.CFrame = safeCF + Vector3.new(0, 0.3, 0)
                break
            end
        end

        connection:Disconnect()
    end
end

-- ==========================================================
-- Settings
-- ==========================================================
local settingsChannel = serv:Channel("Settings")

settingsChannel:Dropdown(
    "Movement Mode",
    { "Teleport", "Tween", "Walk", "Legit" },
    function(selected) MovementMode = selected end
)

-- ==========================================================
-- Auto Ores
-- ==========================================================
local autoOresChannel = serv:Channel("AutoOres")

autoOresChannel:Toggle("Farm All Ores", false, function(state)
    farmAllOresOn = state
    if not state then return end

    task.spawn(function()
        while farmAllOresOn do
            updateAutoPauseState()
            if AutosPaused then task.wait(0.5) continue end

            local oresFolder = GameContent:FindFirstChild("Ores")
            if oresFolder then
                local ores = oresFolder:GetChildren()

                for i = #ores, 2, -1 do
                    local j = math.random(1, i)
                    ores[i], ores[j] = ores[j], ores[i]
                end

                for _, ore in ipairs(ores) do
                    if not farmAllOresOn then break end

                    local shouldTarget = (MovementMode == "Legit") or isOreAlive(ore)
                    if shouldTarget then
                        local cf = getTargetCFrame(ore)
                        if cf then
                            if MovementMode == "Legit" then
                                moveTo(cf)
                            else
                                moveTo(cf, function() return isOreAlive(ore) end)
                            end

                            while farmAllOresOn and isOreAlive(ore) do task.wait(0.1) end
                        end
                    end
                end
            end

            task.wait(0.5)
        end
    end)
end)

autoOresChannel:Toggle("Farm Selected Ore", false, function(state)
    farmSelectedOreOn = state
    if not state then return end

    task.spawn(function()
        while farmSelectedOreOn do
            updateAutoPauseState()
            if AutosPaused then task.wait(0.5) continue end

            if SelectedOre then
                local oresFolder = GameContent:FindFirstChild("Ores")
                if oresFolder then
                    for _, ore in ipairs(oresFolder:GetChildren()) do
                        if not farmSelectedOreOn then break end

                        local cleanName = ore.Name:match("^(.-)#?%d*$") or ore.Name
                        if cleanName == SelectedOre then
                            local shouldTarget = (MovementMode == "Legit") or isOreAlive(ore)
                            if shouldTarget then
                                local cf = getTargetCFrame(ore)
                                if cf then
                                    if MovementMode == "Legit" then
                                        moveTo(cf)
                                    else
                                        moveTo(cf, function() return isOreAlive(ore) end)
                                    end

                                    while farmSelectedOreOn and isOreAlive(ore) do task.wait(0.1) end
                                end
                            end
                        end
                    end
                end
            end

            task.wait(0.5)
        end
    end)
end)

-- ==========================================================
-- Auto Mobs
-- ==========================================================
local autoMobsChannel = serv:Channel("AutoMobs")

autoMobsChannel:Dropdown(
    "Trial Difficulty",
    { "Hard", "Medium", "Easy" },
    function(selected) SelectedTrialDifficulty = selected end
)

autoMobsChannel:Toggle("Auto Trial", false, function(state)
    autoTrialOn = state
    if not state then return end

    task.spawn(function()
        while autoTrialOn do
            updateAutoPauseState()

            if TrialActive then
                local trialsRoot = GameContent:FindFirstChild("Trials")
                local trialRoom = trialsRoot and trialsRoot:FindFirstChild(SelectedTrialDifficulty .. "TrialRoom")

                local mobsFolder = trialRoom and trialRoom:FindFirstChild("Mobs")

                -- Correct TimeLeft reference
                local timeLeft = RS.TrialsStatus[SelectedTrialDifficulty].TimeLeft

                -- Leave trial at <=900 seconds
                if timeLeft.Value <= 900 then
                    leaveTrial()
                    task.wait(2)
                    break
                end

                if mobsFolder then
                    while autoTrialOn and TrialActive do
                        updateAutoPauseState()

                        local targetMob = nil
                        for _, mob in ipairs(mobsFolder:GetChildren()) do
                            if mob:IsA("Model") and isMobAlive(mob) then
                                targetMob = mob
                                break
                            end
                        end

                        if targetMob then
                            local cf = getTargetCFrame(targetMob)
                            if cf then
                                if MovementMode == "Legit" then
                                    moveTo(cf)
                                else
                                    moveTo(cf, function() return isMobAlive(targetMob) end)
                                end

                                while autoTrialOn and TrialActive and isMobAlive(targetMob) do
                                    task.wait(0.05)
                                end
                            end
                        else
                            waitForNextWave(mobsFolder)
                        end
                    end
                end

            else
                local trialsStatus = RS:FindFirstChild("TrialsStatus")
                local entryOpen = trialsStatus and trialsStatus:FindFirstChild("EntryOpen")

                if entryOpen and entryOpen.Value == true then
                    local root = getRoot()
                    if root then
                        root.CFrame = CFrame.new(879, 11, 13443)
                        task.wait(0.5)
                    end

                    local trialsRoot = GameContent:FindFirstChild("Trials")
                    local trialRoom = trialsRoot and trialsRoot:FindFirstChild(SelectedTrialDifficulty .. "TrialRoom")

                    if trialRoom then
                        local trialModel = trialRoom:FindFirstChild("__Trial" .. SelectedTrialDifficulty .. "Room")
                        local touchPart = trialModel and trialModel:FindFirstChild("TouchPart")

                        if touchPart then
                            moveTo(touchPart.CFrame)
                            task.wait(1)
                        end
                    end
                end
            end

            task.wait(0.5)
        end
    end)
end)

autoMobsChannel:Toggle("Farm All Mobs", false, function(state)
    farmAllOn = state
    if not state then return end

    task.spawn(function()
        while farmAllOn do
            updateAutoPauseState()
            if AutosPaused then task.wait(0.5) continue end

            local mobsFolder = GameContent:FindFirstChild("Mobs")
            if mobsFolder then
                local mobs = mobsFolder:GetChildren()

                for i = #mobs, 2, -1 do
                    local j = math.random(1, i)
                    mobs[i], mobs[j] = mobs[j], mobs[i]
                end

                for _, mob in ipairs(mobs) do
                    if not farmAllOn then break end

                    local shouldTarget = (MovementMode == "Legit") or isMobAlive(mob)
                    if shouldTarget then
                        local cf = getTargetCFrame(mob)
                        if cf then
                            if MovementMode == "Legit" then
                                moveTo(cf)
                            else
                                moveTo(cf, function() return isMobAlive(mob) end)
                            end

                            while farmAllOn and isMobAlive(mob) do task.wait(0.1) end
                        end
                    end
                end
            end

            task.wait(0.5)
        end
    end)
end)

autoMobsChannel:Toggle("Farm Selected Mobs", false, function(state)
    farmSelectedOn = state
    if not state then return end

    task.spawn(function()
        while farmSelectedOn do
            updateAutoPauseState()
            if AutosPaused then task.wait(0.5) continue end

            if SelectedMob then
                local mobsFolder = GameContent:FindFirstChild("Mobs")
                if mobsFolder then
                    for _, mob in ipairs(mobsFolder:GetChildren()) do
                        if not farmSelectedOn then break end

                        local cleanName = mob.Name:match("^(.-)#?%d*$") or mob.Name
                        if cleanName == SelectedMob then
                            local shouldTarget = (MovementMode == "Legit") or isMobAlive(mob)
                            if shouldTarget then
                                local cf = getTargetCFrame(mob)
                                if cf then
                                    if MovementMode == "Legit" then
                                        moveTo(cf)
                                    else
                                        moveTo(cf, function() return isMobAlive(mob) end)
                                    end
                                end
                            end
                        end
                    end
                end
            end

            task.wait(0.5)
        end
    end)
end)

-- ==========================================================
-- Auto Capsules
-- ==========================================================
local autoCapsulesChannel = serv:Channel("AutoCapsules")

autoCapsulesChannel:Toggle("Auto Open", false, function(state)
    autoCapsuleOn = state
    if not state then return end

    task.spawn(function()
        while autoCapsuleOn do
            updateAutoPauseState()
            if AutosPaused then
                task.wait(0.5)
                continue
            end

            if SelectedCapsule then
                local fullName = capsuleDisplayMap[SelectedCapsule]
                local uiZones = GameContent:FindFirstChild("UIZones")
                local capsuleObj = uiZones and uiZones:FindFirstChild(fullName)

                if capsuleObj then
                    local cf = getTargetCFrame(capsuleObj)
                    local teleported = false

                    if cf and isFarEnough(cf, 10) then
                        moveTo(cf)
                        teleported = true
                    end

                    if teleported then
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

            task.wait(1)
        end
    end)
end)


-- ==========================================================
-- Auto Runes
-- ==========================================================
local autoRunesChannel = serv:Channel("AutoRunes")

autoRunesChannel:Toggle("Autoroll", false, function(state)
    autoRollOn = state
    if not state then return end

    task.spawn(function()
        while autoRollOn do
            updateAutoPauseState()
            if AutosPaused then task.wait(0.5) continue end

            if SelectedRune then
                local runeZones = GameContent:FindFirstChild("RuneZones")
                local runeObj = runeZones and runeZones:FindFirstChild(SelectedRune)
                if runeObj then
                    local cf = getTargetCFrame(runeObj)
                    if cf and isFarEnough(cf, 10) then
                        moveTo(cf)
                    end
                end
            end

            task.wait(1)
        end
    end)
end)

refreshOreList()
refreshMobList()
refreshCapsuleList()
refreshRuneList()

oreDropdown = autoOresChannel:Dropdown(
    "Target Ore",
    OreList,
    function(selected) SelectedOre = selected end
)

mobDropdown = autoMobsChannel:Dropdown(
    "Target Mob",
    MobList,
    function(selected) SelectedMob = selected end
)

capsuleDropdown = autoCapsulesChannel:Dropdown(
    "Capsule",
    capsuleOptions,
    function(selected) SelectedCapsule = selected end
)

runeDropdown = autoRunesChannel:Dropdown(
    "Runes",
    runeOptions,
    function(selected) SelectedRune = selected end
)
