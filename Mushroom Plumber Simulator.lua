-- Gui to Lua
-- Version: 3.2

-- Instances:

local PinguHub_MushroomPlumberSimulator = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local HubName = Instance.new("TextLabel")
local OpenPlayer = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local OpenTP = Instance.new("TextButton")
local UniversalFrame = Instance.new("Frame")
local InfiniteYield = Instance.new("TextButton")
local CloseMenu = Instance.new("TextButton")
local PlayerFrame = Instance.new("Frame")
local InfiniteStamina = Instance.new("TextButton")
local WorldFrame = Instance.new("Frame")
local CoinBlockHitbox1 = Instance.new("TextButton")
local CoinBlockHitbox2 = Instance.new("TextButton")
local TPDrops = Instance.new("TextButton")
local TPToOmni = Instance.new("TextButton")
local MobEsp = Instance.new("TextButton")
local LuckyBlockOpen = Instance.new("TextButton")
local HideMenu = Instance.new("TextButton")
local OpenUniversal = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local OpenWorld = Instance.new("TextButton")
local TPFrame = Instance.new("Frame")
local KingTurtCastle = Instance.new("TextButton")
local StatReset = Instance.new("TextButton")
local PawnShop = Instance.new("TextButton")
local GunDealer = Instance.new("TextButton")

--Properties:

PinguHub_MushroomPlumberSimulator.Name = "PinguHub_MushroomPlumberSimulator"
PinguHub_MushroomPlumberSimulator.Parent = game:GetService("CoreGui")
PinguHub_MushroomPlumberSimulator.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = PinguHub_MushroomPlumberSimulator
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
HubName.Text = "PinguHub MPS"
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

OpenTP.Name = "OpenTP"
OpenTP.Parent = MainFrame
OpenTP.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
OpenTP.BorderColor3 = Color3.fromRGB(27, 42, 53)
OpenTP.Position = UDim2.new(0.400000006, 0, 0.108300932, 0)
OpenTP.Size = UDim2.new(0, 79, 0, 40)
OpenTP.Font = Enum.Font.SourceSansBold
OpenTP.Text = "TP"
OpenTP.TextColor3 = Color3.fromRGB(255, 255, 255)
OpenTP.TextScaled = true
OpenTP.TextSize = 14.000
OpenTP.TextWrapped = true

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
InfiniteYield.Position = UDim2.new(0.352499992, 0, 0.00714285718, 0)
InfiniteYield.Size = UDim2.new(0, 119, 0, 20)
InfiniteYield.Font = Enum.Font.SourceSans
InfiniteYield.Text = "Infinite Yield"
InfiniteYield.TextColor3 = Color3.fromRGB(0, 0, 0)
InfiniteYield.TextScaled = true
InfiniteYield.TextSize = 14.000
InfiniteYield.TextWrapped = true

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

InfiniteStamina.Name = "InfiniteStamina"
InfiniteStamina.Parent = PlayerFrame
InfiniteStamina.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InfiniteStamina.BorderColor3 = Color3.fromRGB(27, 42, 53)
InfiniteStamina.Position = UDim2.new(0, 0, 0.00714284182, 0)
InfiniteStamina.Size = UDim2.new(0, 200, 0, 50)
InfiniteStamina.Font = Enum.Font.SourceSans
InfiniteStamina.Text = "Infinite Stamina"
InfiniteStamina.TextColor3 = Color3.fromRGB(0, 0, 0)
InfiniteStamina.TextScaled = true
InfiniteStamina.TextSize = 14.000
InfiniteStamina.TextWrapped = true

WorldFrame.Name = "WorldFrame"
WorldFrame.Parent = MainFrame
WorldFrame.Active = true
WorldFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
WorldFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
WorldFrame.Position = UDim2.new(0, 0, 0.300000012, 0)
WorldFrame.Size = UDim2.new(0, 400, 0, 140)
WorldFrame.Visible = false

