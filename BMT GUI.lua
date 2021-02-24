-- Gui to Lua
-- Version: 3.2

-- Instances:

local BloodMoonTycoonCheatGUI = Instance.new("ScreenGui")
local GUIFrame = Instance.new("Frame")
local Gems = Instance.new("TextButton")
local Loopkill = Instance.new("TextButton")
local Playerkill = Instance.new("TextButton")
local Zombie = Instance.new("TextButton")
local God = Instance.new("TextButton")
local Credits = Instance.new("TextLabel")
local FirstGUI = Instance.new("TextLabel")
local AutoRebirthRed = Instance.new("TextButton")
local ExpirimentalFeatures = Instance.new("TextLabel")
local AutoRebirthGreen = Instance.new("TextButton")
local AutoRebirthYellow = Instance.new("TextButton")
local AutoRebirthBlue = Instance.new("TextButton")
local Support = Instance.new("TextLabel")
local Close = Instance.new("TextButton")
local Open = Instance.new("Frame")
local Open_2 = Instance.new("TextButton")

--Properties:

BloodMoonTycoonCheatGUI.Name = "BloodMoonTycoonCheatGUI"
BloodMoonTycoonCheatGUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
BloodMoonTycoonCheatGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

GUIFrame.Name = "GUIFrame"
GUIFrame.Parent = BloodMoonTycoonCheatGUI
GUIFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
GUIFrame.Position = UDim2.new(0.342954278, 0, 0.268178701, 0)
GUIFrame.Selectable = true
GUIFrame.Size = UDim2.new(0, 589, 0, 284)
GUIFrame.Visible = false

Gems.Name = "Gems"
Gems.Parent = GUIFrame
Gems.BackgroundColor3 = Color3.fromRGB(170, 85, 255)
Gems.BorderColor3 = Color3.fromRGB(255, 255, 255)
Gems.Position = UDim2.new(0.0267922375, 0, 0.0988827944, 0)
Gems.Size = UDim2.new(0, 150, 0, 33)
Gems.Font = Enum.Font.SourceSans
Gems.Text = "Give Gems And Sapphires"
Gems.TextColor3 = Color3.fromRGB(0, 0, 0)
Gems.TextSize = 14.000
Gems.MouseButton1Down:connect(function()
	while wait(0.1) do
		game.ReplicatedStorage.BuySapphireItemFunction:InvokeServer("AceExoSuitFrame",-999999)
		game.ReplicatedStorage.BuyItemFunction:InvokeServer("EmojiHatFrame",-999999)
	end 
end)

Loopkill.Name = "Loopkill"
Loopkill.Parent = GUIFrame
Loopkill.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
Loopkill.BorderColor3 = Color3.fromRGB(255, 255, 255)
Loopkill.Position = UDim2.new(0.371319354, 0, 0.0988827944, 0)
Loopkill.Size = UDim2.new(0, 150, 0, 33)
Loopkill.Font = Enum.Font.SourceSans
Loopkill.Text = "Loopkill All Zombies"
Loopkill.TextColor3 = Color3.fromRGB(0, 0, 0)
Loopkill.TextSize = 14.000
Loopkill.MouseButton1Down:connect(function()
	while wait() do
		for i,v in pairs(workspace:children()) do
			if v:findFirstChildOfClass("Humanoid") and v:findFirstChild("Head") and not game.Players:GetPlayerFromCharacter(v) then
				game.ReplicatedStorage.DamageEvent:FireServer(v:findFirstChildOfClass("Humanoid"), v:findFirstChildOfClass("Humanoid").Health)
			end
		end
	end
end)

Playerkill.Name = "Playerkill"
Playerkill.Parent = GUIFrame
Playerkill.BackgroundColor3 = Color3.fromRGB(255, 61, 23)
Playerkill.BorderColor3 = Color3.fromRGB(255, 255, 255)
Playerkill.Position = UDim2.new(0.704086781, 0, 0.0988827944, 0)
Playerkill.Size = UDim2.new(0, 150, 0, 33)
Playerkill.Font = Enum.Font.SourceSans
Playerkill.Text = "Kill All Players 1 Wave"
Playerkill.TextColor3 = Color3.fromRGB(0, 0, 0)
Playerkill.TextSize = 14.000
Playerkill.MouseButton1Down:connect(function()
	for i,v in pairs(game.Players:children()) do
		game.ReplicatedStorage.DamageEvent:FireServer(v.Character:findFirstChildOfClass("Humanoid"), v.Character:findFirstChildOfClass("Humanoid").Health)
	end
end)

