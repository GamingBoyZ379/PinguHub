-- Gui to Lua
-- Version: 3.2

-- Instances:

local PinguHub_TixFactoryTycoon = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local HubName = Instance.new("TextLabel")
local OpenPlayer = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local OpenAutofarms = Instance.new("TextButton")
local UniversalFrame = Instance.new("Frame")
local InfiniteYield = Instance.new("TextButton")
local InstantPP = Instance.new("TextButton")
local CloseMenu = Instance.new("TextButton")
local PlayerFrame = Instance.new("Frame")
local FakeResearch = Instance.new("TextButton")
local WorldFrame = Instance.new("Frame")
local DeleteHazards = Instance.new("TextButton")
local TPTix = Instance.new("TextButton")
local HideMenu = Instance.new("TextButton")
local OpenUniversal = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local OpenWorld = Instance.new("TextButton")
local Autofarms = Instance.new("Frame")
local AutoFactory = Instance.new("TextButton")
local TreeFarm = Instance.new("TextButton")
local AutoWarehouse = Instance.new("TextButton")
local AutoPacket = Instance.new("TextButton")
local AutoRebirth = Instance.new("TextButton")

--Properties:

PinguHub_TixFactoryTycoon.Name = "PinguHub_TixFactoryTycoon"
PinguHub_TixFactoryTycoon.Parent = game:GetService("CoreGui")
PinguHub_TixFactoryTycoon.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = PinguHub_TixFactoryTycoon
MainFrame.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
MainFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
MainFrame.Position = UDim2.new(0.408054948, 0, 0.349495202, 0)
MainFrame.Size = UDim2.new(0, 400, 0, 200)

HubName.Name = "HubName"
HubName.Parent = MainFrame
HubName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HubName.BorderColor3 = Color3.fromRGB(27, 42, 53)
HubName.Size = UDim2.new(0, 400, 0, 22)
HubName.Font = Enum.Font.Unknown
HubName.Text = "PinguHub TFT"
HubName.TextColor3 = Color3.fromRGB(0, 0, 0)
HubName.TextScaled = true
HubName.TextSize = 14.000
HubName.TextWrapped = true

OpenPlayer.Name = "OpenPlayer"
OpenPlayer.Parent = MainFrame
OpenPlayer.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
OpenPlayer.BorderColor3 = Color3.fromRGB(27, 42, 53)
OpenPlayer.Position = UDim2.new(0, 0, 0.108300932, 0)
OpenPlayer.Size = UDim2.new(0, 160, 0, 40)
OpenPlayer.Font = Enum.Font.SourceSansBold
OpenPlayer.Text = "Player"
OpenPlayer.TextColor3 = Color3.fromRGB(255, 255, 255)
OpenPlayer.TextScaled = true
OpenPlayer.TextSize = 14.000
OpenPlayer.TextWrapped = true

UICorner.Parent = MainFrame

OpenAutofarms.Name = "OpenAutofarms"
OpenAutofarms.Parent = MainFrame
OpenAutofarms.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
OpenAutofarms.BorderColor3 = Color3.fromRGB(27, 42, 53)
OpenAutofarms.Position = UDim2.new(0.400000006, 0, 0.108300932, 0)
OpenAutofarms.Size = UDim2.new(0, 79, 0, 40)
OpenAutofarms.Font = Enum.Font.SourceSansBold
OpenAutofarms.Text = "Autofarms"
OpenAutofarms.TextColor3 = Color3.fromRGB(255, 255, 255)
OpenAutofarms.TextScaled = true
OpenAutofarms.TextSize = 14.000
OpenAutofarms.TextWrapped = true

UniversalFrame.Name = "UniversalFrame"
UniversalFrame.Parent = MainFrame
UniversalFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
UniversalFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
UniversalFrame.Position = UDim2.new(0, 0, 0.300000012, 0)
UniversalFrame.Size = UDim2.new(0, 400, 0, 140)
UniversalFrame.Visible = false

