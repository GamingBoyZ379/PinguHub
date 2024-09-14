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
local AddLeaderstats = Instance.new("TextButton")
local FakeResearch = Instance.new("TextButton")
local SpoofPlayer = Instance.new("TextButton")
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
local AutoTixium = Instance.new("TextButton")

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

AddLeaderstats.Name = "AddLeaderstats"
AddLeaderstats.Parent = PlayerFrame
AddLeaderstats.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AddLeaderstats.BorderColor3 = Color3.fromRGB(27, 42, 53)
AddLeaderstats.Position = UDim2.new(0.500000477, 0, 0.0118582593, 0)
AddLeaderstats.Size = UDim2.new(0, 200, 0, 40)
AddLeaderstats.Font = Enum.Font.SourceSans
AddLeaderstats.Text = "Add Leaderstats"
AddLeaderstats.TextColor3 = Color3.fromRGB(0, 0, 0)
AddLeaderstats.TextScaled = true
AddLeaderstats.TextSize = 14.000
AddLeaderstats.TextWrapped = true

FakeResearch.Name = "FakeResearch"
FakeResearch.Parent = PlayerFrame
FakeResearch.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FakeResearch.BorderColor3 = Color3.fromRGB(27, 42, 53)
FakeResearch.Position = UDim2.new(0, 0, 0.0118582593, 0)
FakeResearch.Size = UDim2.new(0, 200, 0, 40)
FakeResearch.Font = Enum.Font.SourceSans
FakeResearch.Text = "Fake Research"
FakeResearch.TextColor3 = Color3.fromRGB(0, 0, 0)
FakeResearch.TextScaled = true
FakeResearch.TextSize = 14.000
FakeResearch.TextWrapped = true

SpoofPlayer.Name = "SpoofPlayer"
SpoofPlayer.Parent = PlayerFrame
SpoofPlayer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SpoofPlayer.BorderColor3 = Color3.fromRGB(27, 42, 53)
SpoofPlayer.Position = UDim2.new(0, 0, 0.36900112, 0)
SpoofPlayer.Size = UDim2.new(0, 200, 0, 40)
SpoofPlayer.Font = Enum.Font.SourceSans
SpoofPlayer.Text = "Spoof Player Info"
SpoofPlayer.TextColor3 = Color3.fromRGB(0, 0, 0)
SpoofPlayer.TextScaled = true
SpoofPlayer.TextSize = 14.000
SpoofPlayer.TextWrapped = true

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
AutoRebirth.Position = UDim2.new(-1.52587887e-07, 0, 0.714285493, 0)
AutoRebirth.Size = UDim2.new(0, 200, 0, 40)
AutoRebirth.Font = Enum.Font.SourceSans
AutoRebirth.Text = "Auto Rebirth"
AutoRebirth.TextColor3 = Color3.fromRGB(0, 0, 0)
AutoRebirth.TextScaled = true
AutoRebirth.TextSize = 14.000
AutoRebirth.TextWrapped = true