Zombie.Name = "Zombie"
Zombie.Parent = GUIFrame
Zombie.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
Zombie.BorderColor3 = Color3.fromRGB(255, 255, 255)
Zombie.Position = UDim2.new(0.371319354, 0, 0.324234903, 0)
Zombie.Size = UDim2.new(0, 150, 0, 33)
Zombie.Font = Enum.Font.SourceSans
Zombie.Text = "Kill All Zombies 1 Wave"
Zombie.TextColor3 = Color3.fromRGB(0, 0, 0)
Zombie.TextSize = 14.000
Zombie.MouseButton1Down:connect(function()
	for i,v in pairs(workspace:children()) do
		if v:findFirstChildOfClass("Humanoid") and v:findFirstChild("Head") and not game.Players:GetPlayerFromCharacter(v) then
			game.ReplicatedStorage.DamageEvent:FireServer(v:findFirstChildOfClass("Humanoid"), v:findFirstChildOfClass("Humanoid").Health)
		end
	end
end)

God.Name = "God"
God.Parent = GUIFrame
God.BackgroundColor3 = Color3.fromRGB(255, 235, 117)
God.BorderColor3 = Color3.fromRGB(255, 255, 255)
God.Position = UDim2.new(0.0283651948, 0, 0.324234903, 0)
God.Size = UDim2.new(0, 150, 0, 33)
God.Font = Enum.Font.SourceSans
God.Text = "Godmode"
God.TextColor3 = Color3.fromRGB(0, 0, 0)
God.TextSize = 14.000
God.MouseButton1Down:connect(function()
	game.ReplicatedStorage.DamageEvent:FireServer(game.Players.LocalPlayer.Character.Humanoid, -math.huge)
end)

Credits.Name = "Credits"
Credits.Parent = GUIFrame
Credits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Credits.BorderColor3 = Color3.fromRGB(255, 255, 255)
Credits.Position = UDim2.new(0.672325969, 0, 0.519436717, 0)
Credits.Size = UDim2.new(0, 188, 0, 25)
Credits.Font = Enum.Font.SourceSans
Credits.Text = "Gui Made By GamingBoyZ379#7305"
Credits.TextColor3 = Color3.fromRGB(0, 0, 0)
Credits.TextSize = 14.000

FirstGUI.Name = "First GUI"
FirstGUI.Parent = GUIFrame
FirstGUI.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FirstGUI.BorderColor3 = Color3.fromRGB(255, 255, 255)
FirstGUI.Position = UDim2.new(0.657045782, 0, 0.310009569, 0)
FirstGUI.Size = UDim2.new(0, 202, 0, 41)
FirstGUI.Font = Enum.Font.SourceSans
FirstGUI.Text = "This Is My First GUI So Please Don't Hate"
FirstGUI.TextColor3 = Color3.fromRGB(0, 0, 0)
FirstGUI.TextSize = 14.000

AutoRebirthRed.Name = "AutoRebirthRed"
AutoRebirthRed.Parent = GUIFrame
AutoRebirthRed.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AutoRebirthRed.Position = UDim2.new(0.0271646865, 0, 0.735915482, 0)
AutoRebirthRed.Size = UDim2.new(0, 131, 0, 26)
AutoRebirthRed.Font = Enum.Font.SourceSans
AutoRebirthRed.Text = "Auto Rebirth Team: Red"
AutoRebirthRed.TextColor3 = Color3.fromRGB(0, 0, 0)
AutoRebirthRed.TextSize = 14.000
AutoRebirthRed.MouseButton1Down:connect(function()
	while wait(6) do
		local A_1 = 121
		local A_2 = game:GetService("Workspace").Tycoons["Really red"]
		local A_3 = 765329874
		local Event = game:GetService("ReplicatedStorage").PlayerRebirthEvent
		Event:FireServer(A_1, A_2, A_3)
	end
end)

ExpirimentalFeatures.Name = "Expirimental Features"
ExpirimentalFeatures.Parent = GUIFrame
ExpirimentalFeatures.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ExpirimentalFeatures.Position = UDim2.new(0.0865874439, 0, 0.517605603, 0)
ExpirimentalFeatures.Size = UDim2.new(0, 200, 0, 44)
ExpirimentalFeatures.Font = Enum.Font.SciFi
ExpirimentalFeatures.Text = "Expirimental Features"
ExpirimentalFeatures.TextColor3 = Color3.fromRGB(0, 0, 0)
ExpirimentalFeatures.TextSize = 14.000

