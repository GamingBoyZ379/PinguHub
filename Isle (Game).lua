local DiscordLib =
    loadstring(game:HttpGet "https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/discord")()

local win = DiscordLib:Window("PinguHub")

local serv = win:Server("Isle", "")

local btns = serv:Channel("World")

btns:Button(
    "Time",
    function()
        local timeOfDay = game:GetService("Lighting").TimeOfDay
        DiscordLib:Notification("Time", "It is currently " .. timeOfDay, "Okay!")
    end
)

local reminderConnection
local hasTriggered = false

btns:Toggle(
    "Giver Reminder",
    false,
    function(reminder)
        if reminder then
            
            reminderConnection = game:GetService("RunService").Heartbeat:Connect(function()
                
                local timeOfDay = game:GetService("Lighting").TimeOfDay

                if timeOfDay == "20:00:00" then
                    if not hasTriggered then
                        -- Send a notification
                        DiscordLib:Notification("Giver Reminder", "It is now 20:00 (8 PM)", "Okay!")
                        hasTriggered = true
                    end
                else
                    
                    hasTriggered = false
                end
            end)
        else
            
            if reminderConnection then
                reminderConnection:Disconnect()
                reminderConnection = nil
            end
        end
    end
)

btns:Button(
    "Activate Pylons",
    function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1559.03308, 89.2475357, -1183.59119, -2.07424164e-05, -0.57355696, -0.819165647, 0.99999994, -2.07424164e-05, -1.07884407e-05, -1.07884407e-05, -0.819165647, 0.573557019)
task.wait(1)
fireclickdetector(workspace.Map.Main.PylonScreenEarth.Button.Main.ClickDetector)
task.wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1395.58972, -108.047447, -1681.49365, -0.139237434, -0.849836826, -0.508321047, -0.930091619, 0.288435131, -0.227453321, 0.339915901, 0.441115141, -0.830587029)
task.wait(1)
workspace.Map.Main.LeviathanFragments.State.Solved:FireServer()
task.wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = (workspace.Map.Main.PeanutBox.WorldPivot)
task.wait(15)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1251, -70, -959)
task.wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1259, -62, -897)
    end
)

btns:Button(
    "Open Ape City",
    function()
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1582.27734, -10.9134436 + 10, 1000.03601, 0.869998932, -2.20079728e-05, 0.493053645, -2.20079728e-05, 1, 8.34693856e-05, -0.493053645, -8.34693856e-05, 0.869998932)
task.wait(2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-685.823792, 145.006729 + 10, -1052.92065, 0.869998932, -2.20079728e-05, 0.493053645, -2.20079728e-05, 1, 8.34693856e-05, -0.493053645, -8.34693856e-05, 0.869998932)
task.wait(2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(766.80249, -22.2750969 + 10, -1118.13452, 0.999967754, -8.59748252e-05, -0.00802788697, 8.66678165e-05, 1, 8.59748252e-05, 0.00802787952, -8.66678165e-05, 0.999967754)
task.wait(2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2225.45483, -8.59500408 + 10, -852.204712, 0.983381152, -7.80938499e-05, -0.181553051, 9.3831397e-05, 1, 7.80938499e-05, 0.181553051, -9.3831397e-05, 0.983381152)
task.wait(2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-356.407043, -41.9211693, 1171.30249, 0.349448264, -4.92320032e-05, 0.93695581, -4.92320032e-05, 1, 7.09062952e-05, -0.93695581, -7.09062952e-05, 0.349448264)
task.wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-356.407043, -41.9211693, 1171.30249, 0.349448264, -4.92320032e-05, 0.93695581, -4.92320032e-05, 1, 7.09062952e-05, -0.93695581, -7.09062952e-05, 0.349448264)
task.wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-356.407043, -41.9211693, 1171.30249, 0.349448264, -4.92320032e-05, 0.93695581, -4.92320032e-05, 1, 7.09062952e-05, -0.93695581, -7.09062952e-05, 0.349448264)
task.wait(2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1191.55823, -94.1042023 + 10, -1218.30786, -0.999392271, 0, 0.0348687991, 0, 1, 0, -0.0348687991, 0, -0.999392271)
    end
)

btns:Button(
    "Remove Traps",
    function()
       for _, object in pairs(workspace.Map.Ignore.Debris:GetChildren()) do
    object:Destroy()
end

local AcidHitbox = workspace.Map.Ignore.Effects:FindFirstChild("AcidHitbox") 
    AcidHitbox:Destroy()

    end
)