InfiniteYield.Name = "InfiniteYield"
InfiniteYield.Parent = UniversalFrame
InfiniteYield.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InfiniteYield.BorderColor3 = Color3.fromRGB(27, 42, 53)
InfiniteYield.Position = UDim2.new(0.597500145, 0, 0.00714285718, 0)
InfiniteYield.Size = UDim2.new(0, 160, 0, 30)
InfiniteYield.Font = Enum.Font.SourceSans
InfiniteYield.Text = "Infinite Yield"
InfiniteYield.TextColor3 = Color3.fromRGB(0, 0, 0)
InfiniteYield.TextScaled = true
InfiniteYield.TextSize = 14.000
InfiniteYield.TextWrapped = true

InstantPP.Name = "InstantPP"
InstantPP.Parent = UniversalFrame
InstantPP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InstantPP.BorderColor3 = Color3.fromRGB(27, 42, 53)
InstantPP.Position = UDim2.new(0, 0, 0.0118584773, 0)
InstantPP.Size = UDim2.new(0, 160, 0, 30)
InstantPP.Font = Enum.Font.SourceSans
InstantPP.Text = "Instant Proximity Prompt"
InstantPP.TextColor3 = Color3.fromRGB(0, 0, 0)
InstantPP.TextScaled = true
InstantPP.TextSize = 14.000
InstantPP.TextWrapped = true

CloseMenu.Name = "CloseMenu"
CloseMenu.Parent = MainFrame
CloseMenu.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
CloseMenu.BorderColor3 = Color3.fromRGB(27, 42, 53)
CloseMenu.Position = UDim2.new(0.930000007, 0, 0, 0)
CloseMenu.Size = UDim2.new(0, 28, 0, 21)
CloseMenu.Font = Enum.Font.SourceSansBold
CloseMenu.Text = "X"
CloseMenu.TextColor3 = Color3.fromRGB(0, 0, 0)
CloseMenu.TextSize = 20.000

PlayerFrame.Name = "PlayerFrame"
PlayerFrame.Parent = MainFrame
PlayerFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
PlayerFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
PlayerFrame.Position = UDim2.new(0, 0, 0.300000012, 0)
PlayerFrame.Size = UDim2.new(0, 400, 0, 140)
PlayerFrame.Visible = false

FakeResearch.Name = "FakeResearch"
FakeResearch.Parent = PlayerFrame
FakeResearch.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FakeResearch.BorderColor3 = Color3.fromRGB(27, 42, 53)
FakeResearch.Position = UDim2.new(0, 0, 0.00714284182, 0)
FakeResearch.Size = UDim2.new(0, 200, 0, 50)
FakeResearch.Font = Enum.Font.SourceSans
FakeResearch.Text = "Fake Research"
FakeResearch.TextColor3 = Color3.fromRGB(0, 0, 0)
FakeResearch.TextScaled = true
FakeResearch.TextSize = 14.000
FakeResearch.TextWrapped = true

WorldFrame.Name = "WorldFrame"
WorldFrame.Parent = MainFrame
WorldFrame.Active = true
WorldFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
WorldFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
WorldFrame.Position = UDim2.new(0, 0, 0.300000012, 0)
WorldFrame.Size = UDim2.new(0, 400, 0, 140)
WorldFrame.Visible = false

DeleteHazards.Name = "DeleteHazards"
DeleteHazards.Parent = WorldFrame
DeleteHazards.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DeleteHazards.BorderColor3 = Color3.fromRGB(27, 42, 53)
DeleteHazards.Position = UDim2.new(0, 0, 0.0118584773, 0)
DeleteHazards.Size = UDim2.new(0, 200, 0, 40)
DeleteHazards.Font = Enum.Font.SourceSans
DeleteHazards.Text = "Delete Hazards"
DeleteHazards.TextColor3 = Color3.fromRGB(0, 0, 0)
DeleteHazards.TextScaled = true
DeleteHazards.TextSize = 14.000
DeleteHazards.TextWrapped = true

TPTix.Name = "TPTix"
TPTix.Parent = WorldFrame
TPTix.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TPTix.BorderColor3 = Color3.fromRGB(27, 42, 53)
TPTix.Position = UDim2.new(0.500000179, 0, 0.0118584773, 0)
TPTix.Size = UDim2.new(0, 200, 0, 40)
TPTix.Font = Enum.Font.SourceSans
TPTix.Text = "TP Tix"
TPTix.TextColor3 = Color3.fromRGB(0, 0, 0)
TPTix.TextScaled = true
TPTix.TextSize = 14.000
TPTix.TextWrapped = true