CoinBlockHitbox1.Name = "CoinBlockHitbox1"
CoinBlockHitbox1.Parent = WorldFrame
CoinBlockHitbox1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CoinBlockHitbox1.BorderColor3 = Color3.fromRGB(27, 42, 53)
CoinBlockHitbox1.Position = UDim2.new(0, 0, 0.0118584773, 0)
CoinBlockHitbox1.Size = UDim2.new(0, 200, 0, 40)
CoinBlockHitbox1.Font = Enum.Font.SourceSans
CoinBlockHitbox1.Text = "Coin Block Hitbox"
CoinBlockHitbox1.TextColor3 = Color3.fromRGB(0, 0, 0)
CoinBlockHitbox1.TextScaled = true
CoinBlockHitbox1.TextSize = 14.000
CoinBlockHitbox1.TextWrapped = true

CoinBlockHitbox2.Name = "CoinBlockHitbox2"
CoinBlockHitbox2.Parent = WorldFrame
CoinBlockHitbox2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CoinBlockHitbox2.BorderColor3 = Color3.fromRGB(27, 42, 53)
CoinBlockHitbox2.Position = UDim2.new(0.500000179, 0, 0.0118584773, 0)
CoinBlockHitbox2.Size = UDim2.new(0, 200, 0, 40)
CoinBlockHitbox2.Font = Enum.Font.SourceSans
CoinBlockHitbox2.Text = "BIG Coin Block Hitbox"
CoinBlockHitbox2.TextColor3 = Color3.fromRGB(0, 0, 0)
CoinBlockHitbox2.TextScaled = true
CoinBlockHitbox2.TextSize = 14.000
CoinBlockHitbox2.TextWrapped = true

TPDrops.Name = "TPDrops"
TPDrops.Parent = WorldFrame
TPDrops.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TPDrops.BorderColor3 = Color3.fromRGB(27, 42, 53)
TPDrops.Position = UDim2.new(0, 0, 0.369001329, 0)
TPDrops.Size = UDim2.new(0, 200, 0, 40)
TPDrops.Font = Enum.Font.SourceSans
TPDrops.Text = "TP Drops"
TPDrops.TextColor3 = Color3.fromRGB(0, 0, 0)
TPDrops.TextScaled = true
TPDrops.TextSize = 14.000
TPDrops.TextWrapped = true

TPToOmni.Name = "TPToOmni"
TPToOmni.Parent = WorldFrame
TPToOmni.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TPToOmni.BorderColor3 = Color3.fromRGB(27, 42, 53)
TPToOmni.Position = UDim2.new(0.500000179, 0, 0.369001329, 0)
TPToOmni.Size = UDim2.new(0, 200, 0, 40)
TPToOmni.Font = Enum.Font.SourceSans
TPToOmni.Text = "TP Omni Room"
TPToOmni.TextColor3 = Color3.fromRGB(0, 0, 0)
TPToOmni.TextScaled = true
TPToOmni.TextSize = 14.000
TPToOmni.TextWrapped = true

MobEsp.Name = "MobEsp"
MobEsp.Parent = WorldFrame
MobEsp.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MobEsp.BorderColor3 = Color3.fromRGB(27, 42, 53)
MobEsp.Position = UDim2.new(0, 0, 0.711858451, 0)
MobEsp.Size = UDim2.new(0, 200, 0, 40)
MobEsp.Font = Enum.Font.SourceSans
MobEsp.Text = "Mob ESP"
MobEsp.TextColor3 = Color3.fromRGB(0, 0, 0)
MobEsp.TextScaled = true
MobEsp.TextSize = 14.000
MobEsp.TextWrapped = true

LuckyBlockOpen.Name = "LuckyBlockOpen"
LuckyBlockOpen.Parent = WorldFrame
LuckyBlockOpen.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LuckyBlockOpen.BorderColor3 = Color3.fromRGB(27, 42, 53)
LuckyBlockOpen.Position = UDim2.new(0.500000179, 0, 0.711858451, 0)
LuckyBlockOpen.Size = UDim2.new(0, 200, 0, 40)
LuckyBlockOpen.Font = Enum.Font.SourceSans
LuckyBlockOpen.Text = "Auto Lucky Block"
LuckyBlockOpen.TextColor3 = Color3.fromRGB(0, 0, 0)
LuckyBlockOpen.TextScaled = true
LuckyBlockOpen.TextSize = 14.000
LuckyBlockOpen.TextWrapped = true

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