local btns = serv:Channel("Account")

btns:Button(
    "Grab Tablet",
    function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-104, 6, 974)
task.wait()
keypress(0x45)
task.wait()
keyrelease(0x45)
task.wait()
    end
)

btns:Seperator()

btns:Button(
    "Collect Collectibles/Files (Use Diving Gear)",
    function()
      -- Loop through all descendants of the Collectibles and Files folders in workspace.Map.Ignore
local player = game:GetService("Players").LocalPlayer

-- Function to check and simulate clicks on ClickDetectors
local function handleClickDetectors(folder)
    for _, object in pairs(folder:GetDescendants()) do
        -- Check if the object has a ClickDetector
        local clickDetector = object:FindFirstChildOfClass("ClickDetector")
        if clickDetector then
            -- Ensure the player's character is loaded before teleporting
            local character = player.Character
            if character then
                local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
                local parentPart = clickDetector.Parent
                local alertFrame = player.PlayerGui:WaitForChild("MainGui"):WaitForChild("Alert")

                if parentPart then
                    while true do
                        -- Teleport the player to the Model's WorldPivot or the Part's CFrame
                        if parentPart:IsA("Model") then
                            humanoidRootPart.CFrame = parentPart.WorldPivot
                        elseif parentPart:IsA("BasePart") then
                            humanoidRootPart.CFrame = parentPart.CFrame
                        end

                        -- Simulate a click on the ClickDetector
                        fireclickdetector(clickDetector)
                        task.wait(0.5)

                        -- Check alerts for "Item too far, get closer." or "Collectible too far away, get closer."
                        local shouldMoveOn = true
                        for _, alert in pairs(alertFrame:GetChildren()) do
                            if alert:IsA("TextLabel") and 
                               (alert.Text == "Item too far, get closer." or alert.Text == "Collectible too far away, get closer.") then
                                shouldMoveOn = false
                                break
                            end
                        end

                        -- Break out of the loop if no alerts match the conditions
                        if shouldMoveOn then
                            break
                        end

                        -- Wait briefly before trying again
                        task.wait()
                    end
                end
            end
        end
    end
end

-- Check both Collectibles and Files folders
handleClickDetectors(workspace.Map.Ignore.Collectibles)
    end
)

local btns = serv:Channel("Visuals")