HideMenu.Name = "HideMenu"
HideMenu.Parent = MainFrame
HideMenu.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
HideMenu.BorderColor3 = Color3.fromRGB(27, 42, 53)
HideMenu.Size = UDim2.new(0, 28, 0, 21)
HideMenu.Visible = false
HideMenu.Font = Enum.Font.SourceSansBold
HideMenu.Text = "X"
HideMenu.TextColor3 = Color3.fromRGB(0, 0, 0)
HideMenu.TextSize = 14.000

OpenUniversal.Name = "OpenUniversal"
OpenUniversal.Parent = MainFrame
OpenUniversal.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
OpenUniversal.BorderColor3 = Color3.fromRGB(255, 255, 255)
OpenUniversal.Position = UDim2.new(0.790000021, 3, 0, 0)
OpenUniversal.Size = UDim2.new(0, 50, 0, 20)
OpenUniversal.Font = Enum.Font.SourceSansBold
OpenUniversal.Text = "Other Stuff"
OpenUniversal.TextColor3 = Color3.fromRGB(0, 0, 0)
OpenUniversal.TextSize = 10.000
OpenUniversal.TextWrapped = true

UICorner_2.Parent = OpenUniversal

OpenWorld.Name = "OpenWorld"
OpenWorld.Parent = MainFrame
OpenWorld.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
OpenWorld.BorderColor3 = Color3.fromRGB(27, 42, 53)
OpenWorld.Position = UDim2.new(0.597500026, 0, 0.108300932, 0)
OpenWorld.Size = UDim2.new(0, 160, 0, 40)
OpenWorld.Font = Enum.Font.SourceSansBold
OpenWorld.Text = "World"
OpenWorld.TextColor3 = Color3.fromRGB(255, 255, 255)
OpenWorld.TextScaled = true
OpenWorld.TextSize = 14.000
OpenWorld.TextWrapped = true

Autofarms.Name = "Autofarms"
Autofarms.Parent = MainFrame
Autofarms.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Autofarms.BorderColor3 = Color3.fromRGB(27, 42, 53)
Autofarms.Position = UDim2.new(0, 0, 0.300000012, 0)
Autofarms.Size = UDim2.new(0, 400, 0, 140)
Autofarms.Visible = false

AutoFactory.Name = "AutoFactory"
AutoFactory.Parent = Autofarms
AutoFactory.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AutoFactory.BorderColor3 = Color3.fromRGB(27, 42, 53)
AutoFactory.Position = UDim2.new(0, 0, 0.00714285718, 0)
AutoFactory.Size = UDim2.new(0, 200, 0, 40)
AutoFactory.Font = Enum.Font.SourceSans
AutoFactory.Text = "Auto Factory"
AutoFactory.TextColor3 = Color3.fromRGB(0, 0, 0)
AutoFactory.TextScaled = true
AutoFactory.TextSize = 14.000
AutoFactory.TextWrapped = true

TreeFarm.Name = "TreeFarm"
TreeFarm.Parent = Autofarms
TreeFarm.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TreeFarm.BorderColor3 = Color3.fromRGB(27, 42, 53)
TreeFarm.Position = UDim2.new(0, 0, 0.364285707, 0)
TreeFarm.Size = UDim2.new(0, 200, 0, 40)
TreeFarm.Font = Enum.Font.SourceSans
TreeFarm.Text = "Tree Clicker"
TreeFarm.TextColor3 = Color3.fromRGB(0, 0, 0)
TreeFarm.TextScaled = true
TreeFarm.TextSize = 14.000
TreeFarm.TextWrapped = true

AutoWarehouse.Name = "AutoWarehouse"
AutoWarehouse.Parent = Autofarms
AutoWarehouse.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AutoWarehouse.BorderColor3 = Color3.fromRGB(27, 42, 53)
AutoWarehouse.Position = UDim2.new(0.499999553, 0, 0.00714285718, 0)
AutoWarehouse.Size = UDim2.new(0, 200, 0, 40)
AutoWarehouse.Font = Enum.Font.SourceSans
AutoWarehouse.Text = "Auto Warehouse"
AutoWarehouse.TextColor3 = Color3.fromRGB(0, 0, 0)
AutoWarehouse.TextScaled = true
AutoWarehouse.TextSize = 14.000
AutoWarehouse.TextWrapped = true

