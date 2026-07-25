--== Wait For Game Loaded ==--
if not game:IsLoaded() then
    game.Loaded:Wait()
end

-- Loading Frame
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

-- Shared State
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
local movementCancelled = false

local OreList = {}
local MobList = {}
local capsuleOptions = {}
local capsuleDisplayMap = {}
local runeOptions = {}

local oreDropdown
local mobDropdown
local capsuleDropdown
local runeDropdown

-- Trial State
local function isPlayerInTrial()
    local hud = LocalPlayer.PlayerGui:FindFirstChild("HUD")
    local leaveButton = hud and hud:FindFirstChild("LeaveTrial")
    return leaveButton and leaveButton.Visible
end

local function updateAutoPauseState()
    TrialActive = isPlayerInTrial()
    AutosPaused = TrialActive
end

-- Refresh Lists
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

-- Helpers
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

local function legitDelay()
    if MovementMode == "Legit" then
        task.wait(0.1)
    end
end

local function moveTo(cframe, aliveCheckFn)
    movementCancelled = false

    local root = getRoot()
    local character = LocalPlayer.Character
    local humanoid = character and character:FindFirstChild("Humanoid")
    if not root or not humanoid then return end
    if not cframe then return end

    if AutosPaused then return end

    -- Teleport
    if MovementMode == "Teleport" then
        if not movementCancelled then
            root.CFrame = cframe
        end
        return
    end

    -- Tween
    if MovementMode == "Tween" then
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

            if MovementMode ~= "Legit" and aliveCheckFn and not aliveCheckFn() then
                tween:Cancel()
                return
            end

            task.wait(0.05)
        end

        if MovementMode == "Legit" then
            legitDelay()
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

        if MovementMode ~= "Legit" and aliveCheckFn and not aliveCheckFn() then
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

    if MovementMode == "Legit" then
        legitDelay()
    end
end
-- ==========================================================
-- Settings (placed above AutoOres)
-- ==========================================================
local settingsChannel = serv:Channel("Settings")

settingsChannel:Dropdown(
    "Movement Mode",
    { "Teleport", "Tween", "Walk", "Legit" },
    function(selected)
        MovementMode = selected
    end
)

local hideRollsOn = false

settingsChannel:Toggle("Hide Rolls", false, function(state)
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
end)

-- ==========================================================
-- Auto Ores
-- ==========================================================
local autoOresChannel = serv:Channel("AutoOres")

autoOresChannel:Toggle("Farm All Ores", false, function(state)
    farmAllOresOn = state
    movementCancelled = not state
    if not state then return end

    task.spawn(function()
        while farmAllOresOn do
            updateAutoPauseState()
            if AutosPaused then task.wait(0.3) continue end

            local oresFolder = GameContent:FindFirstChild("Ores")
            if oresFolder then
                local ores = oresFolder:GetChildren()

                for i = #ores, 2, -1 do
                    local j = math.random(1, i)
                    ores[i], ores[j] = ores[j], ores[i]
                end

                for _, ore in ipairs(ores) do
                    if not farmAllOresOn then break end

                    local shouldTarget =
                        (MovementMode == "Legit") and true or
                        isOreAlive(ore)

                    if shouldTarget then
                        local cf = getTargetCFrame(ore)
                        if cf then
                            movementCancelled = false

                            if MovementMode == "Legit" then
                                moveTo(cf)
                            else
                                moveTo(cf, function() return isOreAlive(ore) end)
                            end

                            if MovementMode ~= "Legit" then
                                while farmAllOresOn and isOreAlive(ore) do
                                    task.wait(0.1)
                                end
                            end
                        end
                    end
                end
            end

            task.wait(0.3)
        end
    end)
end)