btns:Button(
    "Mob ESP",
    function()

local function addESPToModel(model)
   
    if model:FindFirstChild("ESP_Added") then
        return
    end

  
    local espFlag = Instance.new("BoolValue")
    espFlag.Name = "ESP_Added"
    espFlag.Parent = model

    -- Create Highlight
    local highlight = Instance.new("Highlight")
    highlight.Parent = model
    highlight.FillColor = Color3.fromRGB(255, 0, 0) -- Red fill color
    highlight.FillTransparency = 0.9 -- Semi-transparent fill
    highlight.OutlineColor = Color3.fromRGB(255, 255, 255) -- White outline
    highlight.OutlineTransparency = 0.1 -- No transparency for outline
    highlight.Enabled = true

    -- Create BillboardGui
    local billboardGui = Instance.new("BillboardGui")
    billboardGui.Parent = model
    billboardGui.Adornee = model:FindFirstChild("HumanoidRootPart")
    billboardGui.Size = UDim2.new(0, 200, 0, 100)
    billboardGui.AlwaysOnTop = true
    billboardGui.MaxDistance = 350

    -- Create Name label
    local nameLabel = Instance.new("TextLabel")
    nameLabel.Name = "NameLabel"
    nameLabel.Parent = billboardGui
    nameLabel.Size = UDim2.new(1, 0, 0.33, 0)
    nameLabel.Position = UDim2.new(0, 0, 0, 0)
    nameLabel.TextSize = 16
    nameLabel.BackgroundTransparency = 1
    nameLabel.TextColor3 = Color3.fromRGB(255, 255, 255) -- White text

    -- Create HP label
    local hpLabel = Instance.new("TextLabel")
    hpLabel.Name = "HPLabel"
    hpLabel.Parent = billboardGui
    hpLabel.Size = UDim2.new(1, 0, 0.33, 0)
    hpLabel.Position = UDim2.new(0, 0, 0.33, 0)
    hpLabel.TextSize = 14
    hpLabel.BackgroundTransparency = 1
    hpLabel.TextColor3 = Color3.fromRGB(0, 255, 0) -- Green text

    -- Shield-related logic
    local shieldLabel = nil
    local shield = model:FindFirstChild("#EnergyShield") or model:FindFirstChild("#Shield")

    if shield then
        -- Create the shield label
        shieldLabel = Instance.new("TextLabel")
        shieldLabel.Name = "ShieldLabel"
        shieldLabel.Parent = billboardGui
        shieldLabel.Size = UDim2.new(1, 0, 0.33, 0)
        shieldLabel.Position = UDim2.new(0, 0, 0.66, 0)
        shieldLabel.TextSize = 14
        shieldLabel.BackgroundTransparency = 1
        shieldLabel.TextColor3 = Color3.fromRGB(0, 0, 255) -- Blue text

        -- Initialize shield label text
        shieldLabel.Text = "Shield: " .. (shield.Value > 0 and shield.Value or "0")

        -- Hide the shield label if shield value is 0
        if shield.Value <= 0 then
            shieldLabel.Visible = false
        end
    end

    -- Set the initial values
    if model.Name == "A" then
        nameLabel.Text = "Stan"
    else
        nameLabel.Text = model.Name:match("^[^%[]+") -- Remove any numbers in the name
    end

    -- Get the humanoid for HP
    local humanoid = model:FindFirstChild("Humanoid")

    if humanoid then
        -- Initial values for HP
        hpLabel.Text = "HP: " .. math.floor(humanoid.Health)
    end

    -- Variables to track changes
    local lastHP = humanoid and humanoid.Health or nil
    local lastShield = shield and shield.Value or nil

    -- Function to update HP and Shield when they change
    local function updateLabels()
        if humanoid then
            if humanoid.Health ~= lastHP then
                lastHP = humanoid.Health
                hpLabel.Text = "HP: " .. math.floor(humanoid.Health)
            end
        end
        if shield then
            if shield.Value ~= lastShield then
                lastShield = shield.Value
                if shieldLabel then
                    -- Update shield label only if the value is greater than 0
                    shieldLabel.Text = "Shield: " .. shield.Value
                    shieldLabel.Visible = shield.Value > 0
                end
            end
        end
    end

    -- Destroy ESP when HP reaches 0
    humanoid.HealthChanged:Connect(function()
        if humanoid.Health <= 0 then
            highlight:Destroy()
            billboardGui:Destroy()
            espFlag:Destroy() -- Remove the ESP flag
        else
            updateLabels()
        end
    end)

    -- Check every 0.5 seconds to update the labels
    while humanoid.Health > 0 do
        updateLabels()
        task.wait(0.5)
    end
end

-- Main loop to scan for targets
game:GetService("RunService").Heartbeat:Connect(function()
    task.wait(5) -- Check every 5 seconds

    -- Folders and their valid model names
    local folders = {
        {folder = workspace.Threats, validNames = {"Frogspawn", "Frog", "Blue Mantis", "Leech", "Hornet", "Agent B6", "Serpent"}},
        {folder = workspace.AIHunter, validNames = {"Commander", "Medic", "Sniper", "Spotter", "Gunner", "Demolitionist", "Specialist", "Ghost", "Firebug", "Operator"}},
        {folder = workspace.Monster, validNames = {"A"}}
    }

    -- Scan each folder
    for _, data in ipairs(folders) do
        local folder = data.folder
        local validNames = data.validNames

        for _, model in ipairs(folder:GetChildren()) do
            if model:IsA("Model") then
                -- Check if the model's name starts with a valid name
                for _, validName in ipairs(validNames) do
                    if model.Name:match("^" .. validName) then
                        addESPToModel(model)
                        break
                    end
                end
            end
        end
    end
end)

    end
)

btns:Button(
    "Remove Foliage",
    function()
        for _, object in pairs(workspace.Map.Ignore.NoCollideTrees:GetChildren()) do
    object:Destroy()
end

for _, object in pairs(workspace.Map.Ignore.Vegetation:GetChildren()) do
    object:Destroy()
end

for _, object in pairs(workspace.Map.Ignore.VegetationThick:GetChildren()) do
    object:Destroy()
end

for _, object in pairs(workspace.Map.Ignore.Debris.CloudsMesh:GetChildren()) do
    object:Destroy()
end
    end
)