AutoPacket.Name = "AutoPacket"
AutoPacket.Parent = Autofarms
AutoPacket.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AutoPacket.BorderColor3 = Color3.fromRGB(27, 42, 53)
AutoPacket.Position = UDim2.new(0.499999553, 0, 0.364285707, 0)
AutoPacket.Size = UDim2.new(0, 200, 0, 40)
AutoPacket.Font = Enum.Font.SourceSans
AutoPacket.Text = "Auto Packets"
AutoPacket.TextColor3 = Color3.fromRGB(0, 0, 0)
AutoPacket.TextScaled = true
AutoPacket.TextSize = 14.000
AutoPacket.TextWrapped = true

AutoRebirth.Name = "AutoRebirth"
AutoRebirth.Parent = Autofarms
AutoRebirth.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AutoRebirth.BorderColor3 = Color3.fromRGB(27, 42, 53)
AutoRebirth.Position = UDim2.new(0.252499849, 0, 0.714285493, 0)
AutoRebirth.Size = UDim2.new(0, 199, 0, 40)
AutoRebirth.Font = Enum.Font.SourceSans
AutoRebirth.Text = "Auto Rebirth"
AutoRebirth.TextColor3 = Color3.fromRGB(0, 0, 0)
AutoRebirth.TextScaled = true
AutoRebirth.TextSize = 14.000
AutoRebirth.TextWrapped = true

-- Scripts:

FakeResearch.MouseButton1Down:connect(function()
	-- Get the local player
	local player = game:GetService("Players").LocalPlayer

	-- Function to set all IntValues to 10 and BoolValues to true
	local function setValues(folder)
		if not folder then return end

		for _, child in pairs(folder:GetDescendants()) do
			if child:IsA("IntValue") then
				child.Value = 10
			elseif child:IsA("BoolValue") then
				child.Value = true
			end
		end
	end

	-- Get the Research folder
	local researchFolder = player:FindFirstChild("TixFactoryBoardNew") and player.TixFactoryBoardNew:FindFirstChild("Research")

	-- Set values in the Research folder
	setValues(researchFolder)

end)

AutoPacket.MouseButton1Down:connect(function()
-- Get the local player
local player = game.Players.LocalPlayer

-- Function to fire TouchInterests and make specific parts transparent
local function checkOwnerAndFireTouchInterests()
    local factoriesFolder = workspace:FindFirstChild("Fros Studio's Tycoon Kit") and workspace["Fros Studio's Tycoon Kit"]:FindFirstChild("Factories")
    local warehousesFolder = workspace:FindFirstChild("Fros Studio's Tycoon Kit") and workspace["Fros Studio's Tycoon Kit"]:FindFirstChild("Warehouses")
    if not factoriesFolder or not warehousesFolder then return end

    local playerName = player.Name

    -- Loop through all factories
    for _, factory in pairs(factoriesFolder:GetChildren()) do
        -- Check the Owner value
        local ownerValue = factory:FindFirstChild("Owner")
        if ownerValue and ownerValue:IsA("ObjectValue") and ownerValue.Value and ownerValue.Value.Name == playerName then
            -- Fire TouchInterest on the "PacketCreate1" part
            local packetCreate = factory:FindFirstChild("PurchasedObjects")
                and factory.PurchasedObjects:FindFirstChild("ScannerPacketo")
                and factory.PurchasedObjects.ScannerPacketo:FindFirstChild("PacketCreate1")
            if packetCreate and packetCreate:IsA("Part") then
                local characterPrimaryPart = player.Character and player.Character.PrimaryPart
                if characterPrimaryPart then
                    -- Fire touch events on "PacketCreate1"
                    firetouchinterest(packetCreate, characterPrimaryPart, 0)
                    firetouchinterest(packetCreate, characterPrimaryPart, 1)

                    -- Make "PacketCreate1" transparent
                    packetCreate.Transparency = 1
                    packetCreate.CanCollide = false
                end
            end
            
            -- Fire TouchInterest on "PacketCreate2" for TixFactory#4
            local tixFactory = workspace:FindFirstChild("Fros Studio's Tycoon Kit") 
                and workspace["Fros Studio's Tycoon Kit"].Factories:FindFirstChild("TixFactory#4")
            local packetCreate2 = tixFactory
                and tixFactory:FindFirstChild("PurchasedObjects")
                and tixFactory.PurchasedObjects:FindFirstChild("ScannerPacketo")
                and tixFactory.PurchasedObjects.ScannerPacketo:FindFirstChild("PacketCreate2")
            if packetCreate2 and packetCreate2:IsA("Part") then
                local characterPrimaryPart = player.Character and player.Character.PrimaryPart
                if characterPrimaryPart then
                    -- Fire touch events on "PacketCreate2"
                    firetouchinterest(packetCreate2, characterPrimaryPart, 0)
                    firetouchinterest(packetCreate2, characterPrimaryPart, 1)

                    -- Make "PacketCreate2" transparent
                    packetCreate2.Transparency = 1
                    packetCreate2.CanCollide = false
                end
            end
        end
    end

    task.wait(1)
    -- Loop through all warehouses
    for _, warehouse in pairs(warehousesFolder:GetChildren()) do
        -- Check the Owner value
        local ownerValue = warehouse:FindFirstChild("Owner")
        if ownerValue and ownerValue:IsA("ObjectValue") and ownerValue.Value and ownerValue.Value.Name == playerName then
            -- Fire TouchInterest on the "Poort" part
            local poort = warehouse:FindFirstChild("PurchasedObjects")
                and warehouse.PurchasedObjects:FindFirstChild("GAD01")
                and warehouse.PurchasedObjects.GAD01:FindFirstChild("Poort")
            if poort and poort:IsA("Part") then
                local characterPrimaryPart = player.Character and player.Character.PrimaryPart
                if characterPrimaryPart then
                    -- Fire touch events on "Poort"
                    firetouchinterest(poort, characterPrimaryPart, 0)
                    firetouchinterest(poort, characterPrimaryPart, 1)

                    -- Make "Poort" transparent
                    poort.Transparency = 1
                    poort.CanCollide = false
                end
            end
        end
    end
end

-- Run the function in a loop every second
while true do
    checkOwnerAndFireTouchInterests()
    task.wait(1)  -- Loop every second
end
	
end)