TPFrame.Name = "TPFrame"
TPFrame.Parent = MainFrame
TPFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
TPFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
TPFrame.Position = UDim2.new(0, 0, 0.300000012, 0)
TPFrame.Size = UDim2.new(0, 400, 0, 140)
TPFrame.Visible = false

KingTurtCastle.Name = "KingTurtCastle"
KingTurtCastle.Parent = TPFrame
KingTurtCastle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
KingTurtCastle.BorderColor3 = Color3.fromRGB(27, 42, 53)
KingTurtCastle.Position = UDim2.new(0, 0, 0.00714284182, 0)
KingTurtCastle.Size = UDim2.new(0, 200, 0, 50)
KingTurtCastle.Font = Enum.Font.SourceSans
KingTurtCastle.Text = "King Turt Castle"
KingTurtCastle.TextColor3 = Color3.fromRGB(0, 0, 0)
KingTurtCastle.TextScaled = true
KingTurtCastle.TextSize = 14.000
KingTurtCastle.TextWrapped = true

StatReset.Name = "StatReset"
StatReset.Parent = TPFrame
StatReset.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
StatReset.BorderColor3 = Color3.fromRGB(27, 42, 53)
StatReset.Position = UDim2.new(0, 0, 0.364285707, 0)
StatReset.Size = UDim2.new(0, 200, 0, 50)
StatReset.Font = Enum.Font.SourceSans
StatReset.Text = "Stat Reset"
StatReset.TextColor3 = Color3.fromRGB(0, 0, 0)
StatReset.TextScaled = true
StatReset.TextSize = 14.000
StatReset.TextWrapped = true

PawnShop.Name = "PawnShop"
PawnShop.Parent = TPFrame
PawnShop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PawnShop.BorderColor3 = Color3.fromRGB(27, 42, 53)
PawnShop.Position = UDim2.new(0.499999553, 0, 0.00714285718, 0)
PawnShop.Size = UDim2.new(0, 200, 0, 50)
PawnShop.Font = Enum.Font.SourceSans
PawnShop.Text = "Pawn Shop"
PawnShop.TextColor3 = Color3.fromRGB(0, 0, 0)
PawnShop.TextScaled = true
PawnShop.TextSize = 14.000
PawnShop.TextWrapped = true

GunDealer.Name = "GunDealer"
GunDealer.Parent = TPFrame
GunDealer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GunDealer.BorderColor3 = Color3.fromRGB(27, 42, 53)
GunDealer.Position = UDim2.new(0.499999553, 0, 0.364285707, 0)
GunDealer.Size = UDim2.new(0, 200, 0, 50)
GunDealer.Font = Enum.Font.SourceSans
GunDealer.Text = "Gun Dealer"
GunDealer.TextColor3 = Color3.fromRGB(0, 0, 0)
GunDealer.TextScaled = true
GunDealer.TextSize = 14.000
GunDealer.TextWrapped = true

-- Scripts:

InfiniteYield.MouseButton1Down:connect(function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

TPDrops.MouseButton1Down:connect(function()
	-- Get the local player
	local player = game.Players.LocalPlayer

	-- Function to teleport and disable collision for drops
	local function collectDrops()
		-- Get the _ITEMDROPS_STORAGE folder from the Workspace
		local itemsDropFolder = game.Workspace:FindFirstChild("_ITEMDROPS_STORAGE")

		-- Check if the folder exists
		if itemsDropFolder then

			-- Get the player's character model
			local character = player.Character or player.CharacterAdded:Wait()
			local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

			if humanoidRootPart then

				-- Iterate through all children in the _ITEMDROPS_STORAGE folder
				for _, drop in pairs(itemsDropFolder:GetChildren()) do
					if drop:IsA("MeshPart") then
						local collected = false

						-- Iterate through all nameTag instances within the drop
						for _, nameTag in pairs(drop:GetChildren()) do
							if nameTag:IsA("BillboardGui") and nameTag.Name == "nameTag" then
								-- Check if the TextLabel inside nameTag has the player's username
								local textLabel = nameTag:FindFirstChild("textLabel")
								if textLabel and textLabel:IsA("TextLabel") and textLabel.Text == player.Name then
									collected = true
									break
								end
							end
						end

						if collected then
							-- Teleport the drop to the player's HumanoidRootPart position
							drop.Position = humanoidRootPart.Position
							drop.CanCollide = false -- Disable collision
							drop.Anchored = true -- Optionally anchor it
							print("Collected drop:", drop.Name)
						end
					end
				end
			else
				warn("HumanoidRootPart not found in player's character")
			end
		else
			warn("_ITEMDROPS_STORAGE folder not found in Workspace")
		end
	end

	-- Initial call to collect existing drops
	collectDrops()

	-- Continuously check and collect new drops (e.g., every 5 seconds)
	while true do
		wait(1)
		collectDrops()
	end
end)

CoinBlockHitbox1.MouseButton1Down:connect(function()
	-- Function to resize the HitBox inside coinBrick
	local function resizeHitBoxes()
		-- Get the _CoinBricks folder from the Workspace
		local coinBricksFolder = game.Workspace:FindFirstChild("_CoinBricks")

		-- Check if the folder exists
		if coinBricksFolder then
			-- Iterate through all children in the _CoinBricks folder
			for _, coinBrickModel in pairs(coinBricksFolder:GetChildren()) do
				-- Check if the child is a model
				if coinBrickModel:IsA("Model") then
					-- Find the coinBrick part inside the model
					local coinBrick = coinBrickModel:FindFirstChild("coinBrick")
					-- Check if coinBrick exists and is a BasePart (e.g., Part)
					if coinBrick and coinBrick:IsA("BasePart") then
						-- Find the HitBox part inside the coinBrick
						local hitBox = coinBrick:FindFirstChild("HitBox")
						-- Check if hitBox exists and is a BasePart (e.g., Part)
						if hitBox and hitBox:IsA("BasePart") then
							-- Change the size of the hitBox to 1000, 1000, 1000
							hitBox.Size = Vector3.new(1000, 1000, 1000)
						end
					end
				end
			end
		else
			warn("_CoinBricks folder not found in Workspace")
		end
	end

	-- Periodically check for new coinBricks and resize their HitBoxes
	while true do
		resizeHitBoxes()
		wait(5) -- Adjust the wait time as needed
	end

end)

CoinBlockHitbox2.MouseButton1Down:connect(function()
	-- Function to resize the HitBox inside coinBrick
	local function resizeHitBoxes()
		-- Get the _CoinBricks folder from the Workspace
		local coinBricksFolder = game.Workspace:FindFirstChild("_CoinBricks")

		-- Check if the folder exists
		if coinBricksFolder then
			-- Iterate through all children in the _CoinBricks folder
			for _, coinBrickModel in pairs(coinBricksFolder:GetChildren()) do
				-- Check if the child is a model
				if coinBrickModel:IsA("Model") then
					-- Find the coinBrick part inside the model
					local coinBrick = coinBrickModel:FindFirstChild("coinBrick")
					-- Check if coinBrick exists and is a BasePart (e.g., Part)
					if coinBrick and coinBrick:IsA("BasePart") then
						-- Find the HitBox part inside the coinBrick
						local hitBox = coinBrick:FindFirstChild("HitBox")
						-- Check if hitBox exists and is a BasePart (e.g., Part)
						if hitBox and hitBox:IsA("BasePart") then
							-- Change the size of the hitBox to 1000, 1000, 1000
							hitBox.Size = Vector3.new(5000, 5000, 5000)
						end
					end
				end
			end
		else
			warn("_CoinBricks folder not found in Workspace")
		end
	end

	-- Periodically check for new coinBricks and resize their HitBoxes
	while true do
		resizeHitBoxes()
		wait(5) -- Adjust the wait time as needed
	end

end)

MobEsp.MouseButton1Down:connect(function()
	-- Variables
	local workspace = game.Workspace
	local mobsFolder = workspace:FindFirstChild("_MOBS")

	-- Function to create ESP for each mob
	local function createESPForMob(mob)
		-- Check if the mob has a name (use the model's name)
		local mobName = mob.Name
		if not mobName or mob:IsA("Model") == false then
			return
		end

		-- Check if the ESP already exists
		if not mob:FindFirstChild("ESP") then
			-- Create BillboardGui
			local billboardGui = Instance.new("BillboardGui")
			billboardGui.Name = "ESP"
			billboardGui.Parent = mob
			billboardGui.Adornee = mob
			billboardGui.Size = UDim2.new(0, 100, 0, 50) -- Adjust size as needed
			billboardGui.StudsOffset = Vector3.new(0, 5, 0) -- Position above the mob
			billboardGui.AlwaysOnTop = true

			-- Create TextLabel
			local textLabel = Instance.new("TextLabel")
			textLabel.Name = "NameTag"
			textLabel.Parent = billboardGui
			textLabel.BackgroundTransparency = 1
			textLabel.Size = UDim2.new(1, 0, 1, 0)
			textLabel.Text = mobName
			textLabel.TextColor3 = Color3.fromRGB(255, 255, 255) -- White text
			textLabel.TextStrokeTransparency = 0.5 -- Optional: adds a stroke for readability
			textLabel.TextScaled = false
		end
	end

	-- Function to handle new mobs
	local function onMobAdded(mob)
		createESPForMob(mob)
	end

	-- Function to setup ESP for all existing mobs
	local function setupExistingMobs()
		if mobsFolder then
			-- Iterate through all children in the _MOBS folder
			for _, mob in pairs(mobsFolder:GetChildren()) do
				createESPForMob(mob)
			end
		else
			warn("_MOBS folder not found in Workspace")
		end
	end

	-- Setup ESP for existing mobs
	setupExistingMobs()

	-- Connect the ChildAdded event to handle new mobs
	if mobsFolder then
		mobsFolder.ChildAdded:Connect(onMobAdded)
	end

end)

LuckyBlockOpen.MouseButton1Down:connect(function()
	-- Get the local player
	local player = game.Players.LocalPlayer

	-- Function to teleport consumables to the player's character and disable collision
	local function teleportAndDisableCollisionForConsumables()
		-- Get the _ConsumableSpawns folder from the Workspace
		local consumableSpawnsFolder = game.Workspace:FindFirstChild("_ConsumableSpawns")

		-- Check if the folder exists
		if consumableSpawnsFolder then
			print("_ConsumableSpawns folder found")

			-- Get the player's character model
			local character = player.Character or player.CharacterAdded:Wait()
			local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

			if humanoidRootPart then
				print("Player's HumanoidRootPart found")

				-- Iterate through all children in the _ConsumableSpawns folder
				for _, consumable in pairs(consumableSpawnsFolder:GetChildren()) do
					if consumable:IsA("BasePart") or consumable:IsA("Model") then
						-- Set the position of the consumable to the player's HumanoidRootPart position
						if consumable:IsA("BasePart") then
							consumable.Position = humanoidRootPart.Position
							consumable.CanCollide = false -- Disable collision
							consumable.Anchored = true -- Optionally anchor it
							print("Teleported and disabled collision for consumable:", consumable.Name)
						elseif consumable:IsA("Model") then
							-- Handle models by setting properties for all parts inside the model
							for _, part in pairs(consumable:GetDescendants()) do
								if part:IsA("BasePart") then
									part.Position = humanoidRootPart.Position
									part.CanCollide = false -- Disable collision
									part.Anchored = true -- Optionally anchor it
								end
							end
							print("Teleported and disabled collision for model:", consumable.Name)
						end
					end
				end
			else
				warn("HumanoidRootPart not found in player's character")
			end
		else
			warn("_ConsumableSpawns folder not found in Workspace")
		end
	end

	-- Initial call to teleport existing consumables and disable collision
	teleportAndDisableCollisionForConsumables()

	-- Continuously check and teleport new consumables (e.g., every 5 seconds)
	while true do
		wait(1)
		teleportAndDisableCollisionForConsumables()
	end

end)

InfiniteStamina.MouseButton1Down:connect(function()
	while task.wait() do
		game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui["Stamina Bar"].stamina.Enabled = false
	end
end)

TPToOmni.MouseButton1Down:connect(function()
	-- Get the local player
local player = game.Players.LocalPlayer

-- Function to teleport the player to MainMeshPart
local function teleportToMainMeshPart()
    local roomsFolder = game.Workspace:FindFirstChild("_ROOMS")
    
    if roomsFolder then
        print("_ROOMS folder found")
        
        local omnipotentRoom = roomsFolder:FindFirstChild("OmnipotentRoom")
        
        if omnipotentRoom and omnipotentRoom:IsA("Model") then
            print("OmnipotentRoom found")
            
            local mainMeshPart = omnipotentRoom:FindFirstChild("MainMeshPart")
            
            if mainMeshPart and mainMeshPart:IsA("BasePart") then
                print("MainMeshPart found")
                
                local character = player.Character or player.CharacterAdded:Wait()
                local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
                
                if humanoidRootPart then
                    humanoidRootPart.CFrame = mainMeshPart.CFrame
                    print("Teleported player to MainMeshPart")
                    
                    -- Wait for 1 second before interacting with the prompt
                    wait(1)
                    
                    -- Interact with ProximityPrompt programmatically
                    local attachment = mainMeshPart:FindFirstChild("Attachment")
                    if attachment then
                        local proximityPrompt = attachment:FindFirstChildOfClass("ProximityPrompt")
                        
                        if proximityPrompt and proximityPrompt:IsA("ProximityPrompt") then
                            -- Simulate user interaction
                            proximityPrompt:Fire()
                            print("Interacted with ProximityPrompt")
                        else
                            warn("ProximityPrompt not found in Attachment")
                        end
                    else
                        warn("Attachment not found in MainMeshPart")
                    end
                else
                    warn("HumanoidRootPart not found in player's character")
                end
            else
                warn("MainMeshPart not found or is not a BasePart in OmnipotentRoom")
            end
        else
            warn("OmnipotentRoom not found or is not a Model in _ROOMS")
        end
    else
        warn("_ROOMS folder not found in Workspace")
    end
end

-- Function to handle new OmnipotentRoom appearance
local function onRoomChildAdded(child)
    if child.Name == "OmnipotentRoom" and child:IsA("Model") then
        print("OmnipotentRoom added")
        
        local mainMeshPart = child:FindFirstChild("MainMeshPart")
        if mainMeshPart and mainMeshPart:IsA("BasePart") then
            print("MainMeshPart found in newly added OmnipotentRoom")
            teleportToMainMeshPart()
        end
    end
end

-- Connect the ChildAdded event to handle new rooms
game.Workspace._ROOMS.ChildAdded:Connect(onRoomChildAdded)

-- Optionally, check and teleport if OmnipotentRoom is already present
for _, child in pairs(game.Workspace._ROOMS:GetChildren()) do
    if child.Name == "OmnipotentRoom" and child:IsA("Model") then
        print("Checking existing OmnipotentRoom")
        local mainMeshPart = child:FindFirstChild("MainMeshPart")
        if mainMeshPart and mainMeshPart:IsA("BasePart") then
            print("MainMeshPart found in existing OmnipotentRoom")
            teleportToMainMeshPart()
        end
    end
end
end)

KingTurtCastle.MouseButton1Down:connect(function()
	-- Teleport player to specific coordinates
	local player = game.Players.LocalPlayer
	local teleportPosition = Vector3.new(-1118, 161, -1523)

	-- Teleport the player
	player.Character.HumanoidRootPart.CFrame = CFrame.new(teleportPosition)
end)

PawnShop.MouseButton1Down:connect(function()
	-- Teleport player to specific coordinates
	local player = game.Players.LocalPlayer
	local teleportPosition = Vector3.new(-541, 138, 517)

	-- Teleport the player
	player.Character.HumanoidRootPart.CFrame = CFrame.new(teleportPosition)

end)

StatReset.MouseButton1Down:connect(function()
	-- Teleport player to specific coordinates
	local player = game.Players.LocalPlayer
	local teleportPosition = Vector3.new(-503, 137, 538)

	-- Teleport the player
	player.Character.HumanoidRootPart.CFrame = CFrame.new(teleportPosition)

end)

GunDealer.MouseButton1Down:connect(function()
	-- Teleport player to specific coordinates
	local player = game.Players.LocalPlayer
	local teleportPosition = Vector3.new(-760, 138, -1252)

	-- Teleport the player
	player.Character.HumanoidRootPart.CFrame = CFrame.new(teleportPosition)

end)

-- Button Scripts:

local function JCBKYKN_fake_script() -- OpenPlayer.OpenScript 
	local script = Instance.new('LocalScript', OpenPlayer)

	script.Parent.MouseButton1Click:connect(function()
		script.Parent.Parent.HideMenu.Visible = true
		script.Parent.Parent.PlayerFrame.Visible = true
		script.Parent.Parent.WorldFrame.Visible = false
		script.Parent.Parent.UniversalFrame.Visible = false
		script.Parent.Parent.TPFrame.Visible = false
		wait(0.1)
	end)
end
coroutine.wrap(JCBKYKN_fake_script)()
local function GBMHMCI_fake_script() -- MainFrame.Draggable 
	local script = Instance.new('Script', MainFrame)

	local frame = script.Parent
	frame.Active = true
	frame.Selectable = true
	frame.Draggable = true
	
	
end
coroutine.wrap(GBMHMCI_fake_script)()
local function MPLI_fake_script() -- OpenTP.OpenScript 
	local script = Instance.new('LocalScript', OpenTP)

	script.Parent.MouseButton1Click:connect(function()
		script.Parent.Parent.HideMenu.Visible = true
		script.Parent.Parent.PlayerFrame.Visible = false
		script.Parent.Parent.WorldFrame.Visible = false
		script.Parent.Parent.UniversalFrame.Visible = false
		script.Parent.Parent.TPFrame.Visible = true
		wait(0.1)
	end)
end
coroutine.wrap(MPLI_fake_script)()
local function EWIOYZ_fake_script() -- InfiniteYield.LocalScript 
	local script = Instance.new('LocalScript', InfiniteYield)

	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end
coroutine.wrap(EWIOYZ_fake_script)()
local function WJJD_fake_script() -- CloseMenu.OpenScript 
	local script = Instance.new('LocalScript', CloseMenu)

	script.Parent.MouseButton1Click:connect(function()
		script.Parent.Parent.Parent.Enabled = false
		wait(0.1)
	end)
end
coroutine.wrap(WJJD_fake_script)()
local function ZXLMIRF_fake_script() -- HideMenu.OpenScript 
	local script = Instance.new('LocalScript', HideMenu)

	script.Parent.MouseButton1Click:connect(function()
		script.Parent.Parent.HideMenu.Visible = false
		script.Parent.Parent.PlayerFrame.Visible = false
		script.Parent.Parent.WorldFrame.Visible = false
		script.Parent.Parent.UniversalFrame.Visible = false
		script.Parent.Parent.TPFrame.Visible = false
		wait(0.1)
	end)
end
coroutine.wrap(ZXLMIRF_fake_script)()
local function IBCARX_fake_script() -- OpenUniversal.OpenScript 
	local script = Instance.new('LocalScript', OpenUniversal)

	script.Parent.MouseButton1Click:connect(function()
		script.Parent.Parent.HideMenu.Visible = true
		script.Parent.Parent.PlayerFrame.Visible = false
		script.Parent.Parent.WorldFrame.Visible = false
		script.Parent.Parent.UniversalFrame.Visible = true
		script.Parent.Parent.TPFrame.Visible = false
		wait(0.1)
	end)
end
coroutine.wrap(IBCARX_fake_script)()
local function XXVHJJK_fake_script() -- OpenWorld.OpenScript 
	local script = Instance.new('LocalScript', OpenWorld)

	script.Parent.MouseButton1Click:connect(function()
		script.Parent.Parent.HideMenu.Visible = true
		script.Parent.Parent.PlayerFrame.Visible = false
		script.Parent.Parent.WorldFrame.Visible = true
		script.Parent.Parent.UniversalFrame.Visible = false
		script.Parent.Parent.TPFrame.Visible = false
		wait(0.1)
	end)
end
coroutine.wrap(XXVHJJK_fake_script)()