AutoTixium.Name = "AutoTixium"
AutoTixium.Parent = Autofarms
AutoTixium.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AutoTixium.BorderColor3 = Color3.fromRGB(27, 42, 53)
AutoTixium.Position = UDim2.new(0.499999851, 0, 0.714285493, 0)
AutoTixium.Size = UDim2.new(0, 200, 0, 40)
AutoTixium.Font = Enum.Font.SourceSans
AutoTixium.Text = "Auto Tixium"
AutoTixium.TextColor3 = Color3.fromRGB(0, 0, 0)
AutoTixium.TextScaled = true
AutoTixium.TextSize = 14.000
AutoTixium.TextWrapped = true

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
    local tycoonKitFolder = workspace:FindFirstChild("Fros Studio's Tycoon Kit")
    if not tycoonKitFolder then return end

    local factoriesFolder = tycoonKitFolder:FindFirstChild("Factories")
    local warehousesFolder = tycoonKitFolder:FindFirstChild("Warehouses")
    if not factoriesFolder or not warehousesFolder then return end

    local playerName = player.Name

    -- Loop through all factories
    for _, factory in pairs(factoriesFolder:GetChildren()) do
        -- Check the Owner value
        local ownerValue = factory:FindFirstChild("Owner")
        if ownerValue and ownerValue:IsA("ObjectValue") and ownerValue.Value and ownerValue.Value.Name == playerName then
            -- Fire TouchInterest on the "PacketCreate1" part
            local packetCreate1 = factory:FindFirstChild("PurchasedObjects")
                and factory.PurchasedObjects:FindFirstChild("ScannerPacketo")
                and factory.PurchasedObjects.ScannerPacketo:FindFirstChild("PacketCreate1")

            if packetCreate1 and packetCreate1:IsA("Part") then
                local characterPrimaryPart = player.Character and player.Character.PrimaryPart
                if characterPrimaryPart then
                    -- Fire touch events on "PacketCreate1"
                    firetouchinterest(packetCreate1, characterPrimaryPart, 0)
                    firetouchinterest(packetCreate1, characterPrimaryPart, 1)

                    -- Make "PacketCreate1" transparent
                    packetCreate1.Transparency = 1
                    packetCreate1.CanCollide = false
                end
            end

            -- Fire TouchInterest on the "PacketCreate2" part
            local packetCreate2 = factory:FindFirstChild("PurchasedObjects")
                and factory.PurchasedObjects:FindFirstChild("ScannerPacketo")
                and factory.PurchasedObjects.ScannerPacketo:FindFirstChild("PacketCreate2")

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

            -- Fire TouchInterest on the "Poort2" part
            local poort2 = warehouse:FindFirstChild("PurchasedObjects")
                and warehouse.PurchasedObjects:FindFirstChild("GAD02")
                and warehouse.PurchasedObjects.GAD02:FindFirstChild("Poort")
            if poort2 and poort2:IsA("Part") then
                local characterPrimaryPart = player.Character and player.Character.PrimaryPart
                if characterPrimaryPart then
                    -- Fire touch events on "Poort2"
                    firetouchinterest(poort2, characterPrimaryPart, 0)
                    firetouchinterest(poort2, characterPrimaryPart, 1)

                    -- Make "Poort2" transparent
                    poort2.Transparency = 1
                    poort2.CanCollide = false
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
	-- Function to delete all parts in the specified folder
	local function deleteAllParts(folder)
		if not folder then return end

		for _, obj in pairs(folder:GetDescendants()) do
			if obj:IsA("Part") then
				obj:Destroy()
			end
		end
	end

	-- Function to delete all children in the specified folder
	local function deleteAllChildren(folder)
		if not folder then return end

		for _, child in pairs(folder:GetChildren()) do
			child:Destroy()
		end
	end

	-- Function to delete all parts in workspace containing "OwnerDoor" in their name
	local function deleteOwnerDoorParts()
		for _, obj in pairs(workspace:GetDescendants()) do
			if obj:IsA("Part") and obj.Name:find("OwnerDoor") then
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
	deleteAllParts(gifInFolder)

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

	-- Delete all parts containing "OwnerDoor" anywhere in their name
	deleteOwnerDoorParts()

end)

TPTix.MouseButton1Down:connect(function()
	-- Function to fire all TouchInterests and optionally disable collisions
	local function processTouchInterests(folder)
		if not folder then return end

		for _, obj in pairs(folder:GetDescendants()) do
			if obj:IsA("Part") then
				local touchInterest = obj:FindFirstChild("TouchInterest")
				if touchInterest then
					-- Make the part transparent and non-collidable
					obj.Transparency = 1
					obj.CanCollide = false

					-- Fire touch events
					local characterPrimaryPart = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character.PrimaryPart
					if characterPrimaryPart then
						firetouchinterest(obj, characterPrimaryPart, 0)
						firetouchinterest(obj, characterPrimaryPart, 1)
					end
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
		local uraniumTixFolder = oresFolder and oresFolder:FindFirstChild("Uranium")
		local goldPieceFolder = oresFolder and oresFolder:FindFirstChild("Gold_Piece")
		local crystaltixFolder = oresFolder and oresFolder:FindFirstChild("CrystalTix")
		local tixiumFolder = oresFolder and oresFolder:FindFirstChild("Tixium")
		local drTixiumFolder = oresFolder and oresFolder:FindFirstChild("DR_Tixium")

		processTouchInterests(eventsFolder)
		processTouchInterests(lavaTixFolder)
		processTouchInterests(forgotPieceFolder)
		processTouchInterests(uraniumTixFolder)
		processTouchInterests(goldPieceFolder)
		processTouchInterests(crystaltixFolder)
		processTouchInterests(tixiumFolder)
		processTouchInterests(drTixiumFolder)
	end

	-- Initial call to process existing TouchInterests
	processFolders()

	-- Continuously check and process TouchInterests every 10 seconds
	while true do
		task.wait() -- Adjust the wait time as needed
		processFolders()
	end

end)