AutoFactory.MouseButton1Down:connect(function()
	-- Get the local player
	local player = game.Players.LocalPlayer

	-- Function to fire TouchInterests
	local function checkOwnerAndFireTouchInterests()
		local factoriesFolder = workspace:FindFirstChild("Fros Studio's Tycoon Kit") and workspace["Fros Studio's Tycoon Kit"].Factories
		if not factoriesFolder then return end

		local playerName = player.Name

		for i = 1, 4 do
			local factoryName = "TixFactory#" .. i
			local factory = factoriesFolder:FindFirstChild(factoryName)

			if factory then
				-- Check Owner value
				local ownerValue = factory:FindFirstChild("Owner")
				if ownerValue and ownerValue:IsA("ObjectValue") then
					local ownerName = ownerValue.Value and ownerValue.Value.Name
					if ownerName == playerName then
						-- Fire all touch interests in Buttons
						local buttonsFolder = factory:FindFirstChild("Buttons")
						if buttonsFolder then
							for _, button in pairs(buttonsFolder:GetDescendants()) do
								if button:IsA("TouchTransmitter") and button.Name == "TouchInterest" then
									-- Simulate a touch event
									local part = button.Parent
									local characterPrimaryPart = player.Character and player.Character.PrimaryPart
									if characterPrimaryPart and part then
										firetouchinterest(part, characterPrimaryPart, 0)
										firetouchinterest(part, characterPrimaryPart, 1)
									end
								end
							end
						end
					end
				end
			end
		end
	end

	-- Run the function
	while true do
		checkOwnerAndFireTouchInterests()
		task.wait()  -- Adjust the wait time as needed
	end

end)