btns:Toggle(
    "No Fog",
    false,
    function(nofog)
        print(nofog)
        if nofog then
            -- Start a loop to continuously remove fog
            noFogConnection = game:GetService("RunService").RenderStepped:Connect(function()
                game:GetService("Lighting").Atmosphere.Density = 0
            end)
        else
            -- Stop the loop if toggled off
            if noFogConnection then
                noFogConnection:Disconnect()
                noFogConnection = nil
            end
        end
    end
)

btns:Toggle(
    "Toggle Blur",
    false, -- Starts enabled
    function()
        local lighting = game:GetService("Lighting")
        -- Toggle the opposite of the current Blur.Enabled value
        lighting.Blur.Enabled = not lighting.Blur.Enabled
    end
)

local btns = serv:Channel("Items")

btns:Button(
    "Cell Phone (Item TP)",
    function()
    local function cleanToolName(toolName)
    return toolName:match("^(.-)#?%d*$") -- Removes everything after "#" and numbers
end

-- Create the Cell Phone Tool
local tool = Instance.new("Tool")
tool.Name = "Cell Phone"
tool.RequiresHandle = true

-- Create the tool handle to resemble a cell phone
local handle = Instance.new("Part")
handle.Name = "Handle"
handle.Size = Vector3.new(1.6, 0.2, 0.8) -- Cell phone shape, vertical
handle.BrickColor = BrickColor.new("Black") -- Set color to black for metal look
handle.Anchored = false
handle.CanCollide = false
handle.Parent = tool

-- Add a PointLight and Spotlight to the handle, soft blue light
local pointLight = Instance.new("PointLight")
pointLight.Color = Color3.fromRGB(0, 0, 255) -- Blue light
pointLight.Range = 10
pointLight.Brightness = 0.5
pointLight.Enabled = false -- Initially disabled
pointLight.Parent = handle

local spotlight = Instance.new("SpotLight")
spotlight.Color = Color3.fromRGB(0, 0, 255) -- Blue spotlight
spotlight.Range = 10
spotlight.Brightness = 0.5
spotlight.Angle = 45
spotlight.Enabled = false -- Initially disabled
spotlight.Parent = handle

-- Function to create the GUI
local guiInstance -- Reference to the GUI
local guiCreated = false  -- Track if GUI has been created

local function createGUI()
    -- Avoid creating the GUI more than once
    if guiCreated then
        return
    end
    guiCreated = true

    local player = game:GetService("Players").LocalPlayer
    local playerGui = player:WaitForChild("PlayerGui")  -- Ensure PlayerGui is loaded

    -- Create a new GUI
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "CellPhoneGui"
    screenGui.Parent = playerGui

    -- Cell phone-like scrolling frame for the GUI
    local scrollingFrame = Instance.new("ScrollingFrame")
    scrollingFrame.Size = UDim2.new(0.4, 0, 0.5, 0)
    scrollingFrame.Position = UDim2.new(0.3, 0, 0.3, 0) -- Adjusted to leave space for search bar
    scrollingFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    scrollingFrame.ScrollBarThickness = 8
    scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0) -- Initial canvas size
    scrollingFrame.Parent = screenGui

    -- UIListLayout for button arrangement
    local uiListLayout = Instance.new("UIListLayout")
    uiListLayout.SortOrder = Enum.SortOrder.Name
    uiListLayout.Padding = UDim.new(0, 5) -- Add padding between buttons
    uiListLayout.Parent = scrollingFrame

    -- Create the search bar above the scrolling frame
    local searchBar = Instance.new("TextBox")
    searchBar.Size = UDim2.new(0.4, 0, 0, 30) -- Search bar height is 30
    searchBar.Position = UDim2.new(0.3, 0, 0.25, 0) -- Positioned above the scrolling frame
    searchBar.PlaceholderText = "Search tools..."
    searchBar.Text = ""
    searchBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    searchBar.Parent = screenGui

    -- Filtered tools based on search bar input
    local tools = {}

    -- Collect tools from workspace
    for _, item in ipairs(workspace.Map.Ignore.Tools:GetChildren()) do
        if item:IsA("Model") and item.Name:match("#?%d*$") then
            table.insert(tools, item)
        end
    end

    -- Sort tools alphabetically
    table.sort(tools, function(a, b)
        return cleanToolName(a.Name) < cleanToolName(b.Name)
    end)

    -- Create buttons for each tool
    local function createToolButton(tool)
        local cleanName = cleanToolName(tool.Name)
        local button = Instance.new("TextButton")
        button.Size = UDim2.new(1, 0, 0, 50) -- Button height is 50

        -- Safely check if PrimaryPart exists
        local distance = 0
        if tool.PrimaryPart then
            distance = (tool.PrimaryPart.Position - player.Character.HumanoidRootPart.Position).Magnitude
        else
            warn("Tool '" .. tool.Name .. "' does not have a PrimaryPart.")
        end

        button.Text = string.format("%s (%.0f studs)", cleanName, distance)
        button.Parent = scrollingFrame

        button.MouseButton1Click:Connect(function()
            if tool.PrimaryPart then
                -- Teleport the player to the tool
                player.Character:SetPrimaryPartCFrame(tool.PrimaryPart.CFrame)

                -- Remove the button from the GUI after teleporting
                button:Destroy()

                -- Adjust the canvas size dynamically
                local totalHeight = #scrollingFrame:GetChildren() * 50 + (#scrollingFrame:GetChildren() - 1) * uiListLayout.Padding.Offset
                scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, totalHeight)
            else
                warn("No PrimaryPart found for teleporting to tool '" .. tool.Name .. "'.")
            end
        end)
    end

    -- Create initial buttons for all tools
    for _, tool in ipairs(tools) do
        createToolButton(tool)
    end

    -- Filter the tools based on the search bar input
    searchBar:GetPropertyChangedSignal("Text"):Connect(function()
        local searchText = searchBar.Text:lower()
        for _, button in ipairs(scrollingFrame:GetChildren()) do
            if button:IsA("TextButton") then
                local toolName = button.Text:lower()
                button.Visible = toolName:find(searchText, 1, true) ~= nil
            end
        end
    end)

    -- Adjust the canvas size dynamically based on the total button height
    local totalHeight = #tools * 50 + (#tools - 1) * uiListLayout.Padding.Offset
    scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, totalHeight)