AddLeaderstats.MouseButton1Down:connect(function()
	-- Enable the leaderboard (PlayerList)
	game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, true)

	local Players = game:GetService("Players")
	local LocalPlayer = Players.LocalPlayer

	-- Wait until the player's TixFactoryBoardNew exists
	repeat
		task.wait(1)
	until LocalPlayer:FindFirstChild("TixFactoryBoardNew")

	-- Define the custom suffix conversion function
	local function convert(value)
		local suffixes = {
			{1, ""}, {1e+3, 'K'}, {1e+6, 'M'},
			{1e+9, 'B'}, {1e+12, 'T'},
			{1e+15, "q"}, {1e+18, "Q"},
			{1e+21, "L"}, {1e+24, "s"}, {1e+27, 'o'},
			{1e+30, 'n'}, {1e+33, "d"}, {1e+36, "mg"},
			{1e+39, "Cr"}, {1e+42, "gl"}, {1e+45, "v"},
			{1e+48, "fr"}, {1e+51, "fVg"}, {1e+54, "LU"},
			{1e+57, "Ro"}, {1e+60, "la"}, {1e+63, "LA"},
			{1e+66, "x"}, {1e+69, "f"}, {1e+72, "sa"},
			{1e+75, "fl"}, {1e+78, "bib"}, {1e+81, "hw"},
			{1e+84, "t"}, {1e+87, "mA"}, {1e+90, "Na"},
			{1e+93, "ft"}, {1e+96, "mz"}, {1e+99, "ea"},
			{1e+102, "cr"}, {1e+105, "z"}, {1e+108, "zz"},
			{1e+111, "bt"}, {1e+114, "bb"}, {1e+117, "dp"},
			{1e+120, "sav"}, {1e+123, "tix"}, {1e+126, "Oma"},
			{1e+129, "Opa"}, {1e+132, "Pap"}, {1e+135, "Mam"},
			{1e+138, "Frx"}, {1e+141, "Sc"}, {1e+144, "Ze"},
			{1e+147, "Cb"}, {1e+150, "FS"}, {1e+153, "GB"},
			{1e+156, "WE"}, {1e+159, "LV"}, {1e+162, "JA"},
			{1e+165, "FLEM"}, {1e+168, "???"}
		}

		-- Handle values less than 1000
		if value < 1000 then
			return tostring(value)
		end

		-- Apply suffixes for values 1000 and above
		for i = #suffixes, 1, -1 do
			local suffix = suffixes[i]
			if value >= suffix[1] then
				return (suffix[2] == "" and "") or (string.format("%.2f", value / suffix[1]) .. suffix[2])
			end
		end
		return tostring(value)
	end

	-- Function to recursively find a child by name in the Currencies folder
	local function findCurrency(currencyName, parent)
		if not parent then return nil end
		local result = parent:FindFirstChild(currencyName)
		if result then
			return result
		end
		for _, child in ipairs(parent:GetChildren()) do
			if child:IsA("Folder") then
				result = findCurrency(currencyName, child)
				if result then
					return result
				end
			end
		end
		return nil
	end

	-- Function to update or create leaderstat based on currency
	local function updateLeaderstat(player, slotName, currencyName)
		local tixFactory = player:FindFirstChild("TixFactoryBoardNew")
		if not tixFactory then
			warn("TixFactoryBoardNew not found for player: " .. player.Name)
			return
		end

		local currencies = tixFactory:FindFirstChild("Currencies")
		if not currencies then
			warn("Currencies not found for player: " .. player.Name)
			return
		end

		local currencyValue = findCurrency(currencyName, currencies)

		local leaderstats = player:FindFirstChild("leaderstats")
		if not leaderstats then
			leaderstats = Instance.new("Folder")
			leaderstats.Name = "leaderstats"
			leaderstats.Parent = player
		end

		local leaderstat = leaderstats:FindFirstChild(slotName)

		if currencyValue then
			-- Create leaderstat if it doesn't exist
			if not leaderstat then
				leaderstat = Instance.new("StringValue")
				leaderstat.Name = slotName
				leaderstat.Parent = leaderstats
			end

			-- Update leaderstat value
			local valueToConvert = currencyValue and currencyValue.Value
			if valueToConvert then
				leaderstat.Value = convert(valueToConvert)
			end
		elseif leaderstat then
			-- Remove leaderstat if currency is not found
			leaderstat:Destroy()
		end
	end

	-- Function to update or create the Reborn leaderstat for the player
	local function updatePlayerReborn(player)
		local leaderstats = player:FindFirstChild("leaderstats")
		if not leaderstats then
			leaderstats = Instance.new("Folder")
			leaderstats.Name = "leaderstats"
			leaderstats.Parent = player
		end

		local rebornStat = leaderstats:FindFirstChild("Reborn")
		if not rebornStat then
			rebornStat = Instance.new("IntValue")
			rebornStat.Name = "Reborn"
			rebornStat.Parent = leaderstats
		end

		local tixFactoryBoard = player:FindFirstChild("TixFactoryBoardNew")
		if not tixFactoryBoard then
			warn("TixFactoryBoardNew not found for player:", player.Name)
			return
		end

		local currencies = tixFactoryBoard:FindFirstChild("Currencies")
		if not currencies then
			warn("Currencies not found in TixFactoryBoardNew for player:", player.Name)
			return
		end

		local rebornValue = currencies:FindFirstChild("Reborn")
		if not rebornValue then
			warn("Reborn value not found in Currencies for player:", player.Name)
			return
		end

		rebornStat.Value = rebornValue.Value
	end

	-- Function to setup leaderstats for LocalPlayer
	local function setupLocalPlayerLeaderstats()
		local gui = LocalPlayer.TixFactoryBoardNew:FindFirstChild("Gui")
		if not gui then
			warn("Gui not found for LocalPlayer")
			return
		end

		for _, slotName in pairs({"Slots1", "Slots2", "Slots3", "Slots4"}) do
			local slotValue = gui:FindFirstChild(slotName)
			if slotValue then
				local currencyName = slotValue.Value
				updateLeaderstat(LocalPlayer, slotName, currencyName)
			else
				warn("SlotValue not found: " .. slotName)
			end
		end

		updatePlayerReborn(LocalPlayer)
	end

	-- Function to setup leaderstats for a player based on their own slots
	local function setupPlayerLeaderstats(player)
		if player == LocalPlayer then
			setupLocalPlayerLeaderstats()
		else
			local gui = LocalPlayer.TixFactoryBoardNew:FindFirstChild("Gui")
			if not gui then
				warn("Gui not found for LocalPlayer")
				return
			end

			for _, slotName in pairs({"Slots1", "Slots2", "Slots3", "Slots4"}) do
				local slotValue = gui:FindFirstChild(slotName)
				if slotValue then
					local currencyName = slotValue.Value
					updateLeaderstat(player, slotName, currencyName)
				else
					warn("SlotValue not found: " .. slotName)
				end
			end

			updatePlayerReborn(player)
		end
	end

	-- Function to update leaderstats for all players
	local function updateAllPlayerLeaderstats()
		for _, player in ipairs(Players:GetPlayers()) do
			setupPlayerLeaderstats(player)
		end
	end

	-- Handle player added
	Players.PlayerAdded:Connect(function(player)
		player.CharacterAdded:Connect(function()
			-- Add a small wait to ensure player data is fully loaded
			task.wait(3)
			setupPlayerLeaderstats(player)
		end)
	end)

	-- Initial setup for existing players
	updateAllPlayerLeaderstats()

	-- Continuously update leaderstats for all players every 10 seconds
	while true do
		task.wait()
		updateAllPlayerLeaderstats()
	end