AutoWarehouse.MouseButton1Down:connect(function()
	-- Get the local player
	local player = game.Players.LocalPlayer

	-- Function to fire TouchInterests in Warehouses
	local function checkOwnerAndFireTouchInterestsInWarehouses()
		local warehousesFolder = workspace:FindFirstChild("Fros Studio's Tycoon Kit") and workspace["Fros Studio's Tycoon Kit"]:FindFirstChild("Warehouses")
		if not warehousesFolder then return end

		local playerName = player.Name

		for _, warehouse in pairs(warehousesFolder:GetChildren()) do
			-- Check the Owner value
			local ownerValue = warehouse:FindFirstChild("Owner")
			if ownerValue and ownerValue:IsA("ObjectValue") and ownerValue.Value and ownerValue.Value.Name == playerName then
				-- Fire all TouchInterests in Buttons (if any)
				local buttonsFolder = warehouse:FindFirstChild("Buttons")
				if buttonsFolder then
					for _, button in pairs(buttonsFolder:GetDescendants()) do
						if button:IsA("TouchTransmitter") and button.Name == "TouchInterest" then
							-- Simulate a touch event
							local part = button.Parent
							local characterPrimaryPart = player.Character and player.Character.PrimaryPart
							if characterPrimaryPart and part then
								firetouchinterest(part, characterPrimaryPart, 0)
								firetouchinterest(part, characterPrimaryPart, 1)
							end
						end
					end
				end
			end
		end
	end

	-- Run the function in a loop
	while true do
		checkOwnerAndFireTouchInterestsInWarehouses()
		task.wait()  -- Adjust the wait time as needed
	end

end)

AutoRebirth.MouseButton1Down:connect(function()
	local RemoteFunctions = game.ReplicatedStorage:WaitForChild("FS_TycoonKit_Events"):WaitForChild("RemoteFunctions")
	local Player = game.Players.LocalPlayer
	local Reborn = Player.TixFactoryBoardNew.Currencies.Reborn
	local Parent = script.Parent

	-- Function to attempt rebirthing
	local function attemptRebirth()
		local result = RemoteFunctions.Reborn:InvokeServer("Factories")
		if result ~= "Success" then
			-- Handle failed rebirth if necessary
		end
	end

	-- Loop to keep attempting rebirth
	while true do
		attemptRebirth()
		wait(5) -- Wait before retrying
	end

end)

TreeFarm.MouseButton1Down:connect(function()
	-- Get the local player
	local player = game.Players.LocalPlayer

	-- Function to fire ClickDetectors with retry logic
	local function fireClickDetectorSafely(clickDetector)
		local attempts = 0
		local maxAttempts = 5  -- Number of retry attempts
		while attempts < maxAttempts do
			if clickDetector and clickDetector.Parent then
				-- Fire ClickDetector if it exists
				fireclickdetector(clickDetector)
				return
			end
			attempts = attempts + 1
			task.wait()  -- Wait before retrying
		end
	end

	-- Function to fire TouchInterests and ClickDetectors
	local function TreeFarm()
		local factoriesFolder = workspace["Fros Studio's Tycoon Kit"].Factories
		local playerName = player.Name

		for i = 1, 4 do
			local factoryName = "TixFactory#" .. i
			local factory = factoriesFolder:FindFirstChild(factoryName)

			if factory then
				-- Check Owner value
				local ownerValue = factory:FindFirstChild("Owner")
				if ownerValue and ownerValue:IsA("ObjectValue") then
					local ownerName = ownerValue.Value and ownerValue.Value.Name
					if ownerName == playerName then
						-- Fire ClickDetector with retry logic
						local clickDetector = factory:FindFirstChild("PurchasedObjects")
							and factory.PurchasedObjects:FindFirstChild("Click01")
							and factory.PurchasedObjects.Click01:FindFirstChild("Button")
							and factory.PurchasedObjects.Click01.Button:FindFirstChild("ClickDetector")
						if clickDetector then
							fireClickDetectorSafely(clickDetector)
						end
					end
				end
			end
		end
	end

	-- Run the function
	while true do
		TreeFarm()
		task.wait()  -- Adjust the wait time as needed
	end

end)