end

tool.Activated:Connect(function()
    -- Turn on the lights when the tool is activated
    pointLight.Enabled = true
    spotlight.Enabled = true

    createGUI()
end)

tool.Unequipped:Connect(function()
    local gui = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("CellPhoneGui")
    if gui then
        gui:Destroy()
    end

    -- Disable lights when the tool is unequipped
    pointLight.Enabled = false
    spotlight.Enabled = false

    -- Reset GUI creation flag
    guiCreated = false
end)

tool.Parent = game:GetService("Players").LocalPlayer:WaitForChild("Backpack")
    end
)


btns:Button(
    "Infinite Inventory",
    function()
        -- Variables
local player = game.Players.LocalPlayer
local backpack = player:FindFirstChild("Backpack")
local character = player.Character or player.CharacterAdded:Wait()
local userInputService = game:GetService("UserInputService")
local pickupInfo = player.PlayerGui.MainGui:WaitForChild("PickupInfo") -- Assuming PickupInfo is under MainGui

-- Function to equip all tools
local function equipAllTools()
    if pickupInfo.Visible then -- Only equip tools if PickupInfo is visible
        if backpack then
            for _, tool in ipairs(backpack:GetChildren()) do
                if tool:IsA("Tool") then
                    tool.Parent = character -- Move the tool to the character to equip it
                end
            end
        end
    else
        print("PickupInfo is not visible, tools will not be equipped.")
    end
end

-- Bind the E key to check PickupInfo visibility and equip tools if visible
userInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end -- Ignore inputs processed by the game (e.g., GUI)
    
    if input.KeyCode == Enum.KeyCode.E then
        equipAllTools()  -- Check visibility and equip tools when E is pressed
    end
end)
    end
)