AutoRebirthGreen.Name = "AutoRebirthGreen"
AutoRebirthGreen.Parent = GUIFrame
AutoRebirthGreen.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AutoRebirthGreen.Position = UDim2.new(0.0271646865, 0, 0.868028224, 0)
AutoRebirthGreen.Size = UDim2.new(0, 131, 0, 26)
AutoRebirthGreen.Font = Enum.Font.SourceSans
AutoRebirthGreen.Text = "Auto Rebirth Team: Green"
AutoRebirthGreen.TextColor3 = Color3.fromRGB(0, 0, 0)
AutoRebirthGreen.TextSize = 14.000
AutoRebirthGreen.MouseButton1Down:connect(function()
	while wait(6) do
		local A_1 = 121
		local A_2 = game:GetService("Workspace").Tycoons["Lime green"]
		local A_3 = 765329874
		local Event = game:GetService("ReplicatedStorage").PlayerRebirthEvent
		Event:FireServer(A_1, A_2, A_3)
	end
end)

AutoRebirthYellow.Name = "AutoRebirthYellow"
AutoRebirthYellow.Parent = GUIFrame
AutoRebirthYellow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AutoRebirthYellow.Position = UDim2.new(0.312393904, 0, 0.869718313, 0)
AutoRebirthYellow.Size = UDim2.new(0, 131, 0, 26)
AutoRebirthYellow.Font = Enum.Font.SourceSans
AutoRebirthYellow.Text = "Auto Rebirth Team: Yellow"
AutoRebirthYellow.TextColor3 = Color3.fromRGB(0, 0, 0)
AutoRebirthYellow.TextSize = 14.000
AutoRebirthYellow.MouseButton1Down:connect(function()
	while wait(6) do
		local A_1 = 121
		local A_2 = game:GetService("Workspace").Tycoons["New Yeller"]
		local A_3 = 765329874
		local Event = game:GetService("ReplicatedStorage").PlayerRebirthEvent
		Event:FireServer(A_1, A_2, A_3)
	end
end)

AutoRebirthBlue.Name = "AutoRebirthBlue"
AutoRebirthBlue.Parent = GUIFrame
AutoRebirthBlue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AutoRebirthBlue.Position = UDim2.new(0.312393874, 0, 0.735915482, 0)
AutoRebirthBlue.Size = UDim2.new(0, 131, 0, 26)
AutoRebirthBlue.Font = Enum.Font.SourceSans
AutoRebirthBlue.Text = "Auto Rebirth Team: Blue"
AutoRebirthBlue.TextColor3 = Color3.fromRGB(0, 0, 0)
AutoRebirthBlue.TextSize = 14.000
AutoRebirthBlue.MouseButton1Down:connect(function()
	while wait(6) do
		local A_1 = 121
		local A_2 = game:GetService("Workspace").Tycoons["Really blue"]
		local A_3 = 765329874
		local Event = game:GetService("ReplicatedStorage").PlayerRebirthEvent
		Event:FireServer(A_1, A_2, A_3)
	end
end)

Support.Name = "Support"
Support.Parent = GUIFrame
Support.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Support.Position = UDim2.new(0.567062676, 0, 0.704225361, 0)
Support.Size = UDim2.new(0, 250, 0, 73)
Support.Font = Enum.Font.RobotoCondensed
Support.Text = "Message Me If There Are Bugs Or You Need Help"
Support.TextColor3 = Color3.fromRGB(0, 0, 0)
Support.TextSize = 14.000

Close.Name = "Close"
Close.Parent = GUIFrame
Close.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Close.Position = UDim2.new(0.916808248, 0, 0, 0)
Close.Size = UDim2.new(0, 49, 0, 17)
Close.Font = Enum.Font.SourceSans
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(0, 0, 0)
Close.TextSize = 14.000
Close.MouseButton1Down:connect(function()
	Open.Visible = true
	GUIFrame.Visible = false
end)

Open.Name = "Open"
Open.Parent = BloodMoonTycoonCheatGUI
Open.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Open.Position = UDim2.new(0.0629241168, 0, 0, 0)
Open.Size = UDim2.new(0, 124, 0, 24)

Open_2.Name = "Open"
Open_2.Parent = Open
Open_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Open_2.Position = UDim2.new(-0.00567626953, 0, -0.0272736549, 0)
Open_2.Size = UDim2.new(0, 124, 0, 24)
Open_2.Font = Enum.Font.SourceSans
Open_2.Text = "Open"
Open_2.TextColor3 = Color3.fromRGB(0, 0, 0)
Open_2.TextSize = 14.000
Open_2.MouseButton1Down:connect(function()
	Open.Visible = false
	GUIFrame.Visible = true
end)

-- Scripts:

local function GQPULR_fake_script() -- BloodMoonTycoonCheatGUI.Drag GUI Script 
	local script = Instance.new('Script', BloodMoonTycoonCheatGUI)

	frame = script.Parent.BloodMoonTycoonCheatGUI -- Take out {}s, and put name of frame
	frame.Draggable = true
	frame.Active = true
	frame.Selectable = true
end
coroutine.wrap(GQPULR_fake_script)()