autoOresChannel:Toggle("Farm Selected Ore", false, function(state)
    farmSelectedOreOn = state
    movementCancelled = not state
    if not state then return end

    task.spawn(function()
        while farmSelectedOreOn do
            updateAutoPauseState()
            if AutosPaused then task.wait(0.3) continue end

            if SelectedOre then
                local oresFolder = GameContent:FindFirstChild("Ores")
                if oresFolder then
                    for _, ore in ipairs(oresFolder:GetChildren()) do
                        if not farmSelectedOreOn then break end

                        local cleanName = ore.Name:match("^(.-)#?%d*$") or ore.Name
                        if cleanName == SelectedOre then
                            local shouldTarget =
                                (MovementMode == "Legit") and true or
                                isOreAlive(ore)

                            if shouldTarget then
                                local cf = getTargetCFrame(ore)
                                if cf then
                                    movementCancelled = false

                                    if MovementMode == "Legit" then
                                        moveTo(cf)
                                    else
                                        moveTo(cf, function() return isOreAlive(ore) end)
                                    end

                                    if MovementMode ~= "Legit" then
                                        while farmSelectedOreOn and isOreAlive(ore) do
                                            task.wait(0.1)
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end

            task.wait(0.3)
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
    function(selected)
        SelectedTrialDifficulty = selected
    end
)

autoMobsChannel:Toggle("Auto Trial", false, function(state)
    autoTrialOn = state
    movementCancelled = not state
    if not state then return end

    task.spawn(function()
        while autoTrialOn do
            updateAutoPauseState()

            if TrialActive then
                local trialsRoot = GameContent:FindFirstChild("Trials")
                local trialRoom = trialsRoot and trialsRoot:FindFirstChild(SelectedTrialDifficulty .. "TrialRoom")
                local mobsFolder = trialRoom and trialRoom:FindFirstChild("Mobs")

                local timeLeft = RS.TrialsStatus[SelectedTrialDifficulty].TimeLeft

                if timeLeft.Value > 0 and timeLeft.Value <= 900 then
                    leaveTrial()
                    task.wait(2)
                    break
                end

                if mobsFolder then
                    while autoTrialOn and TrialActive do
                        updateAutoPauseState()

                        while autoTrialOn and TrialActive and mobsFolder and #mobsFolder:GetChildren() == 0 do
                            task.wait(0.1)
                        end
								
                        local targetMob = nil
                        for _, mob in ipairs(mobsFolder:GetChildren()) do
                            if mob:IsA("Model") then
                                targetMob = mob
                                break
                            end
                        end

                        if not targetMob then
                            waitForNextWave(mobsFolder)
                            continue
                        end

                        local cf = getTargetCFrame(targetMob)
                        if cf then
                            movementCancelled = false

                            if MovementMode == "Legit" then
                                moveTo(cf)
                            else
                                moveTo(cf, function()
                                    return targetMob and isMobAlive(targetMob)
                                end)
                            end

                            if MovementMode ~= "Legit" then
                                while autoTrialOn
                                    and TrialActive
                                    and targetMob
                                    and isMobAlive(targetMob)
                                do
                                    task.wait(0.05)
                                end
                            end
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
                            movementCancelled = false
                            moveTo(touchPart.CFrame)
                            task.wait(1)
                        end
                    end
                end
            end

            task.wait(0.3)
        end
    end)
end)

autoMobsChannel:Toggle("Farm All Mobs", false, function(state)
    farmAllOn = state
    movementCancelled = not state
    if not state then return end

    task.spawn(function()
        while farmAllOn do
            updateAutoPauseState()
            if AutosPaused then task.wait(0.3) continue end

            local mobsFolder = GameContent:FindFirstChild("Mobs")
            if mobsFolder then
                local mobs = mobsFolder:GetChildren()

                for i = #mobs, 2, -1 do
                    local j = math.random(1, i)
                    mobs[i], mobs[j] = mobs[j], mobs[i]
                end

                for _, mob in ipairs(mobs) do
                    if not farmAllOn then break end

                    local shouldTarget =
                        (MovementMode == "Legit") and true or
                        isMobAlive(mob)

                    if shouldTarget then
                        local cf = getTargetCFrame(mob)
                        if cf then
                            movementCancelled = false

                            if MovementMode == "Legit" then
                                moveTo(cf)
                            else
                                moveTo(cf, function() return isMobAlive(mob) end)
                            end

                            if MovementMode ~= "Legit" then
                                while farmAllOn and isMobAlive(mob) do
                                    task.wait(0.1)
                                end
                            end
                        end
                    end
                end
            end

            task.wait(0.3)
        end
    end)
end)

autoMobsChannel:Toggle("Farm Selected Mobs", false, function(state)
    farmSelectedOn = state
    movementCancelled = not state
    if not state then return end

    task.spawn(function()
        while farmSelectedOn do
            updateAutoPauseState()
            if AutosPaused then task.wait(0.3) continue end

            if SelectedMob then
                local mobsFolder = GameContent:FindFirstChild("Mobs")
                if mobsFolder then
                    for _, mob in ipairs(mobsFolder:GetChildren()) do
                        if not farmSelectedOn then break end

                        local cleanName = mob.Name:match("^(.-)#?%d*$") or mob.Name
                        if cleanName == SelectedMob then
                            local shouldTarget =
                                (MovementMode == "Legit") and true or
                                isMobAlive(mob)

                            if shouldTarget then
                                local cf = getTargetCFrame(mob)
                                if cf then
                                    movementCancelled = false

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

            task.wait(0.3)
        end
    end)
end)
-- ==========================================================
-- Auto Capsules
-- ==========================================================
local autoCapsulesChannel = serv:Channel("AutoCapsules")

autoCapsulesChannel:Toggle("Auto Open", false, function(state)
    autoCapsuleOn = state
    movementCancelled = not state
    if not state then return end

    task.spawn(function()
        while autoCapsuleOn do
            updateAutoPauseState()
            if AutosPaused then task.wait(0.3) continue end

            if SelectedCapsule then
                local fullName = capsuleDisplayMap[SelectedCapsule]
                local uiZones = GameContent:FindFirstChild("UIZones")
                local capsuleObj = uiZones and uiZones:FindFirstChild(fullName)

                if capsuleObj then
                    local cf = getTargetCFrame(capsuleObj)
                    if cf then
                        movementCancelled = false

                        if isFarEnough(cf, 10) then
                            if MovementMode == "Legit" then
                                moveTo(cf)
                            else
                                moveTo(cf)
                            end
                        end

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

            task.wait(0.5)
        end
    end)
end)

-- ==========================================================
-- Auto Runes
-- ==========================================================
local autoRunesChannel = serv:Channel("AutoRunes")

autoRunesChannel:Toggle("Autoroll", false, function(state)
    autoRollOn = state
    movementCancelled = not state
    if not state then return end

    task.spawn(function()
        while autoRollOn do
            updateAutoPauseState()
            if AutosPaused then task.wait(0.3) continue end

            if SelectedRune then
                local runeZones = GameContent:FindFirstChild("RuneZones")
                local runeObj = runeZones and runeZones:FindFirstChild(SelectedRune)

                if runeObj then
                    local cf = getTargetCFrame(runeObj)
                    if cf then
                        movementCancelled = false

                        if isFarEnough(cf, 10) then
                            if MovementMode == "Legit" then
                                moveTo(cf)
                            else
                                moveTo(cf)
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
-- Items
-- ==========================================================
local itemsChannel = serv:Channel("Items")

local autoT1ChestOn = false
local autoT2ChestOn = false

itemsChannel:Toggle("Auto Use T1 Chest", false, function(state)
    autoT1ChestOn = state
    if not state then return end

    task.spawn(function()
        while autoT1ChestOn do
            updateAutoPauseState()
            if AutosPaused then task.wait(0.3) continue end

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
end)

itemsChannel:Toggle("Auto Use T2 Chest", false, function(state)
    autoT2ChestOn = state
    if not state then return end

    task.spawn(function()
        while autoT2ChestOn do
            updateAutoPauseState()
            if AutosPaused then task.wait(0.3) continue end

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
end)

-- ==========================================================
-- Misc
-- ==========================================================
local miscChannel = serv:Channel("Misc")

miscChannel:Button("Ancient Fragment Viewer", function()
    -- Ancient Fragment Viewer UI
    local Players = game:GetService("Players")
    local UserInputService = game:GetService("UserInputService")

    local localPlayer = Players.LocalPlayer
    local playerRows = {}
    local valueConnections = {}

    local function getFragmentValueObject(player)
        local currencies = player:FindFirstChild("CURRENCIES")
        if not currencies then return nil end

        local fragment = currencies:FindFirstChild("AncientFragment")
        if not fragment then return nil end

        local amount = fragment:FindFirstChild("Amount")
        if not amount then return nil end

        return amount:FindFirstChild("1")
    end

    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "AncientFragmentTrackerUI"
    screenGui.ResetOnSpawn = false
    screenGui.Parent = localPlayer:WaitForChild("PlayerGui")

    local mainFrame = Instance.new("Frame")
    mainFrame.Name = "MainFrame"
    mainFrame.Size = UDim2.new(0, 260, 0, 300)
    mainFrame.Position = UDim2.new(0, 100, 0, 100)
    mainFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    mainFrame.BorderSizePixel = 0
    mainFrame.Parent = screenGui

    local uiCorner = Instance.new("UICorner")
    uiCorner.CornerRadius = UDim.new(0, 8)
    uiCorner.Parent = mainFrame

    local titleBar = Instance.new("Frame")
    titleBar.Name = "TitleBar"
    titleBar.Size = UDim2.new(1, 0, 0, 32)
    titleBar.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    titleBar.BorderSizePixel = 0
    titleBar.Parent = mainFrame

    local titleCorner = Instance.new("UICorner")
    titleCorner.CornerRadius = UDim.new(0, 8)
    titleCorner.Parent = titleBar

    local titleBarFix = Instance.new("Frame")
    titleBarFix.Size = UDim2.new(1, 0, 0, 8)
    titleBarFix.Position = UDim2.new(0, 0, 1, -8)
    titleBarFix.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    titleBarFix.BorderSizePixel = 0
    titleBarFix.Parent = titleBar

    local titleLabel = Instance.new("TextLabel")
    titleLabel.Size = UDim2.new(1, -70, 1, 0)
    titleLabel.Position = UDim2.new(0, 10, 0, 0)
    titleLabel.BackgroundTransparency = 1
    titleLabel.Text = "Ancient Fragments"
    titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    titleLabel.Font = Enum.Font.GothamBold
    titleLabel.TextSize = 14
    titleLabel.TextXAlignment = Enum.TextXAlignment.Left
    titleLabel.Parent = titleBar

    local minimizeButton = Instance.new("TextButton")
    minimizeButton.Name = "MinimizeButton"
    minimizeButton.Size = UDim2.new(0, 28, 0, 24)
    minimizeButton.Position = UDim2.new(1, -34, 0, 4)
    minimizeButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    minimizeButton.Text = "_"
    minimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    minimizeButton.Font = Enum.Font.GothamBold
    minimizeButton.TextSize = 16
    minimizeButton.Parent = titleBar

    local minBtnCorner = Instance.new("UICorner")
    minBtnCorner.CornerRadius = UDim.new(0, 6)
    minBtnCorner.Parent = minimizeButton

    local contentFrame = Instance.new("Frame")
    contentFrame.Name = "ContentFrame"
    contentFrame.Size = UDim2.new(1, 0, 1, -32)
    contentFrame.Position = UDim2.new(0, 0, 0, 32)
    contentFrame.BackgroundTransparency = 1
    contentFrame.Parent = mainFrame

    local headerFrame = Instance.new("Frame")
    headerFrame.Size = UDim2.new(1, -16, 0, 24)
    headerFrame.Position = UDim2.new(0, 8, 0, 6)
    headerFrame.BackgroundTransparency = 1
    headerFrame.Parent = contentFrame

    local headerName = Instance.new("TextLabel")
    headerName.Size = UDim2.new(0.65, 0, 1, 0)
    headerName.BackgroundTransparency = 1
    headerName.Text = "Player"
    headerName.TextColor3 = Color3.fromRGB(180, 180, 180)
    headerName.Font = Enum.Font.GothamBold
    headerName.TextSize = 12
    headerName.TextXAlignment = Enum.TextXAlignment.Left
    headerName.Parent = headerFrame

    local headerCount = Instance.new("TextLabel")
    headerCount.Size = UDim2.new(0.35, 0, 1, 0)
    headerCount.Position = UDim2.new(0.65, 0, 0, 0)
    headerCount.BackgroundTransparency = 1
    headerCount.Text = "Fragments"
    headerCount.TextColor3 = Color3.fromRGB(180, 180, 180)
    headerCount.Font = Enum.Font.GothamBold
    headerCount.TextSize = 12
    headerCount.TextXAlignment = Enum.TextXAlignment.Right
    headerCount.Parent = headerFrame

    local scrollFrame = Instance.new("ScrollingFrame")
    scrollFrame.Name = "PlayerList"
    scrollFrame.Size = UDim2.new(1, -16, 1, -40)
    scrollFrame.Position = UDim2.new(0, 8, 0, 34)
    scrollFrame.BackgroundTransparency = 1
    scrollFrame.BorderSizePixel = 0
    scrollFrame.ScrollBarThickness = 6
    scrollFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
    scrollFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
    scrollFrame.Parent = contentFrame

    local listLayout = Instance.new("UIListLayout")
    listLayout.Padding = UDim.new(0, 4)
    listLayout.SortOrder = Enum.SortOrder.Name
    listLayout.Parent = scrollFrame

    local function setCountText(player, text)
        local row = playerRows[player]
        if row then
            row.countLabel.Text = text
        end
    end

    local function watchFragmentValue(player)
        if valueConnections[player] then
            valueConnections[player]:Disconnect()
            valueConnections[player] = nil
        end

        local valueObj = getFragmentValueObject(player)
        if valueObj then
            setCountText(player, tostring(valueObj.Value))
            valueConnections[player] = valueObj.Changed:Connect(function(newValue)
                setCountText(player, tostring(newValue))
            end)
        else
            setCountText(player, "N/A")
        end
    end

    local function createPlayerRow(player)
        local row = Instance.new("Frame")
        row.Name = player.Name
        row.Size = UDim2.new(1, 0, 0, 28)
        row.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
        row.Parent = scrollFrame

        local corner = Instance.new("UICorner")
        corner.CornerRadius = UDim.new(0, 6)
        corner.Parent = row

        local nameLabel = Instance.new("TextLabel")
        nameLabel.Size = UDim2.new(0.65, -8, 1, 0)
        nameLabel.Position = UDim2.new(0, 8, 0, 0)
        nameLabel.BackgroundTransparency = 1
        nameLabel.Text = player.Name
        nameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        nameLabel.Font = Enum.Font.Gotham
        nameLabel.TextSize = 13
        nameLabel.TextXAlignment = Enum.TextXAlignment.Left
        nameLabel.TextTruncate = Enum.TextTruncate.AtEnd
        nameLabel.Parent = row

        local countLabel = Instance.new("TextLabel")
        countLabel.Size = UDim2.new(0.35, -8, 1, 0)
        countLabel.Position = UDim2.new(0.65, 0, 0, 0)
        countLabel.BackgroundTransparency = 1
        countLabel.Text = "..."
        countLabel.TextColor3 = Color3.fromRGB(0, 220, 100)
        countLabel.Font = Enum.Font.GothamBold
        countLabel.TextSize = 13
        countLabel.TextXAlignment = Enum.TextXAlignment.Right
        countLabel.Parent = row

        playerRows[player] = { frame = row, countLabel = countLabel }

        task.spawn(function()
            for _ = 1, 10 do
                if getFragmentValueObject(player) then break end
                task.wait(1)
            end
            watchFragmentValue(player)
        end)
    end

    local function removePlayerRow(player)
        local row = playerRows[player]
        if row then
            row.frame:Destroy()
            playerRows[player] = nil
        end
        if valueConnections[player] then
            valueConnections[player]:Disconnect()
            valueConnections[player] = nil
        end
    end

    for _, player in ipairs(Players:GetPlayers()) do
        createPlayerRow(player)
    end

    Players.PlayerAdded:Connect(createPlayerRow)
    Players.PlayerRemoving:Connect(removePlayerRow)

    local minimized = false
    minimizeButton.MouseButton1Click:Connect(function()
        minimized = not minimized
        contentFrame.Visible = not minimized
        if minimized then
            mainFrame.Size = UDim2.new(0, 260, 0, 32)
            minimizeButton.Text = "+"
        else
            mainFrame.Size = UDim2.new(0, 260, 0, 300)
            minimizeButton.Text = "_"
        end
    end)

    local dragging = false
    local dragStart = nil
    local startPos = nil

    titleBar.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = mainFrame.Position

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            local delta = input.Position - dragStart
            mainFrame.Position = UDim2.new(
                startPos.X.Scale, startPos.X.Offset + delta.X,
                startPos.Y.Scale, startPos.Y.Offset + delta.Y
            )
        end
    end)
end)

-- ==========================================================
-- Credits
-- ==========================================================
local creditsChannel = serv:Channel("Made By pengus3npai")

creditsChannel:Button("Join Discord Server", function()
    local invite = "GN6s5uctZM"
    setclipboard("https://discord.gg/" .. invite)

    local http = game:GetService("HttpService")

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
end)

-- ==========================================================
-- Dropdown Wiring
-- ==========================================================
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