btns:Button(
    "Giver Item Check",
    function()
   for _, tool in ipairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if tool:IsA("Tool") then
        local harmValue = tool:FindFirstChild("Harm")
        if harmValue then
            if harmValue:IsA("BoolValue") then
                if harmValue.Value then
                    DiscordLib:Notification("Tool Check", "The tool '" .. tool.Name .. "' is harmful!", "Okay!")
                else
                    DiscordLib:Notification("Tool Check", "The tool '" .. tool.Name .. "' is not harmful.", "Okay!")
                end
            elseif harmValue:IsA("NumberValue") then
                if harmValue.Value > 0 then
                    DiscordLib:Notification("Tool Check", "The tool '" .. tool.Name .. "' is harmful!", "Okay!")
                else
                    DiscordLib:Notification("Tool Check", "The tool '" .. tool.Name .. "' is not harmful.", "Okay!")
                end
            end
        else
            DiscordLib:Notification("Tool Check", "The tool '" .. tool.Name .. "' does not have a Harm value.", "Okay!")
        end
    end
end
    end
)

btns:Button(
    "Collect Artifacts",
    function()
-- Step 1: Pre-steps
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(473.332703, 162.319366, -1216.36426, 0.994377613, -0.104985408, 0.0138288457, 0.105166622, 0.994368315, -0.0131014287, -0.0123755075, 0.0144821014, 0.999818563)
task.wait(1)
keypress(0x45)
task.wait()
keyrelease(0x45)
task.wait(0.5)

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1771, -195, -1317)
task.wait(1)

local camera = game:GetService("Workspace").CurrentCamera
local player = game:GetService("Players").LocalPlayer
local revolver = player.Backpack:FindFirstChild("Revolver")

if revolver then
    player.Character:WaitForChild("Humanoid"):EquipTool(revolver)
end

camera.CameraType = Enum.CameraType.Scriptable
local cameraPosition = CFrame.new(-1769, -189, -1312)
local lookAtPosition = CFrame.new(-1769, -189, -1312) * CFrame.new(0, 0, 10)
camera.CFrame = CFrame.new(cameraPosition.Position, lookAtPosition.Position)

local mouse = game:GetService("Players").LocalPlayer:GetMouse()
mouse1click()
task.wait(2)

camera.CameraType = Enum.CameraType.Custom

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1768, -186, -1294)
task.wait(1)
keypress(0x45)
task.wait()
keyrelease(0x45)
task.wait(0.5)

local artifactD = player.Backpack:FindFirstChild("Artifact D")
if artifactD then
    player.Character:WaitForChild("Humanoid"):EquipTool(artifactD)
end

mouse1click()
task.wait(1)

-- Step 2: Artifact C
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-753, 124, -3173)
task.wait(1)
keypress(0x45)
task.wait()
keyrelease(0x45)
task.wait(0.5)

local artifactC = player.Backpack:FindFirstChild("Artifact C")
if artifactC then
    player.Character:WaitForChild("Humanoid"):EquipTool(artifactC)
end

mouse1click()
task.wait(1)

-- Step 3: Artifact A
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1351, -458, -1581)
task.wait(1)
keypress(0x45)
task.wait()
keyrelease(0x45)
task.wait(0.5)

local artifactA = player.Backpack:FindFirstChild("Artifact A")
if artifactA then
    player.Character:WaitForChild("Humanoid"):EquipTool(artifactA)
end

mouse1click()

-- Step 4: Artifact B
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1405, -251, -1854)
task.wait(1)
keypress(0x45)
task.wait()
keyrelease(0x45)
task.wait(0.5)

local artifactB = player.Backpack:FindFirstChild("Artifact B")
if artifactB then
    player.Character:WaitForChild("Humanoid"):EquipTool(artifactB)
end

mouse1click()
    end
)

btns:Button(
    "Grab Fuses",
    function()
      local player = game.Players.LocalPlayer
local mapMain = workspace.Map.Main
local controlBoxSwitch = workspace.Map.Main.ControlBox.Switch.Handle.ClickDetector

-- Function to teleport to each fuse and then to the final destination
local function teleportToFusesAndClick()
    -- Get all the Fuses in workspace.Map.Main
    local fuses = {}
    for _, obj in pairs(mapMain:GetChildren()) do
        if obj.Name == "Fuse" then
            table.insert(fuses, obj)
        end
    end

    -- Teleport to each fuse
    for _, fuse in pairs(fuses) do
        -- Ensure the Fuse is valid and has a position
        if fuse and fuse.PrimaryPart then
            -- Teleport to Fuse
            player.Character:SetPrimaryPartCFrame(fuse.PrimaryPart.CFrame)
            task.wait()  -- Wait for 1 second before moving to the next fuse
        end
    end

    -- After teleporting to all fuses, teleport to the final position
    task.wait(1)
    local finalPosition = CFrame.new(521, 10, -511)
    player.Character:SetPrimaryPartCFrame(finalPosition)

    -- Fire the ClickDetector
    if controlBoxSwitch then
        controlBoxSwitch:Fire()
    end
end

-- Call the function
teleportToFusesAndClick()
    end
)

