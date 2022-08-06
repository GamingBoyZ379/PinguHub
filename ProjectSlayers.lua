-- Gui to Lua
-- Version: 3.2

-- Instances:

local ProjectSlayersGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local RedeemCodes = Instance.new("TextButton")
local UseSpins = Instance.new("TextButton")
local LazyHub = Instance.new("TextButton")
local SpotifyHub = Instance.new("TextButton")
local LeadmarkerHub = Instance.new("TextButton")
local TrapHub = Instance.new("TextButton")
local SpinLabel = Instance.new("TextLabel")
local OtherHubsLabel = Instance.new("TextLabel")

--Properties:

ProjectSlayersGui.Name = "Project Slayers Gui"
ProjectSlayersGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ProjectSlayersGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ProjectSlayersGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.Position = UDim2.new(0.684721112, 0, 0, 0)
Frame.Size = UDim2.new(0, 390, 0, 299)

Title.Name = "Title"
Title.Parent = Frame
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.Size = UDim2.new(0, 390, 0, 50)
Title.Font = Enum.Font.PermanentMarker
Title.Text = "Project Slayers"
Title.TextColor3 = Color3.fromRGB(0, 0, 0)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextStrokeColor3 = Color3.fromRGB(0, 255, 255)
Title.TextWrapped = true

RedeemCodes.Name = "RedeemCodes"
RedeemCodes.Parent = Frame
RedeemCodes.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RedeemCodes.Position = UDim2.new(0.0204046816, 0, 0.270903021, 0)
RedeemCodes.Size = UDim2.new(0, 166, 0, 41)
RedeemCodes.Font = Enum.Font.SourceSansSemibold
RedeemCodes.Text = "Redeem Codes"
RedeemCodes.TextColor3 = Color3.fromRGB(0, 0, 0)
RedeemCodes.TextSize = 14.000
RedeemCodes.TextWrapped = true
RedeemCodes.MouseButton1Down:connect(function()
	game:GetService("ReplicatedStorage").Remotes["send_code_to_server"]:FireServer("sCyth3Showcase!");
end)

UseSpins.Name = "UseSpins"
UseSpins.Parent = Frame
UseSpins.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UseSpins.Position = UDim2.new(0.558621347, 0, 0.270902991, 0)
UseSpins.Size = UDim2.new(0, 166, 0, 41)
UseSpins.Font = Enum.Font.SourceSansSemibold
UseSpins.Text = "Auto Spin"
UseSpins.TextColor3 = Color3.fromRGB(0, 0, 0)
UseSpins.TextSize = 14.000
UseSpins.MouseButton1Down:connect(function()
	local clans = { "Kamado", "Agatsuma" };

	local players = game:GetService("Players");
	local runService = game:GetService("RunService");
	local replicatedStorage = game:GetService("ReplicatedStorage");

	local localPlayer = players.LocalPlayer;
	local playerData = replicatedStorage:WaitForChild("Player_Data");
	local localData = playerData:WaitForChild(localPlayer.Name);
	local clan = localData:WaitForChild("Clan");

	local remotes = replicatedStorage:WaitForChild("Remotes");
	local sendServer = remotes:WaitForChild("To_Server");
	local handleSpin = sendServer:WaitForChild("Handle_Initiate_S_");

	while task.wait() do
		if (not table.find(clans, clan.Value)) then
			if (game.PlaceId ~= 5956785391) then
				localPlayer:Kick("use the script in the main menu");
			else
				handleSpin:InvokeServer("check_can_spin");
			end
		end
	end 

end)

LazyHub.Name = "Lazy Hub"
LazyHub.Parent = Frame
LazyHub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LazyHub.Position = UDim2.new(0.0204046778, 0, 0.588628769, 0)
LazyHub.Size = UDim2.new(0, 166, 0, 41)
LazyHub.Font = Enum.Font.SourceSansSemibold
LazyHub.Text = "Lazy Hub"
LazyHub.TextColor3 = Color3.fromRGB(0, 0, 0)
LazyHub.TextSize = 14.000
LazyHub.MouseButton1Down:connect(function()
	repeat wait() until game:IsLoaded()

	loadstring(game:HttpGet("https://raw.githubusercontent.com/LioK251/RbScripts/main/lazyhub.lua"))()
end)