DeleteHazards.MouseButton1Down:connect(function()
-- Function to delete all objects in the specified folder
local function deleteAllObjects(folder)
    if not folder then return end

    for _, obj in pairs(folder:GetDescendants()) do
        obj:Destroy()
    end
end

-- Function to delete all children in the specified folder
local function deleteAllChildren(folder)
    if not folder then return end

    for _, child in pairs(folder:GetChildren()) do
        child:Destroy()
    end
end

-- Function to delete all objects in workspace containing "OwnerDoor" in their name
local function deleteOwnerDoorObjects()
    for _, obj in pairs(workspace:GetDescendants()) do
        if obj.Name:find("OwnerDoor") then
            obj:Destroy()
        end
    end
end

-- Function to delete all objects named "R7_Door"
local function deleteR7DoorObjects()
    for _, obj in pairs(workspace:GetDescendants()) do
        if obj.Name == "R7_Door" then
            obj:Destroy()
        end
    end
end

-- Specify the folder to clear parts in GifIn
local gifInFolder = workspace:FindFirstChild("Camera")
                        and workspace.Camera:FindFirstChild("Lokaal")
                        and workspace.Camera.Lokaal:FindFirstChild("Effecten")
                        and workspace.Camera.Lokaal.Effecten:FindFirstChild("GifIn")

-- Specify the folder to clear children in ZiekIn
local ziekInFolder = workspace:FindFirstChild("Camera")
                        and workspace.Camera:FindFirstChild("Lokaal")
                        and workspace.Camera.Lokaal:FindFirstChild("Effecten")
                        and workspace.Camera.Lokaal.Effecten:FindFirstChild("ZiekIn")

-- Specify the Lava folder to clear
local lavaFolder = workspace:FindFirstChild("Game") and workspace.Game:FindFirstChild("Lava")

-- Specify the Guis folder to clear
local guisFolder = workspace:FindFirstChild("Game") and workspace.Game:FindFirstChild("Guis")

-- Specify the GameSlotje folder to clear
local gameSlotjeFolder = workspace:FindFirstChild("GameSlotje")

-- Call the functions to delete all parts and children
deleteAllObjects(gifInFolder)

if lavaFolder then
    deleteAllChildren(lavaFolder)
else
    warn("workspace.Game.Lava folder not found.")
end

-- Delete all children in ZiekIn folder
deleteAllChildren(ziekInFolder)

-- Delete all children in Guis folder
if guisFolder then
    deleteAllChildren(guisFolder)
else
    warn("workspace.Game.Guis folder not found.")
end

-- Delete all children in GameSlotje folder
if gameSlotjeFolder then
    deleteAllChildren(gameSlotjeFolder)
else
    warn("workspace.GameSlotje folder not found.")
end

-- Delete all objects containing "OwnerDoor" anywhere in their name
deleteOwnerDoorObjects()

-- Delete all objects named "R7_Door"
deleteR7DoorObjects()

end)

TPTix.MouseButton1Down:connect(function()
	-- Function to fire all TouchInterests and optionally disable collisions
local function processTouchInterests(folder)
	if not folder then return end

	for _, obj in pairs(folder:GetDescendants()) do
		if obj:IsA("Part") then
			local touchInterest = obj:FindFirstChild("TouchInterest")
			if touchInterest then
				-- Fire the TouchInterest twice to simulate a touch event
				local characterPrimaryPart = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character.PrimaryPart
				if characterPrimaryPart then
					firetouchinterest(obj, characterPrimaryPart, 0)
					firetouchinterest(obj, characterPrimaryPart, 1)
				end

				-- Disable collision for the part
				obj.CanCollide = false
			end
		end
	end
end

-- Process specified folders
local function processFolders()
	local gameFolder = workspace:FindFirstChild("Game")
	if not gameFolder then return end

	local eventsFolder = gameFolder:FindFirstChild("Events")
	local oresFolder = gameFolder:FindFirstChild("Ores")
	local lavaTixFolder = oresFolder and oresFolder:FindFirstChild("LavaTix")
	local forgotPieceFolder = oresFolder and oresFolder:FindFirstChild("Forgot_Piece")
	local uraniumTixFolder = oresFolder and oresFolder:FindFirstChild("UraniumTix")
	local goldPieceFolder = oresFolder and oresFolder:FindFirstChild("Gold_Piece")
                local rainbow6Folder = eventsFolder and eventsFolder:FindFirstChild("Default") and eventsFolder.Default:FindFirstChild("Rainbow6") and eventsFolder.Default.Rainbow6:FindFirstChild("Reward")

	processTouchInterests(eventsFolder)
	processTouchInterests(lavaTixFolder)
	processTouchInterests(forgotPieceFolder)
	processTouchInterests(uraniumTixFolder)
	processTouchInterests(goldPieceFolder)
	processTouchInterests(rainbow6Folder)
end

-- Initial call to process existing TouchInterests
processFolders()

-- Continuously check and process TouchInterests every 10 seconds
while true do
	task.wait()  -- Adjust the wait time as needed
	processFolders()
end

	end)