btns:Button(
    "Get Jack",
    function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1723, 10, 122)
task.wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1652, 22, -2335)
    end
)

local btns = serv:Channel("Endings/Badges")

btns:Button(
    "The Truth",
    function()
      -- Step 1: Pre-steps
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(473.332703, 162.319366, -1216.36426, 0.994377613, -0.104985408, 0.0138288457, 0.105166622, 0.994368315, -0.0131014287, -0.0123755075, 0.0144821014, 0.999818563)
task.wait(1)
keypress(0x45)
task.wait()
keyrelease(0x45)
task.wait(0.5)

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1771, -195, -1317)
task.wait(1)

local camera = game:GetService("Workspace").CurrentCamera
local player = game:GetService("Players").LocalPlayer
local revolver = player.Backpack:FindFirstChild("Revolver")

if revolver then
    player.Character:WaitForChild("Humanoid"):EquipTool(revolver)
end

camera.CameraType = Enum.CameraType.Scriptable
local cameraPosition = CFrame.new(-1769, -189, -1312)
local lookAtPosition = CFrame.new(-1769, -189, -1312) * CFrame.new(0, 0, 10)
camera.CFrame = CFrame.new(cameraPosition.Position, lookAtPosition.Position)

local mouse = game:GetService("Players").LocalPlayer:GetMouse()
mouse1click()
task.wait(2)

camera.CameraType = Enum.CameraType.Custom

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1768, -186, -1294)
task.wait(1)
keypress(0x45)
task.wait()
keyrelease(0x45)
task.wait(0.5)

local artifactD = player.Backpack:FindFirstChild("Artifact D")
if artifactD then
    player.Character:WaitForChild("Humanoid"):EquipTool(artifactD)
end

mouse1click()
task.wait(1)

-- Step 2: Artifact C
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-753, 124, -3173)
task.wait(1)
keypress(0x45)
task.wait()
keyrelease(0x45)
task.wait(0.5)

local artifactC = player.Backpack:FindFirstChild("Artifact C")
if artifactC then
    player.Character:WaitForChild("Humanoid"):EquipTool(artifactC)
end

mouse1click()
task.wait(1)

-- Step 3: Artifact A
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1351, -458, -1581)
task.wait(1)
keypress(0x45)
task.wait()
keyrelease(0x45)
task.wait(0.5)

local artifactA = player.Backpack:FindFirstChild("Artifact A")
if artifactA then
    player.Character:WaitForChild("Humanoid"):EquipTool(artifactA)
end

mouse1click()

-- Step 4: Artifact B
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1405, -251, -1854)
task.wait(1)
keypress(0x45)
task.wait()
keyrelease(0x45)
task.wait(0.5)

local artifactB = player.Backpack:FindFirstChild("Artifact B")
if artifactB then
    player.Character:WaitForChild("Humanoid"):EquipTool(artifactB)
end

mouse1click()
task.wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2565, -832, -470)
    end
)

local btns = serv:Channel("Miscellaneous")


btns:Button(
    "Infinite Yield",
    function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
    end
)

btns:Button(
    "Anti AFK",
    function()       

-- Create the platform at the specified position
do
    local part = Instance.new("Part")
    part.Size = Vector3.new(20, 1, 20)
    part.Position = Vector3.new(-594, -355, -1255)
    part.Anchored = true
    part.Parent = workspace
end

-- Variable to store the last input time
local lastInputTime = os.time()

-- Function to detect inactivity and teleport the player
game:GetService("RunService").Heartbeat:Connect(function()
    if os.time() - lastInputTime >= 300 then
        while os.time() - lastInputTime >= 300 do
            local character = game.Players.LocalPlayer.Character
            if character then
                local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
                if humanoidRootPart then
                    humanoidRootPart.CFrame = CFrame.new(-594, -350, -1255)
                   task.wait()
                   keypress(0x45)
                   task.wait()
                   keyrelease(0x45)
                   task.wait()
                end
            end
            task.wait(5)
        end
    end
end)

-- Detect input to update lastInputTime
game:GetService("UserInputService").InputBegan:Connect(function()
    lastInputTime = os.time()
end)

game:GetService("UserInputService").InputEnded:Connect(function()
    lastInputTime = os.time()
end)

    end
)