SpotifyHub.Name = "SpotifyHub"
SpotifyHub.Parent = Frame
SpotifyHub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SpotifyHub.Position = UDim2.new(0.558621347, 0, 0.588628769, 0)
SpotifyHub.Size = UDim2.new(0, 166, 0, 41)
SpotifyHub.Font = Enum.Font.SourceSansSemibold
SpotifyHub.Text = "Spotify Hub"
SpotifyHub.TextColor3 = Color3.fromRGB(0, 0, 0)
SpotifyHub.TextSize = 14.000
SpotifyHub.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/ewyzu/Spotify-Scripts/main/Project-Slayers"))()
end)

LeadmarkerHub.Name = "LeadmarkerHub"
LeadmarkerHub.Parent = Frame
LeadmarkerHub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LeadmarkerHub.Position = UDim2.new(0.0204046778, 0, 0.762541831, 0)
LeadmarkerHub.Size = UDim2.new(0, 166, 0, 41)
LeadmarkerHub.Font = Enum.Font.SourceSansSemibold
LeadmarkerHub.Text = "Leadmarker Hub"
LeadmarkerHub.TextColor3 = Color3.fromRGB(0, 0, 0)
LeadmarkerHub.TextSize = 14.000
LeadmarkerHub.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/LeadMarker/Scripts/main/ProjectSlayer.lua"))()
end)

TrapHub.Name = "TrapHub"
TrapHub.Parent = Frame
TrapHub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TrapHub.Position = UDim2.new(0.559663773, 0, 0.762541831, 0)
TrapHub.Size = UDim2.new(0, 166, 0, 41)
TrapHub.Font = Enum.Font.SourceSansSemibold
TrapHub.Text = "Trap Hub"
TrapHub.TextColor3 = Color3.fromRGB(0, 0, 0)
TrapHub.TextSize = 14.000
TrapHub.MouseButton1Down:connect(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TrapstarKSSKSKSKKS/Main/main/Project%20Slayer"))()
end)

SpinLabel.Name = "SpinLabel"
SpinLabel.Parent = Frame
SpinLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SpinLabel.BackgroundTransparency = 1.000
SpinLabel.Position = UDim2.new(0, 0, 0.167224079, 0)
SpinLabel.Size = UDim2.new(0, 390, 0, 31)
SpinLabel.Font = Enum.Font.SourceSans
SpinLabel.Text = "--Spin Stuff--"
SpinLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
SpinLabel.TextScaled = true
SpinLabel.TextSize = 14.000
SpinLabel.TextWrapped = true

OtherHubsLabel.Name = "OtherHubsLabel"
OtherHubsLabel.Parent = Frame
OtherHubsLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
OtherHubsLabel.BackgroundTransparency = 1.000
OtherHubsLabel.Position = UDim2.new(0, 0, 0.428093642, 0)
OtherHubsLabel.Size = UDim2.new(0, 390, 0, 31)
OtherHubsLabel.Font = Enum.Font.SourceSans
OtherHubsLabel.Text = "--Other Hubs And Scripts--"
OtherHubsLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
OtherHubsLabel.TextScaled = true
OtherHubsLabel.TextSize = 14.000
OtherHubsLabel.TextWrapped = true

-- Scripts:

local function HYOTSSO_fake_script() -- ProjectSlayersGui.Draggable 
	local script = Instance.new('LocalScript', ProjectSlayersGui)

	frame = script.Parent.Frame
	frame.Draggable = true
	frame.Selectable = true
	frame.Active = true
	
	
end
coroutine.wrap(HYOTSSO_fake_script)()