InfiniteYield.MouseButton1Down:connect(function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

InstantPP.MouseButton1Down:connect(function()
	-- Function to set HoldDuration property of ProximityPrompt to 0
	local function setHoldDurationToZero()
		for _, object in pairs(workspace:GetDescendants()) do
			if object:IsA("ProximityPrompt") then
				task.defer(function()
					object.HoldDuration = 0
				end)
			end
		end
	end

	-- Initial run
	setHoldDurationToZero()

	-- Re-run every 10 seconds
	while true do
		task.wait(10)
		setHoldDurationToZero()
	end
end)

-- Button Scripts:

local function AFOWIJW_fake_script() -- OpenPlayer.OpenScript 
	local script = Instance.new('LocalScript', OpenPlayer)

	script.Parent.MouseButton1Click:connect(function()
		script.Parent.Parent.HideMenu.Visible = true
		script.Parent.Parent.PlayerFrame.Visible = true
		script.Parent.Parent.WorldFrame.Visible = false
		script.Parent.Parent.UniversalFrame.Visible = false
		script.Parent.Parent.Autofarms.Visible = false
		wait(0.1)
	end)
end
coroutine.wrap(AFOWIJW_fake_script)()
local function GOQEYJR_fake_script() -- MainFrame.Draggable 
	local script = Instance.new('Script', MainFrame)

	local frame = script.Parent
	frame.Active = true
	frame.Selectable = true
	frame.Draggable = true
	
	
end
coroutine.wrap(GOQEYJR_fake_script)()
local function DRKLWEY_fake_script() -- OpenAutofarms.OpenScript 
	local script = Instance.new('LocalScript', OpenAutofarms)

	script.Parent.MouseButton1Click:connect(function()
		script.Parent.Parent.HideMenu.Visible = true
		script.Parent.Parent.PlayerFrame.Visible = false
		script.Parent.Parent.WorldFrame.Visible = false
		script.Parent.Parent.UniversalFrame.Visible = false
		script.Parent.Parent.Autofarms.Visible = true
		wait(0.1)
	end)
end
coroutine.wrap(DRKLWEY_fake_script)()
local function BFMJOGV_fake_script() -- CloseMenu.OpenScript 
	local script = Instance.new('LocalScript', CloseMenu)

	script.Parent.MouseButton1Click:connect(function()
		script.Parent.Parent.Parent.Enabled = false
		wait(0.1)
	end)
end
coroutine.wrap(BFMJOGV_fake_script)()
local function AGJPP_fake_script() -- HideMenu.OpenScript 
	local script = Instance.new('LocalScript', HideMenu)

	script.Parent.MouseButton1Click:connect(function()
		script.Parent.Parent.HideMenu.Visible = false
		script.Parent.Parent.PlayerFrame.Visible = false
		script.Parent.Parent.WorldFrame.Visible = false
		script.Parent.Parent.UniversalFrame.Visible = false
		script.Parent.Parent.Autofarms.Visible = false
		wait(0.1)
	end)
end
coroutine.wrap(AGJPP_fake_script)()
local function HPIAPP_fake_script() -- OpenUniversal.OpenScript 
	local script = Instance.new('LocalScript', OpenUniversal)

	script.Parent.MouseButton1Click:connect(function()
		script.Parent.Parent.HideMenu.Visible = true
		script.Parent.Parent.PlayerFrame.Visible = false
		script.Parent.Parent.WorldFrame.Visible = false
		script.Parent.Parent.UniversalFrame.Visible = true
		script.Parent.Parent.Autofarms.Visible = false
		wait(0.1)
	end)
end
coroutine.wrap(HPIAPP_fake_script)()
local function QGQJ_fake_script() -- OpenWorld.OpenScript 
	local script = Instance.new('LocalScript', OpenWorld)

	script.Parent.MouseButton1Click:connect(function()
		script.Parent.Parent.HideMenu.Visible = true
		script.Parent.Parent.PlayerFrame.Visible = false
		script.Parent.Parent.WorldFrame.Visible = true
		script.Parent.Parent.UniversalFrame.Visible = false
		script.Parent.Parent.Autofarms.Visible = false
		wait(0.1)
	end)
end
coroutine.wrap(QGQJ_fake_script)()