local tgls = serv:Channel("Toggles")

tgls:Toggle(
    "Auto-Farm",
    false,
    function(bool)
        print(bool)
    end
)

local sldrs = serv:Channel("Sliders")

local sldr =
    sldrs:Slider(
    "Slide me!",
    0,
    1000,
    400,
    function(t)
        print(t)
    end
)

sldrs:Button(
    "Change to 50",
    function()
        sldr:Change(50)
    end
)

local drops = serv:Channel("Teleports")

local drop =
    drops:Dropdown(
    "Pick me!",
    {
        "Giver",
        "Lab Defense",
        "Lair Upgrader",
        "Impact Zone",
        "Generators",
        "Fisherman Hut",
        "Warehouse",
        "Lab",
        "Observatory",
        "Docks",
        "Radio Tower",
        "Watchtower",
        "Bungalows",
        "Enchanted Woods",
        "Military Camp",
        "Mirror Dimension",
        "Stone Ruins",
        "Villa Front",
        "Greenhouse",
        "Grand Lake",
        "Bunker",
        "Sewers",
        "Lighthouse",
        "Hangar"
    },
    function(selectedOption)
        -- Save the selected option to a variable
        selectedLocation = selectedOption
    end
)

-- Full teleport locations list
local teleportLocations = {
    Giver = CFrame.new(-773, -32, 289),
    ["Lab Defense"] = CFrame.new(-1864, -193, -1412),
    ["Lair Upgrader"] = CFrame.new(-1684, -17, -529),
    ["Impact Zone"] = CFrame.new(-314, 30, 822),
    Generators = CFrame.new(517, -6, -514),
    ["Fisherman Hut"] = CFrame.new(-406, 0, -150),
    Warehouse = CFrame.new(-878, 59, -535),
    Lab = CFrame.new(-1778, -195, -1422),
    Observatory = CFrame.new(477, 165, -1200),
    Docks = CFrame.new(-2035, 3, -1570),
    ["Radio Tower"] = CFrame.new(-1044, 506, -1419),
    Watchtower = CFrame.new(-665, 139, -295),
    Bungalows = CFrame.new(-274, -6, -2463),
    ["Enchanted Woods"] = CFrame.new(-1061, 159, -1998),
    ["Military Camp"] = CFrame.new(-1061, 266, -1822),
    ["Mirror Dimension"] = CFrame.new(-45856, -10138, -26255),
    ["Stone Ruins"] = CFrame.new(-781, 313, -2702),
    ["Villa Front"] = CFrame.new(137, 2, 336),
    Greenhouse = CFrame.new(-1347, 305, -1215),
    ["Grand Lake"] = CFrame.new(-421, 523, -503),
    Bunker = CFrame.new(-1511, 212, -1495),
    Sewers = CFrame.new(-766, 102, -1615),
    Lighthouse = CFrame.new(-1546, 240, -204),
    Hangar = CFrame.new(-1627, 22, -2331)
}

-- Teleport Button
drops:Button(
    "Teleport",
    function()
        -- Check if the selected location is valid and teleport
        if selectedLocation then
            local teleportCFrame = teleportLocations[selectedLocation]
            if teleportCFrame then
                -- Teleport to the selected location
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = teleportCFrame
            else
                print("Selected location is invalid.")
            end
        else
            print("No location selected.")
        end
    end
)

-- Random TP Button
drops:Button(
    "Random TP",
    function()
        -- Teleport to a random location
        local randomLocation = CFrame.new(-2736.43994, -836.749634, -526.927246, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = randomLocation
    end
)


local clrs = serv:Channel("Colorpickers")

clrs:Colorpicker(
    "ESP Color",
    Color3.fromRGB(255, 1, 1),
    function(t)
        print(t)
    end
)

local textbs = serv:Channel("Textboxes")

textbs:Textbox(
    "Gun power",
    "Type here!",
    true,
    function(t)
        print(t)
    end
)

local lbls = serv:Channel("Labels")

lbls:Label("This is just a label.")

local bnds = serv:Channel("Binds")

bnds:Bind(
    "Kill bind",
    Enum.KeyCode.RightShift,
    function()
        print("Killed everyone!")
    end
)