end)

AutoTixium.MouseButton1Down:connect(function()
	-- Get the local player
	local player = game.Players.LocalPlayer

	-- Function to fire TouchInterests, make specific parts transparent, and delete BillboardGui
	local function fireTouchInterestAndHandlePart(part)
		local characterPrimaryPart = player.Character and player.Character.PrimaryPart
		if part and part:IsA("Part") and characterPrimaryPart then
			-- Fire touch events
			firetouchinterest(part, characterPrimaryPart, 0)
			firetouchinterest(part, characterPrimaryPart, 1)

			-- Make the part transparent and non-collidable
			part.Transparency = 1
			part.CanCollide = false

			-- Check if the part is the StorageColler and has a BillboardGui to remove
			if part.Name == "StorageColler" then
				local billboardGui = part:FindFirstChildOfClass("BillboardGui")
				if billboardGui then
					billboardGui:Destroy()
				end
			end
		end
	end

	-- Function to handle Giver and StorageColler parts based on ownership
	local function handleGiverAndStorageColler()
		-- Locate the WarehouseFactory folder
		local warehouseFactoryFolder = workspace:FindFirstChild("Fros Studio's Tycoon Kit")
			and workspace["Fros Studio's Tycoon Kit"]:FindFirstChild("WarehouseFactory")

		if warehouseFactoryFolder then
			-- Loop through all WarehouseFactories and check for ownership
			for _, warehouseFactory in pairs(warehouseFactoryFolder:GetChildren()) do
				local ownerValue = warehouseFactory:FindFirstChild("Owner")
				if ownerValue and ownerValue:IsA("ObjectValue") and ownerValue.Value and ownerValue.Value.Name == player.Name then
					local purchasesFolder = warehouseFactory:FindFirstChild("Purchases")
					local giversFolder = purchasesFolder and purchasesFolder:FindFirstChild("Givers")

					if giversFolder then
						-- Locate Giver part
						local giverPart = giversFolder:FindFirstChild("Giver")
						fireTouchInterestAndHandlePart(giverPart)

						-- Locate StorageColler part
						local storageCollerPart = giversFolder:FindFirstChild("StorageColler")
						fireTouchInterestAndHandlePart(storageCollerPart)
					end
				end
			end
		end
	end

	-- Function to fire all TouchInterests and optionally disable collisions
	local function processTouchInterests(folder)
		if not folder then return end

		for _, obj in pairs(folder:GetDescendants()) do
			if obj:IsA("Part") then
				local touchInterest = obj:FindFirstChild("TouchInterest")
				if touchInterest then
					-- Fire the TouchInterest twice to simulate a touch event
					local characterPrimaryPart = player.Character and player.Character.PrimaryPart
					if characterPrimaryPart then
						firetouchinterest(obj, characterPrimaryPart, 0)
						firetouchinterest(obj, characterPrimaryPart, 1)
					end

					-- Disable collision for the part
					obj.Transparency = 1
					obj.CanCollide = false
				end
			end
		end
	end

	-- Process specified folders for Tixium and Uranium only
	local function processFolders()
		local gameFolder = workspace:FindFirstChild("Game")
		if not gameFolder then return end

		local oresFolder = gameFolder:FindFirstChild("Ores")
		local tixiumFolder = oresFolder and oresFolder:FindFirstChild("Tixium")
		local drTixiumFolder = oresFolder and oresFolder:FindFirstChild("DR_Tixium")
		local uraniumFolder = oresFolder and oresFolder:FindFirstChild("Uranium")

		-- Process touch interests for the specified folders
		processTouchInterests(tixiumFolder)
		processTouchInterests(drTixiumFolder)
		processTouchInterests(uraniumFolder)
	end

	-- Initial call to process existing TouchInterests
	processFolders()

	-- Run the function in a loop to continuously check and fire TouchInterests
	while true do
		handleGiverAndStorageColler()
		processFolders()
		task.wait(1) -- Adjust the wait time as needed
	end

end)

SpoofPlayer.MouseButton1Down:connect(function()
	-- Get the LocalPlayer and UserId
	local player = game.Players.LocalPlayer
	local userId = tostring(player.UserId)  -- Convert to string to match the path format

	-- Function to update PlayerOverhead UI elements
	local function updatePlayerOverheadUI()
		-- Wait for the character to load and PlayerOverhead to be available
		if not player.Character then
			player.CharacterAdded:Wait()
		end

		local character = player.Character
		local playerOverhead = character:FindFirstChild("PlayerOverhead")

		-- Check if PlayerOverhead exists in the character
		if not playerOverhead then
			return
		end

		-- Check for and update UI elements
		local circle1 = playerOverhead:FindFirstChild("Circle1")
		local circle2 = circle1 and circle1:FindFirstChild("Circle2")
		local frame1 = playerOverhead:FindFirstChild("Frame1")
		local frame2 = playerOverhead:FindFirstChild("Frame2")
		local frame3 = playerOverhead:FindFirstChild("Frame3")
		local frame4 = playerOverhead:FindFirstChild("Frame4")
		local rankName = playerOverhead:FindFirstChild("Circle1") and playerOverhead.Circle1:FindFirstChild("Circle2") and playerOverhead.Circle1.Circle2:FindFirstChild("RankName")
		local rebornName = playerOverhead:FindFirstChild("RebornName")
		local roleName = playerOverhead:FindFirstChild("roleName")
		local overheadPlayerName = playerOverhead:FindFirstChild("playerName")  -- Renamed variable

		-- Function to ensure the correct text and colors
		local function updateTextLabel(label, text, color)
			if label then
				label.Text = text
				label.TextColor3 = color
			end
		end

		-- Update UI elements
		if circle1 then
			circle1.ImageColor3 = Color3.fromRGB(0, 150, 150)
		end
		if circle2 then
			circle2.ImageColor3 = Color3.fromRGB(0, 255, 255)
		end
		if frame1 then
			frame1.ImageColor3 = Color3.fromRGB(0, 150, 150)
		end
		if frame2 then
			frame2.ImageColor3 = Color3.fromRGB(0, 255, 255)
		end
		if frame3 then
			frame3.ImageColor3 = Color3.fromRGB(0, 150, 150)
		end
		if frame4 then
			frame4.ImageColor3 = Color3.fromRGB(0, 255, 255)
		end
		updateTextLabel(rankName, "69", Color3.fromRGB(0, 0, 0))
		updateTextLabel(rebornName, "Rebirth 100", Color3.fromRGB(0, 0, 0))
		updateTextLabel(roleName, "PinguHub", Color3.fromRGB(0, 255, 255))
		updateTextLabel(overheadPlayerName, "User", Color3.fromRGB(0, 0, 0))  -- Updated reference
	end

	-- Function to update PlayerName in CoreGui
	local function updateCoreGuiPlayerName(userId)
		local coreGui = game:GetService("CoreGui")
		local playerList = coreGui:FindFirstChild("PlayerList")
		if not playerList then return end

		local playerListMaster = playerList:FindFirstChild("PlayerListMaster")
		if not playerListMaster then return end

		local offsetFrame = playerListMaster:FindFirstChild("OffsetFrame")
		if not offsetFrame then return end

		local playerScrollList = offsetFrame:FindFirstChild("PlayerScrollList")
		if not playerScrollList then return end

		local sizeOffsetFrame = playerScrollList:FindFirstChild("SizeOffsetFrame")
		if not sizeOffsetFrame then return end

		local scrollingFrameContainer = sizeOffsetFrame:FindFirstChild("ScrollingFrameContainer")
		if not scrollingFrameContainer then return end

		local scrollingFrameClippingFrame = scrollingFrameContainer:FindFirstChild("ScrollingFrameClippingFrame")
		if not scrollingFrameClippingFrame then return end

		local scrollingFrame = scrollingFrameClippingFrame:FindFirstChild("ScollingFrame")
		if not scrollingFrame then return end

		local offsetUndoFrame = scrollingFrame:FindFirstChild("OffsetUndoFrame")
		if not offsetUndoFrame then return end

		local playerFrame = offsetUndoFrame:FindFirstChild("p_" .. userId)
		if not playerFrame then return end

		local childrenFrame = playerFrame:FindFirstChild("ChildrenFrame")
		if not childrenFrame then return end

		local nameFrame = childrenFrame:FindFirstChild("NameFrame")
		if not nameFrame then return end

		local bgFrame = nameFrame:FindFirstChild("BGFrame")
		if not bgFrame then return end

		local overlayFrame = bgFrame:FindFirstChild("OverlayFrame")
		if not overlayFrame then return end

		local playerNameFrame = overlayFrame:FindFirstChild("PlayerName")
		if not playerNameFrame then return end

		local playerName = playerNameFrame:FindFirstChild("PlayerName")
		if playerName then
			playerName.Text = "User"
			-- Ensure changes are kept persistent
			playerName.Changed:Connect(function()
				if playerName.Text ~= "User" then
					playerName.Text = "User"
				end
			end)
		end
	end

	-- Function to update PlayerDropDown elements in CoreGui
	local function updatePlayerDropDown()
		local coreGui = game:GetService("CoreGui")
		local playerList = coreGui:FindFirstChild("PlayerList")
		if not playerList then return end

		local playerListMaster = playerList:FindFirstChild("PlayerListMaster")
		if not playerListMaster then return end

		local offsetFrame = playerListMaster:FindFirstChild("OffsetFrame")
		if not offsetFrame then return end

		local playerScrollList = offsetFrame:FindFirstChild("PlayerScrollList")
		if not playerScrollList then return end

		local sizeOffsetFrame = playerScrollList:FindFirstChild("SizeOffsetFrame")
		if not sizeOffsetFrame then return end

		local scrollingFrameContainer = sizeOffsetFrame:FindFirstChild("ScrollingFrameContainer")
		if not scrollingFrameContainer then return end

		local playerDropDown = scrollingFrameContainer:FindFirstChild("PlayerDropDown")
		if not playerDropDown then return end

		local innerFrame = playerDropDown:FindFirstChild("InnerFrame")
		if not innerFrame then return end

		local playerHeader = innerFrame:FindFirstChild("PlayerHeader")
		if not playerHeader then return end

		local background = playerHeader:FindFirstChild("Background")
		if not background then return end

		local textContainerFrame = background:FindFirstChild("TextContainerFrame")
		if not textContainerFrame then return end

		-- Update PlayerName and DisplayName under textContainerFrame
		local displayName = textContainerFrame:FindFirstChild("DisplayName")
		if displayName then
			displayName.Text = "User"
			displayName.Changed:Connect(function()
				if displayName.Text ~= "User" then
					displayName.Text = "User"
				end
			end)
		end

		local playerNameLabel = textContainerFrame:FindFirstChild("PlayerName")
		if playerNameLabel then
			playerNameLabel.Text = "@User"
			playerNameLabel.Changed:Connect(function()
				if playerNameLabel.Text ~= "@User" then
					playerNameLabel.Text = "@User"
				end
			end)
		end
	end

	-- Run the functions
	task.wait(2)  -- Wait to ensure UI elements are available
	updatePlayerOverheadUI()
	updateCoreGuiPlayerName(userId)
	updatePlayerDropDown()
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

--Button Scripts:

local function GKJW_fake_script() -- OpenPlayer.OpenScript 
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
coroutine.wrap(GKJW_fake_script)()
local function WUVP_fake_script() -- MainFrame.Draggable 
	local script = Instance.new('Script', MainFrame)

	local frame = script.Parent
	frame.Active = true
	frame.Selectable = true
	frame.Draggable = true
	
	
end
coroutine.wrap(WUVP_fake_script)()
local function DAIBMCX_fake_script() -- OpenAutofarms.OpenScript 
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
coroutine.wrap(DAIBMCX_fake_script)()
local function GVFP_fake_script() -- CloseMenu.OpenScript 
	local script = Instance.new('LocalScript', CloseMenu)

	script.Parent.MouseButton1Click:connect(function()
		script.Parent.Parent.Parent.Enabled = false
		wait(0.1)
	end)
end
coroutine.wrap(GVFP_fake_script)()
local function LTWCHTK_fake_script() -- HideMenu.OpenScript 
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
coroutine.wrap(LTWCHTK_fake_script)()
local function XNTC_fake_script() -- OpenUniversal.OpenScript 
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
coroutine.wrap(XNTC_fake_script)()
local function CNCNTR_fake_script() -- OpenWorld.OpenScript 
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
coroutine.wrap(CNCNTR_fake_script)()
