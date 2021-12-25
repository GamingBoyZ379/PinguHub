_G.DiscordKey = ""

local newEvent = {["Name"] = "Event area", ["Currency"] = "Lolipop", ["Image"] = "rbxassetid://6479511749", ["Color"] = Color3.fromRGB(235, 200, 50)}
local oldCurrency = {"Silver", "Rainbows", "Tickets", "Presents", "CandyCorn", "CandyCanes", "Flowers"}
local latestExcludeNames = "Ignore this feature. It does not work."
_G.BubbleAlert = false
_G.EggsAlert = falsetoggle
_G.CoinAlert = false
_G.GemAlert = false
_G.CandyAlert = false
_G.BlocksAlert = false
_G.ShellsAlert = false
_G.PearlsAlert = false
_G.StarsAlert = false
_G.MagmaAlert = false
_G.CrystalAlert = false
_G.EventCurrAlert = false

local LatestSupportedVersion = 1855

function scr()
    game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("ScreenGui")
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(function()
		wait(900)
       vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
       wait(1)
       vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)
	
local InfoPanel = Instance.new("ScreenGui")
local MainInfoFrame = Instance.new("Frame")
local UnderLine = Instance.new("Frame")
local WindowLabel = Instance.new("TextLabel")
local expandButton = Instance.new("TextButton")
local StatFrame = Instance.new("Frame")
local Shells = Instance.new("TextLabel")
local Stars = Instance.new("TextLabel")
local Pearls = Instance.new("TextLabel")
local Magma = Instance.new("TextLabel")
local Gems = Instance.new("TextLabel")
local Crystals = Instance.new("TextLabel")
local Coins = Instance.new("TextLabel")
local Candy = Instance.new("TextLabel")
local BlocksPerHour = Instance.new("TextLabel")
local CoinAlertimage = Instance.new("ImageLabel")
local CoinAlertButton = Instance.new("TextButton")
local BubbleAlertimage = Instance.new("ImageLabel")
local BubbleAlertButton = Instance.new("TextButton")
local EventCurrency = Instance.new("TextLabel")
local SaveSettingsimage = Instance.new("ImageLabel")
local SaveButton = Instance.new("TextButton")
local PearlsAlertimage = Instance.new("ImageLabel")
local PearlsAlertButton = Instance.new("TextButton")
local MagmaAlertimage = Instance.new("ImageLabel")
local MagmaAlertButton = Instance.new("TextButton")
local ShellsAlertimage = Instance.new("ImageLabel")
local ShellsAlertButton = Instance.new("TextButton")
local BlocksAlertimage = Instance.new("ImageLabel")
local BlocksAlertButton = Instance.new("TextButton")
local EggsAlertimage = Instance.new("ImageLabel")
local EggsAlertButton = Instance.new("TextButton")
local StarsAlertimage = Instance.new("ImageLabel")
local StarsAlertButton = Instance.new("TextButton")
local Eggs = Instance.new("TextLabel")
local DiscordKeyBox = Instance.new("TextBox")
local Discordimage = Instance.new("ImageLabel")
local DiscordButton = Instance.new("TextButton")
local BubblesPerHour = Instance.new("TextLabel")
local PetAlertimage = Instance.new("ImageLabel")
local PetAlertButton = Instance.new("TextButton")
local ExcludedAlerts = Instance.new("TextBox")
local LoadSettingsimage = Instance.new("ImageLabel")
local LoadButton = Instance.new("TextButton")
local EventAlertimage = Instance.new("ImageLabel")
local EventAlertButton = Instance.new("TextButton")
local GemAlertimage = Instance.new("ImageLabel")
local GemAlertButton = Instance.new("TextButton")
local CandyAlertimage = Instance.new("ImageLabel")
local CandyAlertButton = Instance.new("TextButton")
local CrystalAlertimage = Instance.new("ImageLabel")
local CrystalAlertButton = Instance.new("TextButton")
local BlocksImage = Instance.new("ImageLabel")
local CandyImage = Instance.new("ImageLabel")
local BubbleImage = Instance.new("ImageLabel")
local CoinImage = Instance.new("ImageLabel")
local EggImage = Instance.new("ImageLabel")
local CrystalsImage = Instance.new("ImageLabel")
local EventImage = Instance.new("ImageLabel")
local GemImage = Instance.new("ImageLabel")
local MagmaImage = Instance.new("ImageLabel")
local PearlsImage = Instance.new("ImageLabel")
local ShellsImage = Instance.new("ImageLabel")
local StarsImage = Instance.new("ImageLabel")
local EggsPerMin = Instance.new("TextLabel")
local EggsPerHour = Instance.new("TextLabel")
local BubblesPerMin = Instance.new("TextLabel")
local Bubbles = Instance.new("TextLabel")
local BlocksPerMin = Instance.new("TextLabel")
local Blocks = Instance.new("TextLabel")
local CandyPerMin = Instance.new("TextLabel")
local CandyPerHour = Instance.new("TextLabel")
local CoinsPerMin = Instance.new("TextLabel")
local CoinsPerHour = Instance.new("TextLabel")
local CrystalsPerMin = Instance.new("TextLabel")
local CrystalsPerHour = Instance.new("TextLabel")
local EventCurrencyPerMin = Instance.new("TextLabel")
local EventCurrencyPerHour = Instance.new("TextLabel")
local GemsPerMin = Instance.new("TextLabel")
local GemsPerHour = Instance.new("TextLabel")
local MagmaPerMin = Instance.new("TextLabel")
local MagmaPerHour = Instance.new("TextLabel")
local PearlsPerMin = Instance.new("TextLabel")
local PearlsPerHour = Instance.new("TextLabel")
local ShellsPerMin = Instance.new("TextLabel")
local ShellsPerHour = Instance.new("TextLabel")
local StarsPerMin = Instance.new("TextLabel")
local StarsPerHour = Instance.new("TextLabel")

--Properties:

InfoPanel.Name = "InfoPanel"
--InfoPanel.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
InfoPanel.Parent = game.CoreGui
InfoPanel.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainInfoFrame.Name = "MainInfoFrame"
MainInfoFrame.Parent = InfoPanel
MainInfoFrame.Active = true
MainInfoFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
MainInfoFrame.BorderSizePixel = 0
MainInfoFrame.Draggable = true
MainInfoFrame.Position = UDim2.new(0, 35, 0, -20)
MainInfoFrame.Size = UDim2.new(0, 476, 0, 32)

UnderLine.Name = "UnderLine"
UnderLine.Parent = MainInfoFrame
UnderLine.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
UnderLine.BorderColor3 = Color3.fromRGB(50, 50, 50)
UnderLine.BorderSizePixel = 0
UnderLine.Position = UDim2.new(0, 0, 0, 31)
UnderLine.Size = UDim2.new(0, 475, 0, 2)

WindowLabel.Name = "WindowLabel"
WindowLabel.Parent = MainInfoFrame
WindowLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
WindowLabel.BackgroundTransparency = 1.000
WindowLabel.Size = UDim2.new(0, 476, 0, 32)
WindowLabel.Font = Enum.Font.SourceSans
WindowLabel.Text = "Spark based on Strelizia"
WindowLabel.TextColor3 = Color3.fromRGB(150, 150, 150)
WindowLabel.TextScaled = true
WindowLabel.TextSize = 20.000
WindowLabel.TextStrokeTransparency = 100.000
WindowLabel.TextWrapped = true

expandButton.Name = "expandButton"
expandButton.Parent = MainInfoFrame
expandButton.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
expandButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
expandButton.Position = UDim2.new(0.926579833, 0, 0.09375, 0)
expandButton.Size = UDim2.new(0, 26, 0, 25)
expandButton.Font = Enum.Font.SourceSans
expandButton.Text = "+"
expandButton.TextColor3 = Color3.fromRGB(0, 0, 0)
expandButton.TextSize = 14.000

StatFrame.Name = "StatFrame"
StatFrame.Parent = MainInfoFrame
StatFrame.Active = true
StatFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
StatFrame.Position = UDim2.new(0, 1, 0, 33)
StatFrame.Size = UDim2.new(0, 474, 0, 422)
StatFrame.Visible = false

Shells.Name = "Shells"
Shells.Parent = StatFrame
Shells.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Shells.BorderSizePixel = 0
Shells.Position = UDim2.new(0, 42, 0, 270)
Shells.Size = UDim2.new(0, 210, 0, 24)
Shells.Font = Enum.Font.Cartoon
Shells.Text = "0"
Shells.TextColor3 = Color3.fromRGB(255, 170, 0)
Shells.TextSize = 23.000
Shells.TextStrokeTransparency = 0.650
Shells.TextXAlignment = Enum.TextXAlignment.Right

Stars.Name = "Stars"
Stars.Parent = StatFrame
Stars.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Stars.BorderSizePixel = 0
Stars.Position = UDim2.new(0, 42, 0, 330)
Stars.Size = UDim2.new(0, 210, 0, 24)
Stars.Font = Enum.Font.Cartoon
Stars.Text = "0"
Stars.TextColor3 = Color3.fromRGB(255, 255, 0)
Stars.TextSize = 23.000
Stars.TextStrokeTransparency = 0.650
Stars.TextXAlignment = Enum.TextXAlignment.Right

Pearls.Name = "Pearls"
Pearls.Parent = StatFrame
Pearls.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Pearls.BorderSizePixel = 0
Pearls.Position = UDim2.new(0, 42, 0, 300)
Pearls.Size = UDim2.new(0, 210, 0, 24)
Pearls.Font = Enum.Font.Cartoon
Pearls.Text = "0"
Pearls.TextColor3 = Color3.fromRGB(221, 255, 255)
Pearls.TextSize = 23.000
Pearls.TextStrokeTransparency = 0.650
Pearls.TextXAlignment = Enum.TextXAlignment.Right

Magma.Name = "Magma"
Magma.Parent = StatFrame
Magma.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Magma.BorderSizePixel = 0
Magma.Position = UDim2.new(0, 42, 0, 360)
Magma.Size = UDim2.new(0, 210, 0, 24)
Magma.Font = Enum.Font.Cartoon
Magma.Text = "0"
Magma.TextColor3 = Color3.fromRGB(211, 71, 6)
Magma.TextSize = 23.000
Magma.TextStrokeTransparency = 0.650
Magma.TextXAlignment = Enum.TextXAlignment.Right

Gems.Name = "Gems"
Gems.Parent = StatFrame
Gems.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Gems.BorderSizePixel = 0
Gems.Position = UDim2.new(0, 42, 0, 180)
Gems.Size = UDim2.new(0, 210, 0, 24)
Gems.Font = Enum.Font.Cartoon
Gems.Text = "0"
Gems.TextColor3 = Color3.fromRGB(170, 0, 255)
Gems.TextSize = 23.000
Gems.TextStrokeTransparency = 0.650
Gems.TextXAlignment = Enum.TextXAlignment.Right

Crystals.Name = "Crystals"
Crystals.Parent = StatFrame
Crystals.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Crystals.BorderSizePixel = 0
Crystals.Position = UDim2.new(0, 42, 0, 390)
Crystals.Size = UDim2.new(0, 210, 0, 24)
Crystals.Font = Enum.Font.Cartoon
Crystals.Text = "0"
Crystals.TextColor3 = Color3.fromRGB(255, 0, 255)
Crystals.TextSize = 23.000
Crystals.TextStrokeTransparency = 0.650
Crystals.TextXAlignment = Enum.TextXAlignment.Right

Coins.Name = "Coins"
Coins.Parent = StatFrame
Coins.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Coins.BorderSizePixel = 0
Coins.Position = UDim2.new(0, 42, 0, 150)
Coins.Size = UDim2.new(0, 210, 0, 24)
Coins.Font = Enum.Font.Cartoon
Coins.Text = "0"
Coins.TextColor3 = Color3.fromRGB(255, 215, 11)
Coins.TextSize = 23.000
Coins.TextStrokeTransparency = 0.650
Coins.TextXAlignment = Enum.TextXAlignment.Right

Candy.Name = "Candy"
Candy.Parent = StatFrame
Candy.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Candy.BorderSizePixel = 0
Candy.Position = UDim2.new(0, 42, 0, 210)
Candy.Size = UDim2.new(0, 210, 0, 24)
Candy.Font = Enum.Font.Cartoon
Candy.Text = "0"
Candy.TextColor3 = Color3.fromRGB(255, 85, 255)
Candy.TextSize = 23.000
Candy.TextStrokeTransparency = 0.650
Candy.TextXAlignment = Enum.TextXAlignment.Right

BlocksPerHour.Name = "BlocksPerHour"
BlocksPerHour.Parent = StatFrame
BlocksPerHour.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
BlocksPerHour.BorderSizePixel = 0
BlocksPerHour.Position = UDim2.new(0, 340, 0, 240)
BlocksPerHour.Size = UDim2.new(0, 88, 0, 24)
BlocksPerHour.Font = Enum.Font.Cartoon
BlocksPerHour.Text = "0/hr"
BlocksPerHour.TextColor3 = Color3.fromRGB(255, 0, 0)
BlocksPerHour.TextSize = 18.000
BlocksPerHour.TextStrokeTransparency = 0.650
BlocksPerHour.TextXAlignment = Enum.TextXAlignment.Right

CoinAlertimage.Name = "CoinAlertimage"
CoinAlertimage.Parent = StatFrame
CoinAlertimage.Active = true
CoinAlertimage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CoinAlertimage.BackgroundTransparency = 1.000
CoinAlertimage.Position = UDim2.new(0, 432, 0, 150)
CoinAlertimage.Size = UDim2.new(0, 34, 0, 24)
CoinAlertimage.SizeConstraint = Enum.SizeConstraint.RelativeXX
CoinAlertimage.Image = "rbxassetid://3570695787"
CoinAlertimage.ImageColor3 = Color3.fromRGB(255, 50, 50)
CoinAlertimage.ImageTransparency = 0.600
CoinAlertimage.ScaleType = Enum.ScaleType.Slice
CoinAlertimage.SliceCenter = Rect.new(100, 100, 100, 100)
CoinAlertimage.SliceScale = 0.060

CoinAlertButton.Name = "CoinAlertButton"
CoinAlertButton.Parent = CoinAlertimage
CoinAlertButton.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
CoinAlertButton.BackgroundTransparency = 1.000
CoinAlertButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
CoinAlertButton.BorderSizePixel = 0
CoinAlertButton.Size = UDim2.new(0, 34, 0, 24)
CoinAlertButton.Font = Enum.Font.SourceSans
CoinAlertButton.Text = "Alert"
CoinAlertButton.TextColor3 = Color3.fromRGB(55, 55, 55)
CoinAlertButton.TextSize = 14.000
CoinAlertButton.TextWrapped = true

BubbleAlertimage.Name = "BubbleAlertimage"
BubbleAlertimage.Parent = StatFrame
BubbleAlertimage.Active = true
BubbleAlertimage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BubbleAlertimage.BackgroundTransparency = 1.000
BubbleAlertimage.Position = UDim2.new(0, 432, 0, 120)
BubbleAlertimage.Size = UDim2.new(0, 34, 0, 24)
BubbleAlertimage.SizeConstraint = Enum.SizeConstraint.RelativeXX
BubbleAlertimage.Image = "rbxassetid://3570695787"
BubbleAlertimage.ImageColor3 = Color3.fromRGB(255, 50, 50)
BubbleAlertimage.ImageTransparency = 0.600
BubbleAlertimage.ScaleType = Enum.ScaleType.Slice
BubbleAlertimage.SliceCenter = Rect.new(100, 100, 100, 100)
BubbleAlertimage.SliceScale = 0.060

BubbleAlertButton.Name = "BubbleAlertButton"
BubbleAlertButton.Parent = BubbleAlertimage
BubbleAlertButton.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
BubbleAlertButton.BackgroundTransparency = 1.000
BubbleAlertButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
BubbleAlertButton.BorderSizePixel = 0
BubbleAlertButton.Size = UDim2.new(0, 34, 0, 24)
BubbleAlertButton.Font = Enum.Font.SourceSans
BubbleAlertButton.Text = "Alert"
BubbleAlertButton.TextColor3 = Color3.fromRGB(55, 55, 55)
BubbleAlertButton.TextSize = 14.000
BubbleAlertButton.TextWrapped = true

EventCurrency.Name = "EventCurrency"
EventCurrency.Parent = StatFrame
EventCurrency.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
EventCurrency.BorderSizePixel = 0
EventCurrency.Position = UDim2.new(0, 42, 0, 420)
EventCurrency.Size = UDim2.new(0, 210, 0, 24)
EventCurrency.Font = Enum.Font.Cartoon
EventCurrency.Text = "0"
EventCurrency.TextColor3 = Color3.fromRGB(0, 0, 0)
EventCurrency.TextSize = 23.000
EventCurrency.TextStrokeTransparency = 0.650
EventCurrency.TextXAlignment = Enum.TextXAlignment.Right
EventCurrency.Visible = false

SaveSettingsimage.Name = "SaveSettingsimage"
SaveSettingsimage.Parent = StatFrame
SaveSettingsimage.Active = true
SaveSettingsimage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SaveSettingsimage.BackgroundTransparency = 1.000
SaveSettingsimage.Position = UDim2.new(0.532999992, 0, 0.910000026, 0)
SaveSettingsimage.Selectable = true
SaveSettingsimage.Size = UDim2.new(0.243556589, 0, 0.0648600087, 0)
SaveSettingsimage.Visible = false
SaveSettingsimage.Image = "rbxassetid://3570695787"
SaveSettingsimage.ImageColor3 = Color3.fromRGB(255, 50, 50)
SaveSettingsimage.ImageTransparency = 0.600
SaveSettingsimage.ScaleType = Enum.ScaleType.Slice
SaveSettingsimage.SliceCenter = Rect.new(100, 100, 100, 100)
SaveSettingsimage.SliceScale = 0.040

SaveButton.Name = "SaveButton"
SaveButton.Parent = SaveSettingsimage
SaveButton.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
SaveButton.BackgroundTransparency = 1.000
SaveButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
SaveButton.BorderSizePixel = 0
SaveButton.Size = UDim2.new(0.686098874, 25, 1.00000012, 0)
SaveButton.Font = Enum.Font.SourceSans
SaveButton.Text = "Save Settings"
SaveButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SaveButton.TextSize = 14.000
SaveButton.TextWrapped = true

PearlsAlertimage.Name = "PearlsAlertimage"
PearlsAlertimage.Parent = StatFrame
PearlsAlertimage.Active = true
PearlsAlertimage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PearlsAlertimage.BackgroundTransparency = 1.000
PearlsAlertimage.Position = UDim2.new(0, 432, 0, 300)
PearlsAlertimage.Selectable = true
PearlsAlertimage.Size = UDim2.new(0, 34, 0, 24)
PearlsAlertimage.SizeConstraint = Enum.SizeConstraint.RelativeXX
PearlsAlertimage.Image = "rbxassetid://3570695787"
PearlsAlertimage.ImageColor3 = Color3.fromRGB(255, 50, 50)
PearlsAlertimage.ImageTransparency = 0.600
PearlsAlertimage.ScaleType = Enum.ScaleType.Slice
PearlsAlertimage.SliceCenter = Rect.new(100, 100, 100, 100)
PearlsAlertimage.SliceScale = 0.060

PearlsAlertButton.Name = "PearlsAlertButton"
PearlsAlertButton.Parent = PearlsAlertimage
PearlsAlertButton.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
PearlsAlertButton.BackgroundTransparency = 1.000
PearlsAlertButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
PearlsAlertButton.BorderSizePixel = 0
PearlsAlertButton.Size = UDim2.new(0, 34, 0, 24)
PearlsAlertButton.Font = Enum.Font.SourceSans
PearlsAlertButton.Text = "Alert"
PearlsAlertButton.TextColor3 = Color3.fromRGB(55, 55, 55)
PearlsAlertButton.TextSize = 14.000
PearlsAlertButton.TextWrapped = true

MagmaAlertimage.Name = "MagmaAlertimage"
MagmaAlertimage.Parent = StatFrame
MagmaAlertimage.Active = true
MagmaAlertimage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MagmaAlertimage.BackgroundTransparency = 1.000
MagmaAlertimage.Position = UDim2.new(0, 432, 0, 360)
MagmaAlertimage.Selectable = true
MagmaAlertimage.Size = UDim2.new(0, 34, 0, 24)
MagmaAlertimage.SizeConstraint = Enum.SizeConstraint.RelativeXX
MagmaAlertimage.Image = "rbxassetid://3570695787"
MagmaAlertimage.ImageColor3 = Color3.fromRGB(255, 50, 50)
MagmaAlertimage.ImageTransparency = 0.600
MagmaAlertimage.ScaleType = Enum.ScaleType.Slice
MagmaAlertimage.SliceCenter = Rect.new(100, 100, 100, 100)
MagmaAlertimage.SliceScale = 0.060

MagmaAlertButton.Name = "MagmaAlertButton"
MagmaAlertButton.Parent = MagmaAlertimage
MagmaAlertButton.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
MagmaAlertButton.BackgroundTransparency = 1.000
MagmaAlertButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
MagmaAlertButton.BorderSizePixel = 0
MagmaAlertButton.Size = UDim2.new(0, 34, 0, 24)
MagmaAlertButton.Font = Enum.Font.SourceSans
MagmaAlertButton.Text = "Alert"
MagmaAlertButton.TextColor3 = Color3.fromRGB(55, 55, 55)
MagmaAlertButton.TextSize = 14.000
MagmaAlertButton.TextWrapped = true

ShellsAlertimage.Name = "ShellsAlertimage"
ShellsAlertimage.Parent = StatFrame
ShellsAlertimage.Active = true
ShellsAlertimage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ShellsAlertimage.BackgroundTransparency = 1.000
ShellsAlertimage.Position = UDim2.new(0, 432, 0, 270)
ShellsAlertimage.Selectable = true
ShellsAlertimage.Size = UDim2.new(0, 34, 0, 24)
ShellsAlertimage.SizeConstraint = Enum.SizeConstraint.RelativeXX
ShellsAlertimage.Image = "rbxassetid://3570695787"
ShellsAlertimage.ImageColor3 = Color3.fromRGB(255, 50, 50)
ShellsAlertimage.ImageTransparency = 0.600
ShellsAlertimage.ScaleType = Enum.ScaleType.Slice
ShellsAlertimage.SliceCenter = Rect.new(100, 100, 100, 100)
ShellsAlertimage.SliceScale = 0.060

ShellsAlertButton.Name = "ShellsAlertButton"
ShellsAlertButton.Parent = ShellsAlertimage
ShellsAlertButton.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
ShellsAlertButton.BackgroundTransparency = 1.000
ShellsAlertButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
ShellsAlertButton.BorderSizePixel = 0
ShellsAlertButton.Size = UDim2.new(0, 34, 0, 24)
ShellsAlertButton.Font = Enum.Font.SourceSans
ShellsAlertButton.Text = "Alert"
ShellsAlertButton.TextColor3 = Color3.fromRGB(55, 55, 55)
ShellsAlertButton.TextSize = 14.000
ShellsAlertButton.TextWrapped = true

BlocksAlertimage.Name = "BlocksAlertimage"
BlocksAlertimage.Parent = StatFrame
BlocksAlertimage.Active = true
BlocksAlertimage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BlocksAlertimage.BackgroundTransparency = 1.000
BlocksAlertimage.Position = UDim2.new(0, 432, 0, 240)
BlocksAlertimage.Selectable = true
BlocksAlertimage.Size = UDim2.new(0, 34, 0, 24)
BlocksAlertimage.SizeConstraint = Enum.SizeConstraint.RelativeXX
BlocksAlertimage.Image = "rbxassetid://3570695787"
BlocksAlertimage.ImageColor3 = Color3.fromRGB(255, 50, 50)
BlocksAlertimage.ImageTransparency = 0.600
BlocksAlertimage.ScaleType = Enum.ScaleType.Slice
BlocksAlertimage.SliceCenter = Rect.new(100, 100, 100, 100)
BlocksAlertimage.SliceScale = 0.060

BlocksAlertButton.Name = "BlocksAlertButton"
BlocksAlertButton.Parent = BlocksAlertimage
BlocksAlertButton.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
BlocksAlertButton.BackgroundTransparency = 1.000
BlocksAlertButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
BlocksAlertButton.BorderSizePixel = 0
BlocksAlertButton.Size = UDim2.new(0, 34, 0, 24)
BlocksAlertButton.Font = Enum.Font.SourceSans
BlocksAlertButton.Text = "Alert"
BlocksAlertButton.TextColor3 = Color3.fromRGB(55, 55, 55)
BlocksAlertButton.TextSize = 14.000
BlocksAlertButton.TextWrapped = true

EggsAlertimage.Name = "EggsAlertimage"
EggsAlertimage.Parent = StatFrame
EggsAlertimage.Active = true
EggsAlertimage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
EggsAlertimage.BackgroundTransparency = 1.000
EggsAlertimage.Position = UDim2.new(0, 432, 0, 90)
EggsAlertimage.Size = UDim2.new(0, 34, 0, 24)
EggsAlertimage.SizeConstraint = Enum.SizeConstraint.RelativeXX
EggsAlertimage.Image = "rbxassetid://3570695787"
EggsAlertimage.ImageColor3 = Color3.fromRGB(255, 50, 50)
EggsAlertimage.ImageTransparency = 0.600
EggsAlertimage.ScaleType = Enum.ScaleType.Slice
EggsAlertimage.SliceCenter = Rect.new(100, 100, 100, 100)
EggsAlertimage.SliceScale = 0.060

EggsAlertButton.Name = "EggsAlertButton"
EggsAlertButton.Parent = EggsAlertimage
EggsAlertButton.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
EggsAlertButton.BackgroundTransparency = 1.000
EggsAlertButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
EggsAlertButton.BorderSizePixel = 0
EggsAlertButton.Size = UDim2.new(0, 34, 0, 24)
EggsAlertButton.Font = Enum.Font.SourceSans
EggsAlertButton.Text = "Alert"
EggsAlertButton.TextColor3 = Color3.fromRGB(55, 55, 55)
EggsAlertButton.TextSize = 14.000
EggsAlertButton.TextWrapped = true

StarsAlertimage.Name = "StarsAlertimage"
StarsAlertimage.Parent = StatFrame
StarsAlertimage.Active = true
StarsAlertimage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
StarsAlertimage.BackgroundTransparency = 1.000
StarsAlertimage.Position = UDim2.new(0, 432, 0, 330)
StarsAlertimage.Selectable = true
StarsAlertimage.Size = UDim2.new(0, 34, 0, 24)
StarsAlertimage.SizeConstraint = Enum.SizeConstraint.RelativeXX
StarsAlertimage.Image = "rbxassetid://3570695787"
StarsAlertimage.ImageColor3 = Color3.fromRGB(255, 50, 50)
StarsAlertimage.ImageTransparency = 0.600
StarsAlertimage.ScaleType = Enum.ScaleType.Slice
StarsAlertimage.SliceCenter = Rect.new(100, 100, 100, 100)
StarsAlertimage.SliceScale = 0.060

StarsAlertButton.Name = "StarsAlertButton"
StarsAlertButton.Parent = StarsAlertimage
StarsAlertButton.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
StarsAlertButton.BackgroundTransparency = 1.000
StarsAlertButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
StarsAlertButton.BorderSizePixel = 0
StarsAlertButton.Size = UDim2.new(0, 34, 0, 24)
StarsAlertButton.Font = Enum.Font.SourceSans
StarsAlertButton.Text = "Alert"
StarsAlertButton.TextColor3 = Color3.fromRGB(55, 55, 55)
StarsAlertButton.TextSize = 14.000
StarsAlertButton.TextWrapped = true

Eggs.Name = "Eggs"
Eggs.Parent = StatFrame
Eggs.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Eggs.BorderSizePixel = 0
Eggs.Position = UDim2.new(0, 42, 0, 90)
Eggs.Size = UDim2.new(0, 210, 0, 24)
Eggs.Font = Enum.Font.Cartoon
Eggs.Text = "0"
Eggs.TextColor3 = Color3.fromRGB(255, 238, 198)
Eggs.TextSize = 23.000
Eggs.TextStrokeTransparency = 0.650
Eggs.TextXAlignment = Enum.TextXAlignment.Right

DiscordKeyBox.Name = "DiscordKeyBox"
DiscordKeyBox.Parent = StatFrame
DiscordKeyBox.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
DiscordKeyBox.Position = UDim2.new(0, 98, 0, 49)
DiscordKeyBox.Size = UDim2.new(0, 368, 0, 33)
DiscordKeyBox.ClearTextOnFocus = false
DiscordKeyBox.Font = Enum.Font.SourceSans
DiscordKeyBox.Text = "Do no use this feature. It does not work."
DiscordKeyBox.TextColor3 = Color3.fromRGB(255, 255, 255)
DiscordKeyBox.TextScaled = true
DiscordKeyBox.TextWrapped = true

Discordimage.Name = "Discordimage"
Discordimage.Parent = StatFrame
Discordimage.Active = true
Discordimage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Discordimage.BackgroundTransparency = 1.000
Discordimage.Position = UDim2.new(0, 10, 0, 48)
Discordimage.Selectable = true
Discordimage.Size = UDim2.new(0, 80, 0, 34)
Discordimage.Image = "rbxassetid://3570695787"
Discordimage.ImageColor3 = Color3.fromRGB(255, 50, 50)
Discordimage.ImageTransparency = 0.600
Discordimage.ScaleType = Enum.ScaleType.Slice
Discordimage.SliceCenter = Rect.new(100, 100, 100, 100)
Discordimage.SliceScale = 0.040

DiscordButton.Name = "DiscordButton"
DiscordButton.Parent = Discordimage
DiscordButton.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
DiscordButton.BackgroundTransparency = 1.000
DiscordButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
DiscordButton.BorderSizePixel = 0
DiscordButton.Position = UDim2.new(-5.96046448e-08, 0, -1.1920929e-07, 0)
DiscordButton.Size = UDim2.new(0.686098874, 25, 1.00000012, 0)
DiscordButton.Font = Enum.Font.SourceSans
DiscordButton.Text = "Discord\nAlerts"
DiscordButton.TextColor3 = Color3.fromRGB(255, 255, 255)
DiscordButton.TextSize = 14.000
DiscordButton.TextWrapped = true

BubblesPerHour.Name = "BubblesPerHour"
BubblesPerHour.Parent = StatFrame
BubblesPerHour.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
BubblesPerHour.BorderSizePixel = 0
BubblesPerHour.Position = UDim2.new(0, 340, 0, 120)
BubblesPerHour.Size = UDim2.new(0, 88, 0, 24)
BubblesPerHour.Font = Enum.Font.Cartoon
BubblesPerHour.Text = "0/hr"
BubblesPerHour.TextColor3 = Color3.fromRGB(255, 170, 255)
BubblesPerHour.TextSize = 18.000
BubblesPerHour.TextStrokeTransparency = 0.650
BubblesPerHour.TextXAlignment = Enum.TextXAlignment.Right

PetAlertimage.Name = "PetAlertimage"
PetAlertimage.Parent = StatFrame
PetAlertimage.Active = true
PetAlertimage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PetAlertimage.BackgroundTransparency = 1.000
PetAlertimage.Position = UDim2.new(0, 10, 0, 6)
PetAlertimage.Selectable = true
PetAlertimage.Size = UDim2.new(0, 80, 0, 34)
PetAlertimage.Image = "rbxassetid://3570695787"
PetAlertimage.ImageColor3 = Color3.fromRGB(255, 50, 50)
PetAlertimage.ImageTransparency = 0.600
PetAlertimage.ScaleType = Enum.ScaleType.Slice
PetAlertimage.SliceCenter = Rect.new(100, 100, 100, 100)
PetAlertimage.SliceScale = 0.040

PetAlertButton.Name = "PetAlertButton"
PetAlertButton.Parent = PetAlertimage
PetAlertButton.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
PetAlertButton.BackgroundTransparency = 1.000
PetAlertButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
PetAlertButton.BorderSizePixel = 0
PetAlertButton.Position = UDim2.new(0, 0, -0.0288723707, 0)
PetAlertButton.Size = UDim2.new(0.686098874, 25, 1.00000012, 0)
PetAlertButton.Font = Enum.Font.SourceSans
PetAlertButton.Text = "In-Game\nAlerts"
PetAlertButton.TextColor3 = Color3.fromRGB(255, 255, 255)
PetAlertButton.TextSize = 14.000
PetAlertButton.TextWrapped = true

ExcludedAlerts.Name = "ExcludedAlerts"
ExcludedAlerts.Parent = StatFrame
ExcludedAlerts.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
ExcludedAlerts.Position = UDim2.new(0, 98, 0, 7)
ExcludedAlerts.Size = UDim2.new(0, 368, 0, 33)
ExcludedAlerts.ClearTextOnFocus = false
ExcludedAlerts.Font = Enum.Font.SourceSans
if latestExcludeName ~= "" then
	ExcludedAlerts.Text = latestExcludeNames
else
	ExcludedAlerts.Text = "Pets to Exclude: i.e.(Pet #1,Pet #2,Pet #3)"
end
ExcludedAlerts.TextColor3 = Color3.fromRGB(255, 255, 255)
ExcludedAlerts.TextScaled = true
ExcludedAlerts.TextSize = 20.000
ExcludedAlerts.TextWrapped = true

LoadSettingsimage.Name = "LoadSettingsimage"
LoadSettingsimage.Parent = StatFrame
LoadSettingsimage.Active = true
LoadSettingsimage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LoadSettingsimage.BackgroundTransparency = 1.000
LoadSettingsimage.Position = UDim2.new(0.232999995, 0, 0.910000026, 0)
LoadSettingsimage.Selectable = true
LoadSettingsimage.Size = UDim2.new(0.243556589, 0, 0.0648600087, 0)
LoadSettingsimage.Visible = false
LoadSettingsimage.Image = "rbxassetid://3570695787"
LoadSettingsimage.ImageColor3 = Color3.fromRGB(0, 255, 0)
LoadSettingsimage.ImageTransparency = 0.750
LoadSettingsimage.ScaleType = Enum.ScaleType.Slice
LoadSettingsimage.SliceCenter = Rect.new(100, 100, 100, 100)
LoadSettingsimage.SliceScale = 0.040

LoadButton.Name = "LoadButton"
LoadButton.Parent = LoadSettingsimage
LoadButton.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
LoadButton.BackgroundTransparency = 1.000
LoadButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
LoadButton.BorderSizePixel = 0
LoadButton.Size = UDim2.new(0.686098874, 25, 1.00000012, 0)
LoadButton.Font = Enum.Font.SourceSans
LoadButton.Text = "Load Settings"
LoadButton.TextColor3 = Color3.fromRGB(255, 255, 255)
LoadButton.TextSize = 14.000
LoadButton.TextWrapped = true

EventAlertimage.Name = "EventAlertimage"
EventAlertimage.Parent = StatFrame
EventAlertimage.Active = true
EventAlertimage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
EventAlertimage.BackgroundTransparency = 1.000
EventAlertimage.Position = UDim2.new(0, 432, 0, 420)
EventAlertimage.Selectable = true
EventAlertimage.Size = UDim2.new(0, 34, 0, 24)
EventAlertimage.SizeConstraint = Enum.SizeConstraint.RelativeXX
EventAlertimage.Image = "rbxassetid://3570695787"
EventAlertimage.ImageColor3 = Color3.fromRGB(255, 50, 50)
EventAlertimage.ImageTransparency = 0.600
EventAlertimage.ScaleType = Enum.ScaleType.Slice
EventAlertimage.SliceCenter = Rect.new(100, 100, 100, 100)
EventAlertimage.SliceScale = 0.060
EventAlertimage.Visible = false

EventAlertButton.Name = "EventAlertButton"
EventAlertButton.Parent = EventAlertimage
EventAlertButton.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
EventAlertButton.BackgroundTransparency = 1.000
EventAlertButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
EventAlertButton.BorderSizePixel = 0
EventAlertButton.Size = UDim2.new(0, 34, 0, 24)
EventAlertButton.Font = Enum.Font.SourceSans
EventAlertButton.Text = "Alert"
EventAlertButton.TextColor3 = Color3.fromRGB(55, 55, 55)
EventAlertButton.TextSize = 14.000
EventAlertButton.TextWrapped = true
EventAlertButton.Visible = false

GemAlertimage.Name = "GemAlertimage"
GemAlertimage.Parent = StatFrame
GemAlertimage.Active = true
GemAlertimage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GemAlertimage.BackgroundTransparency = 1.000
GemAlertimage.Position = UDim2.new(0, 432, 0, 180)
GemAlertimage.Selectable = true
GemAlertimage.Size = UDim2.new(0, 34, 0, 24)
GemAlertimage.SizeConstraint = Enum.SizeConstraint.RelativeXX
GemAlertimage.Image = "rbxassetid://3570695787"
GemAlertimage.ImageColor3 = Color3.fromRGB(255, 50, 50)
GemAlertimage.ImageTransparency = 0.600
GemAlertimage.ScaleType = Enum.ScaleType.Slice
GemAlertimage.SliceCenter = Rect.new(100, 100, 100, 100)
GemAlertimage.SliceScale = 0.060

GemAlertButton.Name = "GemAlertButton"
GemAlertButton.Parent = GemAlertimage
GemAlertButton.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
GemAlertButton.BackgroundTransparency = 1.000
GemAlertButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
GemAlertButton.BorderSizePixel = 0
GemAlertButton.Size = UDim2.new(0, 34, 0, 24)
GemAlertButton.Font = Enum.Font.SourceSans
GemAlertButton.Text = "Alert"
GemAlertButton.TextColor3 = Color3.fromRGB(55, 55, 55)
GemAlertButton.TextSize = 14.000
GemAlertButton.TextWrapped = true

CandyAlertimage.Name = "CandyAlertimage"
CandyAlertimage.Parent = StatFrame
CandyAlertimage.Active = true
CandyAlertimage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CandyAlertimage.BackgroundTransparency = 1.000
CandyAlertimage.Position = UDim2.new(0, 432, 0, 210)
CandyAlertimage.Selectable = true
CandyAlertimage.Size = UDim2.new(0, 34, 0, 24)
CandyAlertimage.SizeConstraint = Enum.SizeConstraint.RelativeXX
CandyAlertimage.Image = "rbxassetid://3570695787"
CandyAlertimage.ImageColor3 = Color3.fromRGB(255, 50, 50)
CandyAlertimage.ImageTransparency = 0.600
CandyAlertimage.ScaleType = Enum.ScaleType.Slice
CandyAlertimage.SliceCenter = Rect.new(100, 100, 100, 100)
CandyAlertimage.SliceScale = 0.060

CandyAlertButton.Name = "CandyAlertButton"
CandyAlertButton.Parent = CandyAlertimage
CandyAlertButton.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
CandyAlertButton.BackgroundTransparency = 1.000
CandyAlertButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
CandyAlertButton.BorderSizePixel = 0
CandyAlertButton.Size = UDim2.new(0, 34, 0, 24)
CandyAlertButton.Font = Enum.Font.SourceSans
CandyAlertButton.Text = "Alert"
CandyAlertButton.TextColor3 = Color3.fromRGB(55, 55, 55)
CandyAlertButton.TextSize = 14.000
CandyAlertButton.TextWrapped = true

CrystalAlertimage.Name = "CrystalAlertimage"
CrystalAlertimage.Parent = StatFrame
CrystalAlertimage.Active = true
CrystalAlertimage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CrystalAlertimage.BackgroundTransparency = 1.000
CrystalAlertimage.Position = UDim2.new(0, 432, 0, 390)
CrystalAlertimage.Selectable = true
CrystalAlertimage.Size = UDim2.new(0, 34, 0, 24)
CrystalAlertimage.SizeConstraint = Enum.SizeConstraint.RelativeXX
CrystalAlertimage.Image = "rbxassetid://3570695787"
CrystalAlertimage.ImageColor3 = Color3.fromRGB(255, 50, 50)
CrystalAlertimage.ImageTransparency = 0.600
CrystalAlertimage.ScaleType = Enum.ScaleType.Slice
CrystalAlertimage.SliceCenter = Rect.new(100, 100, 100, 100)
CrystalAlertimage.SliceScale = 0.060

CrystalAlertButton.Name = "CrystalAlertButton"
CrystalAlertButton.Parent = CrystalAlertimage
CrystalAlertButton.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
CrystalAlertButton.BackgroundTransparency = 1.000
CrystalAlertButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
CrystalAlertButton.BorderSizePixel = 0
CrystalAlertButton.Size = UDim2.new(0, 34, 0, 24)
CrystalAlertButton.Font = Enum.Font.SourceSans
CrystalAlertButton.Text = "Alert"
CrystalAlertButton.TextColor3 = Color3.fromRGB(55, 55, 55)
CrystalAlertButton.TextSize = 14.000
CrystalAlertButton.TextWrapped = true

BlocksImage.Name = "BlocksImage"
BlocksImage.Parent = StatFrame
BlocksImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BlocksImage.BackgroundTransparency = 1.000
BlocksImage.Position = UDim2.new(0, 10, 0, 240)
BlocksImage.Size = UDim2.new(0, 24, 0, 24)
BlocksImage.Image = "rbxassetid://2804817391"

CandyImage.Name = "CandyImage"
CandyImage.Parent = StatFrame
CandyImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CandyImage.BackgroundTransparency = 1.000
CandyImage.Position = UDim2.new(0, 10, 0, 210)
CandyImage.Size = UDim2.new(0, 24, 0, 24)
CandyImage.Image = "rbxassetid://2695038333"

BubbleImage.Name = "BubbleImage"
BubbleImage.Parent = StatFrame
BubbleImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BubbleImage.BackgroundTransparency = 1.000
BubbleImage.Position = UDim2.new(0, 10, 0, 120)
BubbleImage.Size = UDim2.new(0, 24, 0, 24)
BubbleImage.Image = "rbxassetid://2512650517"

CoinImage.Name = "CoinImage"
CoinImage.Parent = StatFrame
CoinImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CoinImage.BackgroundTransparency = 1.000
CoinImage.Position = UDim2.new(0, 10, 0, 150)
CoinImage.Size = UDim2.new(0, 24, 0, 24)
CoinImage.Image = "rbxassetid://2512650607"

EggImage.Name = "EggImage"
EggImage.Parent = StatFrame
EggImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
EggImage.BackgroundTransparency = 1.000
EggImage.Position = UDim2.new(0, 8, 0, 88)
EggImage.Size = UDim2.new(0, 28, 0, 28)
EggImage.Image = "rbxassetid://3098693333"
EggImage.ImageColor3 = Color3.fromRGB(255, 244, 220)

CrystalsImage.Name = "CrystalsImage"
CrystalsImage.Parent = StatFrame
CrystalsImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CrystalsImage.BackgroundTransparency = 1.000
CrystalsImage.Position = UDim2.new(0, 10, 0, 390)
CrystalsImage.Size = UDim2.new(0, 24, 0, 24)
CrystalsImage.Image = "rbxassetid://4826258329"

EventImage.Name = "EventImage"
EventImage.Parent = StatFrame
EventImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
EventImage.BackgroundTransparency = 1.000
EventImage.Position = UDim2.new(0, 10, 0, 420)
EventImage.Size = UDim2.new(0, 24, 0, 24)
EventImage.Image = "rbxassetid://284402752"
EventImage.Visible = false

GemImage.Name = "GemImage"
GemImage.Parent = StatFrame
GemImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GemImage.BackgroundTransparency = 1.000
GemImage.Position = UDim2.new(0, 10, 0, 180)
GemImage.Size = UDim2.new(0, 24, 0, 24)
GemImage.Image = "rbxassetid://2513306682"

MagmaImage.Name = "MagmaImage"
MagmaImage.Parent = StatFrame
MagmaImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MagmaImage.BackgroundTransparency = 1.000
MagmaImage.Position = UDim2.new(0, 10, 0, 360)
MagmaImage.Size = UDim2.new(0, 24, 0, 24)
MagmaImage.Image = "rbxassetid://3978266141"

PearlsImage.Name = "PearlsImage"
PearlsImage.Parent = StatFrame
PearlsImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PearlsImage.BackgroundTransparency = 1.000
PearlsImage.Position = UDim2.new(0, 10, 0, 300)
PearlsImage.Size = UDim2.new(0, 24, 0, 24)
PearlsImage.Image = "rbxassetid://3064533581"

ShellsImage.Name = "ShellsImage"
ShellsImage.Parent = StatFrame
ShellsImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ShellsImage.BackgroundTransparency = 1.000
ShellsImage.Position = UDim2.new(0, 10, 0, 270)
ShellsImage.Size = UDim2.new(0, 24, 0, 24)
ShellsImage.Image = "rbxassetid://2906670902"

StarsImage.Name = "StarsImage"
StarsImage.Parent = StatFrame
StarsImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
StarsImage.BackgroundTransparency = 1.000
StarsImage.Position = UDim2.new(0, 10, 0, 330)
StarsImage.Size = UDim2.new(0, 24, 0, 24)
StarsImage.Image = "rbxassetid://3344238599"

EggsPerMin.Name = "EggsPerMin"
EggsPerMin.Parent = StatFrame
EggsPerMin.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
EggsPerMin.BorderSizePixel = 0
EggsPerMin.Position = UDim2.new(0, 252, 0, 90)
EggsPerMin.Size = UDim2.new(0, 88, 0, 24)
EggsPerMin.Font = Enum.Font.Cartoon
EggsPerMin.Text = "0/min"
EggsPerMin.TextColor3 = Color3.fromRGB(255, 238, 198)
EggsPerMin.TextSize = 18.000
EggsPerMin.TextStrokeTransparency = 0.650
EggsPerMin.TextXAlignment = Enum.TextXAlignment.Right

EggsPerHour.Name = "EggsPerHour"
EggsPerHour.Parent = StatFrame
EggsPerHour.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
EggsPerHour.BorderSizePixel = 0
EggsPerHour.Position = UDim2.new(0, 340, 0, 90)
EggsPerHour.Size = UDim2.new(0, 88, 0, 24)
EggsPerHour.Font = Enum.Font.Cartoon
EggsPerHour.Text = "0/hr"
EggsPerHour.TextColor3 = Color3.fromRGB(255, 238, 198)
EggsPerHour.TextSize = 18.000
EggsPerHour.TextStrokeTransparency = 0.650
EggsPerHour.TextXAlignment = Enum.TextXAlignment.Right

BubblesPerMin.Name = "BubblesPerMin"
BubblesPerMin.Parent = StatFrame
BubblesPerMin.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
BubblesPerMin.BorderSizePixel = 0
BubblesPerMin.Position = UDim2.new(0, 252, 0, 120)
BubblesPerMin.Size = UDim2.new(0, 88, 0, 24)
BubblesPerMin.Font = Enum.Font.Cartoon
BubblesPerMin.Text = "0/min"
BubblesPerMin.TextColor3 = Color3.fromRGB(255, 170, 255)
BubblesPerMin.TextSize = 18.000
BubblesPerMin.TextStrokeTransparency = 0.650
BubblesPerMin.TextXAlignment = Enum.TextXAlignment.Right

Bubbles.Name = "Bubbles"
Bubbles.Parent = StatFrame
Bubbles.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Bubbles.BorderSizePixel = 0
Bubbles.Position = UDim2.new(0, 42, 0, 120)
Bubbles.Size = UDim2.new(0, 210, 0, 24)
Bubbles.Font = Enum.Font.Cartoon
Bubbles.Text = "0"
Bubbles.TextColor3 = Color3.fromRGB(255, 170, 255)
Bubbles.TextSize = 23.000
Bubbles.TextStrokeTransparency = 0.650
Bubbles.TextXAlignment = Enum.TextXAlignment.Right

BlocksPerMin.Name = "BlocksPerMin"
BlocksPerMin.Parent = StatFrame
BlocksPerMin.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
BlocksPerMin.BorderSizePixel = 0
BlocksPerMin.Position = UDim2.new(0, 252, 0, 240)
BlocksPerMin.Size = UDim2.new(0, 88, 0, 24)
BlocksPerMin.Font = Enum.Font.Cartoon
BlocksPerMin.Text = "0/min"
BlocksPerMin.TextColor3 = Color3.fromRGB(255, 0, 0)
BlocksPerMin.TextSize = 18.000
BlocksPerMin.TextStrokeTransparency = 0.650
BlocksPerMin.TextXAlignment = Enum.TextXAlignment.Right

Blocks.Name = "Blocks"
Blocks.Parent = StatFrame
Blocks.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Blocks.BorderSizePixel = 0
Blocks.Position = UDim2.new(0, 42, 0, 240)
Blocks.Size = UDim2.new(0, 210, 0, 24)
Blocks.Font = Enum.Font.Cartoon
Blocks.Text = "0"
Blocks.TextColor3 = Color3.fromRGB(255, 0, 0)
Blocks.TextSize = 23.000
Blocks.TextStrokeTransparency = 0.650
Blocks.TextXAlignment = Enum.TextXAlignment.Right

CandyPerMin.Name = "CandyPerMin"
CandyPerMin.Parent = StatFrame
CandyPerMin.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
CandyPerMin.BorderSizePixel = 0
CandyPerMin.Position = UDim2.new(0, 252, 0, 210)
CandyPerMin.Size = UDim2.new(0, 88, 0, 24)
CandyPerMin.Font = Enum.Font.Cartoon
CandyPerMin.Text = "0/min"
CandyPerMin.TextColor3 = Color3.fromRGB(255, 85, 255)
CandyPerMin.TextSize = 18.000
CandyPerMin.TextStrokeTransparency = 0.650
CandyPerMin.TextXAlignment = Enum.TextXAlignment.Right

CandyPerHour.Name = "CandyPerHour"
CandyPerHour.Parent = StatFrame
CandyPerHour.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
CandyPerHour.BorderSizePixel = 0
CandyPerHour.Position = UDim2.new(0, 340, 0, 210)
CandyPerHour.Size = UDim2.new(0, 88, 0, 24)
CandyPerHour.Font = Enum.Font.Cartoon
CandyPerHour.Text = "0/hr"
CandyPerHour.TextColor3 = Color3.fromRGB(255, 85, 255)
CandyPerHour.TextSize = 18.000
CandyPerHour.TextStrokeTransparency = 0.650
CandyPerHour.TextXAlignment = Enum.TextXAlignment.Right

CoinsPerMin.Name = "CoinsPerMin"
CoinsPerMin.Parent = StatFrame
CoinsPerMin.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
CoinsPerMin.BorderSizePixel = 0
CoinsPerMin.Position = UDim2.new(0, 252, 0, 150)
CoinsPerMin.Size = UDim2.new(0, 88, 0, 24)
CoinsPerMin.Font = Enum.Font.Cartoon
CoinsPerMin.Text = "0/min"
CoinsPerMin.TextColor3 = Color3.fromRGB(255, 215, 11)
CoinsPerMin.TextSize = 18.000
CoinsPerMin.TextStrokeTransparency = 0.650
CoinsPerMin.TextXAlignment = Enum.TextXAlignment.Right

CoinsPerHour.Name = "CoinsPerHour"
CoinsPerHour.Parent = StatFrame
CoinsPerHour.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
CoinsPerHour.BorderSizePixel = 0
CoinsPerHour.Position = UDim2.new(0, 340, 0, 150)
CoinsPerHour.Size = UDim2.new(0, 88, 0, 24)
CoinsPerHour.Font = Enum.Font.Cartoon
CoinsPerHour.Text = "0/hr"
CoinsPerHour.TextColor3 = Color3.fromRGB(255, 215, 11)
CoinsPerHour.TextSize = 18.000
CoinsPerHour.TextStrokeTransparency = 0.650
CoinsPerHour.TextXAlignment = Enum.TextXAlignment.Right

CrystalsPerMin.Name = "CrystalsPerMin"
CrystalsPerMin.Parent = StatFrame
CrystalsPerMin.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
CrystalsPerMin.BorderSizePixel = 0
CrystalsPerMin.Position = UDim2.new(0, 252, 0, 390)
CrystalsPerMin.Size = UDim2.new(0, 88, 0, 24)
CrystalsPerMin.Font = Enum.Font.Cartoon
CrystalsPerMin.Text = "0/min"
CrystalsPerMin.TextColor3 = Color3.fromRGB(255, 0, 255)
CrystalsPerMin.TextSize = 18.000
CrystalsPerMin.TextStrokeTransparency = 0.650
CrystalsPerMin.TextXAlignment = Enum.TextXAlignment.Right

CrystalsPerHour.Name = "CrystalsPerHour"
CrystalsPerHour.Parent = StatFrame
CrystalsPerHour.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
CrystalsPerHour.BorderSizePixel = 0
CrystalsPerHour.Position = UDim2.new(0, 340, 0, 390)
CrystalsPerHour.Size = UDim2.new(0, 88, 0, 24)
CrystalsPerHour.Font = Enum.Font.Cartoon
CrystalsPerHour.Text = "0/hr"
CrystalsPerHour.TextColor3 = Color3.fromRGB(255, 0, 255)
CrystalsPerHour.TextSize = 18.000
CrystalsPerHour.TextStrokeTransparency = 0.650
CrystalsPerHour.TextXAlignment = Enum.TextXAlignment.Right

EventCurrencyPerMin.Name = "EventCurrencyPerMin"
EventCurrencyPerMin.Parent = StatFrame
EventCurrencyPerMin.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
EventCurrencyPerMin.BorderSizePixel = 0
EventCurrencyPerMin.Position = UDim2.new(0, 252, 0, 420)
EventCurrencyPerMin.Size = UDim2.new(0, 88, 0, 24)
EventCurrencyPerMin.Font = Enum.Font.Cartoon
EventCurrencyPerMin.Text = "0/min"
EventCurrencyPerMin.TextColor3 = Color3.fromRGB(0, 0, 0)
EventCurrencyPerMin.TextSize = 18.000
EventCurrencyPerMin.TextStrokeTransparency = 0.650
EventCurrencyPerMin.TextXAlignment = Enum.TextXAlignment.Right
EventCurrencyPerMin.Visible = false

EventCurrencyPerHour.Name = "EventCurrencyPerHour"
EventCurrencyPerHour.Parent = StatFrame
EventCurrencyPerHour.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
EventCurrencyPerHour.BorderSizePixel = 0
EventCurrencyPerHour.Position = UDim2.new(0, 340, 0, 420)
EventCurrencyPerHour.Size = UDim2.new(0, 88, 0, 24)
EventCurrencyPerHour.Font = Enum.Font.Cartoon
EventCurrencyPerHour.Text = "0/hr"
EventCurrencyPerHour.TextColor3 = Color3.fromRGB(0, 0, 0)
EventCurrencyPerHour.TextSize = 18.000
EventCurrencyPerHour.TextStrokeTransparency = 0.650
EventCurrencyPerHour.TextXAlignment = Enum.TextXAlignment.Right
EventCurrencyPerHour.Visible = false

GemsPerMin.Name = "GemsPerMin"
GemsPerMin.Parent = StatFrame
GemsPerMin.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
GemsPerMin.BorderSizePixel = 0
GemsPerMin.Position = UDim2.new(0, 252, 0, 180)
GemsPerMin.Size = UDim2.new(0, 88, 0, 24)
GemsPerMin.Font = Enum.Font.Cartoon
GemsPerMin.Text = "0/min"
GemsPerMin.TextColor3 = Color3.fromRGB(170, 0, 255)
GemsPerMin.TextSize = 18.000
GemsPerMin.TextStrokeTransparency = 0.650
GemsPerMin.TextXAlignment = Enum.TextXAlignment.Right

GemsPerHour.Name = "GemsPerHour"
GemsPerHour.Parent = StatFrame
GemsPerHour.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
GemsPerHour.BorderSizePixel = 0
GemsPerHour.Position = UDim2.new(0, 340, 0, 180)
GemsPerHour.Size = UDim2.new(0, 88, 0, 24)
GemsPerHour.Font = Enum.Font.Cartoon
GemsPerHour.Text = "0/hr"
GemsPerHour.TextColor3 = Color3.fromRGB(170, 0, 255)
GemsPerHour.TextSize = 18.000
GemsPerHour.TextStrokeTransparency = 0.650
GemsPerHour.TextXAlignment = Enum.TextXAlignment.Right

MagmaPerMin.Name = "MagmaPerMin"
MagmaPerMin.Parent = StatFrame
MagmaPerMin.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
MagmaPerMin.BorderSizePixel = 0
MagmaPerMin.Position = UDim2.new(0, 252, 0, 360)
MagmaPerMin.Size = UDim2.new(0, 88, 0, 24)
MagmaPerMin.Font = Enum.Font.Cartoon
MagmaPerMin.Text = "0/min"
MagmaPerMin.TextColor3 = Color3.fromRGB(211, 71, 6)
MagmaPerMin.TextSize = 18.000
MagmaPerMin.TextStrokeTransparency = 0.650
MagmaPerMin.TextXAlignment = Enum.TextXAlignment.Right

MagmaPerHour.Name = "MagmaPerHour"
MagmaPerHour.Parent = StatFrame
MagmaPerHour.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
MagmaPerHour.BorderSizePixel = 0
MagmaPerHour.Position = UDim2.new(0, 340, 0, 360)
MagmaPerHour.Size = UDim2.new(0, 88, 0, 24)
MagmaPerHour.Font = Enum.Font.Cartoon
MagmaPerHour.Text = "0/hr"
MagmaPerHour.TextColor3 = Color3.fromRGB(211, 71, 6)
MagmaPerHour.TextSize = 18.000
MagmaPerHour.TextStrokeTransparency = 0.650
MagmaPerHour.TextXAlignment = Enum.TextXAlignment.Right

PearlsPerMin.Name = "PearlsPerMin"
PearlsPerMin.Parent = StatFrame
PearlsPerMin.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
PearlsPerMin.BorderSizePixel = 0
PearlsPerMin.Position = UDim2.new(0, 252, 0, 300)
PearlsPerMin.Size = UDim2.new(0, 88, 0, 24)
PearlsPerMin.Font = Enum.Font.Cartoon
PearlsPerMin.Text = "0/min"
PearlsPerMin.TextColor3 = Color3.fromRGB(221, 255, 255)
PearlsPerMin.TextSize = 18.000
PearlsPerMin.TextStrokeTransparency = 0.650
PearlsPerMin.TextXAlignment = Enum.TextXAlignment.Right

PearlsPerHour.Name = "PearlsPerHour"
PearlsPerHour.Parent = StatFrame
PearlsPerHour.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
PearlsPerHour.BorderSizePixel = 0
PearlsPerHour.Position = UDim2.new(0, 340, 0, 300)
PearlsPerHour.Size = UDim2.new(0, 88, 0, 24)
PearlsPerHour.Font = Enum.Font.Cartoon
PearlsPerHour.Text = "0/hr"
PearlsPerHour.TextColor3 = Color3.fromRGB(221, 255, 255)
PearlsPerHour.TextSize = 18.000
PearlsPerHour.TextStrokeTransparency = 0.650
PearlsPerHour.TextXAlignment = Enum.TextXAlignment.Right

ShellsPerMin.Name = "ShellsPerMin"
ShellsPerMin.Parent = StatFrame
ShellsPerMin.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
ShellsPerMin.BorderSizePixel = 0
ShellsPerMin.Position = UDim2.new(0, 252, 0, 270)
ShellsPerMin.Size = UDim2.new(0, 88, 0, 24)
ShellsPerMin.Font = Enum.Font.Cartoon
ShellsPerMin.Text = "0/min"
ShellsPerMin.TextColor3 = Color3.fromRGB(255, 170, 0)
ShellsPerMin.TextSize = 18.000
ShellsPerMin.TextStrokeTransparency = 0.650
ShellsPerMin.TextXAlignment = Enum.TextXAlignment.Right

ShellsPerHour.Name = "ShellsPerHour"
ShellsPerHour.Parent = StatFrame
ShellsPerHour.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
ShellsPerHour.BorderSizePixel = 0
ShellsPerHour.Position = UDim2.new(0, 340, 0, 270)
ShellsPerHour.Size = UDim2.new(0, 88, 0, 24)
ShellsPerHour.Font = Enum.Font.Cartoon
ShellsPerHour.Text = "0/hr"
ShellsPerHour.TextColor3 = Color3.fromRGB(255, 170, 0)
ShellsPerHour.TextSize = 18.000
ShellsPerHour.TextStrokeTransparency = 0.650
ShellsPerHour.TextXAlignment = Enum.TextXAlignment.Right

StarsPerMin.Name = "StarsPerMin"
StarsPerMin.Parent = StatFrame
StarsPerMin.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
StarsPerMin.BorderSizePixel = 0
StarsPerMin.Position = UDim2.new(0, 252, 0, 330)
StarsPerMin.Size = UDim2.new(0, 88, 0, 24)
StarsPerMin.Font = Enum.Font.Cartoon
StarsPerMin.Text = "0/min"
StarsPerMin.TextColor3 = Color3.fromRGB(255, 255, 0)
StarsPerMin.TextSize = 18.000
StarsPerMin.TextStrokeTransparency = 0.650
StarsPerMin.TextXAlignment = Enum.TextXAlignment.Right

StarsPerHour.Name = "StarsPerHour"
StarsPerHour.Parent = StatFrame
StarsPerHour.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
StarsPerHour.BorderSizePixel = 0
StarsPerHour.Position = UDim2.new(0, 340, 0, 330)
StarsPerHour.Size = UDim2.new(0, 88, 0, 24)
StarsPerHour.Font = Enum.Font.Cartoon
StarsPerHour.Text = "0/hr"
StarsPerHour.TextColor3 = Color3.fromRGB(255, 255, 0)
StarsPerHour.TextSize = 18.000
StarsPerHour.TextStrokeTransparency = 0.650
StarsPerHour.TextXAlignment = Enum.TextXAlignment.Right
if newEvent["Name"] ~= nil then
	StatFrame.Size = UDim2.new(0, 474, 0, 454)
	EventAlertButton.Visible = true
	EventAlertimage.Visible = true	
	EventCurrency.Visible = true
	EventImage.Image = newEvent.Image
	EventImage.Visible = true
	EventCurrencyPerMin.Visible = true
	EventCurrencyPerHour.Visible = true
	EventCurrency.TextColor3 = newEvent.Color
	EventCurrencyPerMin.TextColor3 = newEvent.Color
	EventCurrencyPerHour.TextColor3 = newEvent.Color
end





	
					_G.PetAlerts = false
					_G.ExcludeAlerts = ""
					_G.DiscordAlerts = false
					_G.DiscordMessage = ""
					_G.MessageSent = 0
					_G.MessageWait = 300
					function sma(period)
						local t = {}
						function sum(a, ...)
							if a then return a+sum(...) else return 0 end
						end
						function average(n)
							if #t == period then table.remove(t, 1) end
							t[#t + 1] = n
							return sum(unpack(t)) / #t
						end
						return average
					end

					function formatCommaNumber(formatted)
						while true do  
							formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
							if (k==0) then
								return formatted
							end
						end
						return formatted
					end
					
					_G.currAlertWait = 5
					_G.currAlertMsgWaitMins = 15
					local smaPeriodMin = 60 / _G.currAlertWait
					local smaPeriodHour = smaPeriodMin * 60
					--_G.coinssma = sma(smaPeriodSecs)	
					--_G.crystalsma = sma(smaPeriodSecs)
					--_G.coinLastVal = 0
					--_G.coinLastTime = 0
					--_G.crystalLastVal = 0

					if _G.DiscordKey ~= "" and DiscordKeyBox.Text == "Discord Key" then
						DiscordKeyBox.Text = _G.DiscordKey
					end
		
					function sendmessage(key, message)
						local url = "http://zerotwo.ga:6969/"
						local HttpService = game:GetService("HttpService")
						local response, data = pcall(function() return game:HttpGet(url .. "?key="..key.."&message="..HttpService:UrlEncode(message)) end)
						if response then
							return HttpService:JSONDecode(data)
						else
							return {['error'] = "URL not found, Try Again Later"}
						end
					end

					-- Scripts:
					
					local function RYPDO_fake_script() -- PetAlertButton.LocalScript 
						local script = Instance.new('LocalScript', PetAlertButton)
						local button = script.Parent
						local image = button.Parent
						local frame = image.Parent
						
						button.MouseButton1Click:connect(function()
							if not _G.PetAlerts then
								button.TextColor3 = Color3.fromRGB(255, 255, 255)
								button.Text = "In-Game Alerts\nOn"
								image.ImageColor3 = Color3.fromRGB(50, 255, 50)
								_G.PetAlerts = true
							else
								_G.PetAlerts = false
								button.TextColor3 = Color3.fromRGB(255, 255, 255)
								button.Text = "In-Game\nAlerts"
								image.ImageColor3 = Color3.fromRGB(255, 50, 50)
								_G.petalertcounter = 0
								_G.counttoten = 0
								_G.hatchalertposx = 195
								_G.hatchalertposy = 100
								for i,d in pairs(InfoPanel:GetChildren()) do
									if d.Name == "HatchAlert" then
										d:Destroy()
									end
								end
							end
						end)
					end
					coroutine.wrap(RYPDO_fake_script)()
					
					local function MJNOA_fake_script() -- BubbleAlertButton.LocalScript 
						local script = Instance.new('LocalScript', BubbleAlertButton)
						local button = script.Parent
						local image = button.Parent
						local frame = image.Parent
						
						button.MouseButton1Click:connect(function()
							if not _G.BubbleAlert and _G.DiscordAlerts then
								button.Text = "On"
								button.TextColor3 = Color3.fromRGB(255, 255, 255)
								image.ImageColor3 = Color3.fromRGB(50, 255, 50)
								--_G.coinsma = sma(smaPeriodMin)
								--_G.coinsmahour = sma(smaPeriodHour)
								--_G.coinLastVal = 0
								--_G.coinLastTime = 0
								_G.BubbleAlert = true
								_G.BubbleAlertLast = 0
							elseif _G.BubbleAlert and _G.DiscordAlerts then
								button.TextColor3 = Color3.fromRGB(255, 255, 255)
								button.Text = "Alert"
								image.ImageColor3 = Color3.fromRGB(255, 50, 50)
								_G.BubbleAlert = false
							else
								button.TextColor3 = Color3.fromRGB(55, 55, 55)
								button.Text = "Alert"
								image.ImageColor3 = Color3.fromRGB(255, 50, 50)
								_G.BubbleAlert = false
							end
						end)
					end
					coroutine.wrap(MJNOA_fake_script)()
					
					local function VGHTS_fake_script() -- EggsAlertButton.LocalScript 
						local script = Instance.new('LocalScript', EggsAlertButton)
						local button = script.Parent
						local image = button.Parent
						local frame = image.Parent
						
						button.MouseButton1Click:connect(function()
							if not _G.EggsAlert and _G.DiscordAlerts then
								button.Text = "On"
								button.TextColor3 = Color3.fromRGB(255, 255, 255)
								image.ImageColor3 = Color3.fromRGB(50, 255, 50)
								--_G.coinsma = sma(smaPeriodMin)
								--_G.coinsmahour = sma(smaPeriodHour)
								--_G.coinLastVal = 0
								--_G.coinLastTime = 0
								_G.EggsAlert = true
								_G.EggsAlertLast = 0
							elseif _G.EggsAlert and _G.DiscordAlerts then
								button.TextColor3 = Color3.fromRGB(255, 255, 255)
								button.Text = "Alert"
								image.ImageColor3 = Color3.fromRGB(255, 50, 50)
								_G.EggsAlert = false
							else
								button.TextColor3 = Color3.fromRGB(55, 55, 55)
								button.Text = "Alert"
								image.ImageColor3 = Color3.fromRGB(255, 50, 50)
								_G.EggsAlert = false
							end
						end)
					end
					coroutine.wrap(VGHTS_fake_script)()
					
					local function KNLOS_fake_script() -- CoinAlertButton.LocalScript 
						local script = Instance.new('LocalScript', CoinAlertButton)
						local button = script.Parent
						local image = button.Parent
						local frame = image.Parent
						
						button.MouseButton1Click:connect(function()
							if not _G.CoinAlert and _G.DiscordAlerts then
								button.Text = "On"
								button.TextColor3 = Color3.fromRGB(255, 255, 255)
								image.ImageColor3 = Color3.fromRGB(50, 255, 50)
								--_G.coinsma = sma(smaPeriodMin)
								--_G.coinsmahour = sma(smaPeriodHour)
								--_G.coinLastVal = 0
								--_G.coinLastTime = 0
								_G.CoinAlert = true
								_G.CoinAlertLast = 0
							elseif _G.CoinAlert and _G.DiscordAlerts then
								button.TextColor3 = Color3.fromRGB(255, 255, 255)
								button.Text = "Alert"
								image.ImageColor3 = Color3.fromRGB(255, 50, 50)
								_G.CoinAlert = false
							else
								button.TextColor3 = Color3.fromRGB(55, 55, 55)
								button.Text = "Alert"
								image.ImageColor3 = Color3.fromRGB(255, 50, 50)
								_G.CoinAlert = false
							end
						end)
					end
					coroutine.wrap(KNLOS_fake_script)()
					
					local function GDIAS_fake_script() -- GemAlertButton.LocalScript 
						local script = Instance.new('LocalScript', GemAlertButton)
						local button = script.Parent
						local image = button.Parent
						local frame = image.Parent
						
						button.MouseButton1Click:connect(function()
							if not _G.GemAlert and _G.DiscordAlerts then
								button.Text = "On"
								button.TextColor3 = Color3.fromRGB(255, 255, 255)
								image.ImageColor3 = Color3.fromRGB(50, 255, 50)
								--_G.gemsma = sma(smaPeriodMin)
								--_G.gemsmahour = sma(smaPeriodHour)
								--_G.gemLastVal = 0
								--_G.gemLastTime = 0
								_G.GemAlert = true
								_G.GemAlertLast = 0
							elseif _G.GemAlert and _G.DiscordAlerts then
								button.TextColor3 = Color3.fromRGB(255, 255, 255)
								button.Text = "Alert"
								image.ImageColor3 = Color3.fromRGB(255, 50, 50)
								_G.GemAlert = false
							else
								button.TextColor3 = Color3.fromRGB(55, 55, 55)
								button.Text = "Alert"
								image.ImageColor3 = Color3.fromRGB(255, 50, 50)
								_G.GemAlert = false
							end
						end)
					end
					coroutine.wrap(GDIAS_fake_script)()
					
					local function ESKSP_fake_script() -- CandyAlertButton.LocalScript 
						local script = Instance.new('LocalScript', CandyAlertButton)
						local button = script.Parent
						local image = button.Parent
						local frame = image.Parent
						
						button.MouseButton1Click:connect(function()
							if not _G.CandyAlert and _G.DiscordAlerts then
								button.Text = "On"
								button.TextColor3 = Color3.fromRGB(255, 255, 255)
								image.ImageColor3 = Color3.fromRGB(50, 255, 50)
								--_G.candysma = sma(smaPeriodMin)
								--_G.candysmahour = sma(smaPeriodHour)
								--_G.candyLastVal = 0
								--_G.candyLastTime = 0
								_G.CandyAlert = true
								_G.CandyAlertLast = 0
							elseif _G.CandyAlert and _G.DiscordAlerts then
								button.TextColor3 = Color3.fromRGB(255, 255, 255)
								button.Text = "Alert"
								image.ImageColor3 = Color3.fromRGB(255, 50, 50)
								_G.CandyAlert = false
							else
								button.TextColor3 = Color3.fromRGB(55, 55, 55)
								button.Text = "Alert"
								image.ImageColor3 = Color3.fromRGB(255, 50, 50)
								_G.CandyAlert = false
							end
						end)
					end
					coroutine.wrap(ESKSP_fake_script)()
					
					local function BJUIS_fake_script() -- BlocksAlertButton.LocalScript 
						local script = Instance.new('LocalScript', BlocksAlertButton)
						local button = script.Parent
						local image = button.Parent
						local frame = image.Parent
						
						button.MouseButton1Click:connect(function()
							if not _G.BlocksAlert and _G.DiscordAlerts then
								button.Text = "On"
								button.TextColor3 = Color3.fromRGB(255, 255, 255)
								image.ImageColor3 = Color3.fromRGB(50, 255, 50)
								--_G.blockssma = sma(smaPeriodMin)
								--_G.blockssmahour = sma(smaPeriodHour)
								--_G.blocksLastVal = 0
								--_G.blocksLastTime = 0
								_G.BlocksAlert = true
								_G.BlocksAlertLast = 0
							elseif _G.BlocksAlert and _G.DiscordAlerts then
								button.TextColor3 = Color3.fromRGB(255, 255, 255)
								button.Text = "Alert"
								image.ImageColor3 = Color3.fromRGB(255, 50, 50)
								_G.BlocksAlert = false
							else
								button.TextColor3 = Color3.fromRGB(55, 55, 55)
								button.Text = "Alert"
								image.ImageColor3 = Color3.fromRGB(255, 50, 50)
								_G.BlocksAlert = false
							end
						end)
					end
					coroutine.wrap(BJUIS_fake_script)()
					
					local function KOSUV_fake_script() -- ShellsAlertButton.LocalScript 
						local script = Instance.new('LocalScript', ShellsAlertButton)
						local button = script.Parent
						local image = button.Parent
						local frame = image.Parent
						
						button.MouseButton1Click:connect(function()
							if not _G.ShellsAlert and _G.DiscordAlerts then
								button.Text = "On"
								button.TextColor3 = Color3.fromRGB(255, 255, 255)
								image.ImageColor3 = Color3.fromRGB(50, 255, 50)
								--_G.shellssma = sma(smaPeriodMin)
								--_G.shellssmahour = sma(smaPeriodHour)
								--_G.shellsLastVal = 0
								--_G.shellsLastTime = 0
								_G.ShellsAlert = true
								_G.ShellsAlertLast = 0
							elseif _G.ShellsAlert and _G.DiscordAlerts then
								button.TextColor3 = Color3.fromRGB(255, 255, 255)
								button.Text = "Alert"
								image.ImageColor3 = Color3.fromRGB(255, 50, 50)
								_G.ShellsAlert = false
							else
								button.TextColor3 = Color3.fromRGB(55, 55, 55)
								button.Text = "Alert"
								image.ImageColor3 = Color3.fromRGB(255, 50, 50)
								_G.ShellsAlert = false
							end
						end)
					end
					coroutine.wrap(KOSUV_fake_script)()
					
					local function XJSUT_fake_script() -- PearlsAlertButton.LocalScript 
						local script = Instance.new('LocalScript', PearlsAlertButton)
						local button = script.Parent
						local image = button.Parent
						local frame = image.Parent
						
						button.MouseButton1Click:connect(function()
							if not _G.PearlsAlert and _G.DiscordAlerts then
								button.Text = "On"
								button.TextColor3 = Color3.fromRGB(255, 255, 255)
								image.ImageColor3 = Color3.fromRGB(50, 255, 50)
								--_G.pearlssma = sma(smaPeriodMin)
								--_G.pearlssmahour = sma(smaPeriodHour)
								--_G.pearlsLastVal = 0
								--_G.pearlsLastTime = 0
								_G.PearlsAlert = true
								_G.PearlsAlertLast = 0
							elseif _G.PearlsAlert and _G.DiscordAlerts then
								button.TextColor3 = Color3.fromRGB(255, 255, 255)
								button.Text = "Alert"
								image.ImageColor3 = Color3.fromRGB(255, 50, 50)
								_G.PearlsAlert = false
							else
								button.TextColor3 = Color3.fromRGB(55, 55, 55)
								button.Text = "Alert"
								image.ImageColor3 = Color3.fromRGB(255, 50, 50)
								_G.PearlsAlert = false
							end
						end)
					end
					coroutine.wrap(XJSUT_fake_script)()
					
					local function MSTWK_fake_script() -- StarsAlertButton.LocalScript 
						local script = Instance.new('LocalScript', StarsAlertButton)
						local button = script.Parent
						local image = button.Parent
						local frame = image.Parent
						
						button.MouseButton1Click:connect(function()
							if not _G.StarsAlert and _G.DiscordAlerts then
								button.Text = "On"
								button.TextColor3 = Color3.fromRGB(255, 255, 255)
								image.ImageColor3 = Color3.fromRGB(50, 255, 50)
								--_G.starssma = sma(smaPeriodMin)
								--_G.starssmahour = sma(smaPeriodHour)
								--_G.starsLastVal = 0
								--_G.starsLastTime = 0
								_G.StarsAlert = true
								_G.StarsAlertLast = 0
							elseif _G.StarsAlert and _G.DiscordAlerts then
								button.TextColor3 = Color3.fromRGB(255, 255, 255)
								button.Text = "Alert"
								image.ImageColor3 = Color3.fromRGB(255, 50, 50)
								_G.StarsAlert = false
							else
								button.TextColor3 = Color3.fromRGB(55, 55, 55)
								button.Text = "Alert"
								image.ImageColor3 = Color3.fromRGB(255, 50, 50)
								_G.StarsAlert = false
							end
						end)
					end
					coroutine.wrap(MSTWK_fake_script)()
					
					local function CHSIT_fake_script() -- MagmaAlertButton.LocalScript 
						local script = Instance.new('LocalScript', MagmaAlertButton)
						local button = script.Parent
						local image = button.Parent
						local frame = image.Parent
						
						button.MouseButton1Click:connect(function()
							if not _G.MagmaAlert and _G.DiscordAlerts then
								button.Text = "On"
								button.TextColor3 = Color3.fromRGB(255, 255, 255)
								image.ImageColor3 = Color3.fromRGB(50, 255, 50)
								--_G.magmasma = sma(smaPeriodMin)
								--_G.magmasmahour = sma(smaPeriodHour)
								--_G.magmaLastVal = 0
								--_G.magmaLastTime = 0
								_G.MagmaAlert = true
								_G.MagmaAlertLast = 0
							elseif _G.MagmaAlert and _G.DiscordAlerts then
								button.TextColor3 = Color3.fromRGB(255, 255, 255)
								button.Text = "Alert"
								image.ImageColor3 = Color3.fromRGB(255, 50, 50)
								_G.MagmaAlert = false
							else
								button.TextColor3 = Color3.fromRGB(55, 55, 55)
								button.Text = "Alert"
								image.ImageColor3 = Color3.fromRGB(255, 50, 50)
								_G.MagmaAlert = false
							end
						end)
					end
					coroutine.wrap(CHSIT_fake_script)()
					
					local function KJHSR_fake_script() -- CrystalAlertButton.LocalScript 
						local script = Instance.new('LocalScript', CrystalAlertButton)
						local button = script.Parent
						local image = button.Parent
						local frame = image.Parent
						
						button.MouseButton1Click:connect(function()
							if not _G.CrystalsAlert and _G.DiscordAlerts then
								button.Text = "On"
								button.TextColor3 = Color3.fromRGB(255, 255, 255)
								image.ImageColor3 = Color3.fromRGB(50, 255, 50)
								--_G.crystalssma = sma(smaPeriodMin)
								--_G.crystalssmahour = sma(smaPeriodHour)
								--_G.crystalsLastVal = 0
								--_G.crystalsLastTime = 0
								_G.CrystalsAlert = true
								_G.CrystalsAlertLast = 0
							elseif _G.CrystalsAlert and _G.DiscordAlerts then
								button.TextColor3 = Color3.fromRGB(255, 255, 255)
								button.Text = "Alert"
								image.ImageColor3 = Color3.fromRGB(255, 50, 50)
								_G.CrystalsAlert = false
							else
								button.TextColor3 = Color3.fromRGB(55, 55, 55)
								button.Text = "Alert"
								image.ImageColor3 = Color3.fromRGB(255, 50, 50)
								_G.CrystalsAlert = false
							end
						end)
					end
					coroutine.wrap(KJHSR_fake_script)()
					
					local function MKFUS_fake_script() -- EventAlertButton.LocalScript 
						local script = Instance.new('LocalScript', EventAlertButton)
						local button = script.Parent
						local image = button.Parent
						local frame = image.Parent
						
						button.MouseButton1Click:connect(function()
							if not _G.EventCurrAlert and _G.DiscordAlerts then
								button.Text = "On"
								button.TextColor3 = Color3.fromRGB(255, 255, 255)
								image.ImageColor3 = Color3.fromRGB(50, 255, 50)
								--_G.eventcurrsma = sma(smaPeriodMin)
								--_G.eventcurrsmahour = sma(smaPeriodHour)
								--_G.eventcurrLastVal = 0
								--_G.eventcurrLastTime = 0
								_G.EventCurrAlert = true
								_G.EventCurrAlertLast = 0
							elseif _G.EventCurrAlert and _G.DiscordAlerts then
								button.TextColor3 = Color3.fromRGB(255, 255, 255)
								button.Text = "Alert"
								image.ImageColor3 = Color3.fromRGB(255, 50, 50)
								_G.EventCurrAlert = false
							else
								button.TextColor3 = Color3.fromRGB(55, 55, 55)
								button.Text = "Alert"
								image.ImageColor3 = Color3.fromRGB(255, 50, 50)
								_G.EventCurrAlert = false
							end
						end)
					end
					coroutine.wrap(MKFUS_fake_script)()
					
					
					local function ZZQDMRR_fake_script() -- DiscordButton.LocalScript 
						local script = Instance.new('LocalScript', DiscordButton)
						local button = script.Parent
						local image = button.Parent
						local frame = image.Parent
						
							
						button.MouseButton1Click:connect(function()
							local newkey = frame.DiscordKeyBox.Text
							if not _G.DiscordAlerts then
								local request = sendmessage(newkey, "Sending Strelizia Alerts from __" .. game:GetService("Players").LocalPlayer.Name .. "__")
								_G.MessageSent = os.time()
								if request.success then
									button.TextColor3 = Color3.fromRGB(255, 255, 255)
									button.Text = "Discord Alerts\nOn"
									image.ImageColor3 = Color3.fromRGB(50, 255, 50)
									frame.DiscordKeyBox.TextColor3 = Color3.fromRGB(50, 255, 50)
									_G.DiscordKey = newkey
									_G.DiscordAlerts = true
									_G.DiscordMessage = ""
									_G.PetQueueing = false
									_G.MessageSending = false
									_G.BubbleAlertLast = 0
									BubbleAlertButton.TextColor3 = Color3.fromRGB(255, 255, 255)
									_G.EggsAlertLast = 0
									EggsAlertButton.TextColor3 = Color3.fromRGB(255, 255, 255)
									_G.CoinAlertLast = 0
									CoinAlertButton.TextColor3 = Color3.fromRGB(255, 255, 255)
									_G.GemAlertLast = 0
									GemAlertButton.TextColor3 = Color3.fromRGB(255, 255, 255)
									_G.CandyAlertLast = 0
									CandyAlertButton.TextColor3 = Color3.fromRGB(255, 255, 255)
									_G.BlocksAlertLast = 0
									BlocksAlertButton.TextColor3 = Color3.fromRGB(255, 255, 255)
									_G.ShellsAlertLast = 0
									ShellsAlertButton.TextColor3 = Color3.fromRGB(255, 255, 255)
									_G.PearlsAlertLast = 0
									PearlsAlertButton.TextColor3 = Color3.fromRGB(255, 255, 255)
									_G.StarsAlertLast = 0
									StarsAlertButton.TextColor3 = Color3.fromRGB(255, 255, 255)
									_G.MagmaAlertLast = 0
									MagmaAlertButton.TextColor3 = Color3.fromRGB(255, 255, 255)
									_G.CrystalsAlertLast = 0
									CrystalAlertButton.TextColor3 = Color3.fromRGB(255, 255, 255)
									_G.EventCurrAlertLast = 0
									EventAlertButton.TextColor3 = Color3.fromRGB(255, 255, 255)
									
								else
									button.TextColor3 = Color3.fromRGB(55, 55, 55)
									button.Text = "Discord\nAlerts"
									frame.DiscordKeyBox.TextColor3 = Color3.fromRGB(255, 50, 50)
									local oldText = frame.DiscordKeyBox.Text
									frame.DiscordKeyBox.Text = request.error
									wait(5)
									button.TextColor3 = Color3.fromRGB(255, 255, 255)
									frame.DiscordKeyBox.TextColor3 = Color3.fromRGB(255, 255, 255)
									frame.DiscordKeyBox.Text = oldText
									_G.DiscordMessage = ""
									_G.PetQueueing = false
									_G.MessageSending = false
									_G.BubbleAlert = false
									BubbleAlertButton.TextColor3 = Color3.fromRGB(55, 55, 55)
									BubbleAlertButton.Text = "Alert"
									BubbleAlertimage.ImageColor3 = Color3.fromRGB(255, 50, 50)
									_G.EggsAlert = false
									EggsAlertButton.TextColor3 = Color3.fromRGB(55, 55, 55)
									EggsAlertButton.Text = "Alert"
									EggsAlertimage.ImageColor3 = Color3.fromRGB(255, 50, 50)
									_G.CoinAlert = false
									CoinAlertButton.TextColor3 = Color3.fromRGB(55, 55, 55)
									CoinAlertButton.Text = "Alert"
									CoinAlertimage.ImageColor3 = Color3.fromRGB(255, 50, 50)
									_G.GemAlert = false
									GemAlertButton.TextColor3 = Color3.fromRGB(55, 55, 55)
									GemAlertButton.Text = "Alert"
									GemAlertimage.ImageColor3 = Color3.fromRGB(255, 50, 50)
									_G.CandyAlert = false
									CandyAlertButton.TextColor3 = Color3.fromRGB(55, 55, 55)
									CandyAlertButton.Text = "Alert"
									CandyAlertimage.ImageColor3 = Color3.fromRGB(255, 50, 50)
									_G.BlocksAlert = false
									BlocksAlertButton.TextColor3 = Color3.fromRGB(55, 55, 55)
									BlocksAlertButton.Text = "Alert"
									BlocksAlertimage.ImageColor3 = Color3.fromRGB(255, 50, 50)
									_G.ShellsAlert = false
									ShellsAlertButton.TextColor3 = Color3.fromRGB(55, 55, 55)
									ShellsAlertButton.Text = "Alert"
									ShellsAlertimage.ImageColor3 = Color3.fromRGB(255, 50, 50)
									_G.PearlsAlert = false
									PearlsAlertButton.TextColor3 = Color3.fromRGB(55, 55, 55)
									PearlsAlertButton.Text = "Alert"
									PearlsAlertimage.ImageColor3 = Color3.fromRGB(255, 50, 50)
									_G.StarsAlert = false
									StarsAlertButton.TextColor3 = Color3.fromRGB(55, 55, 55)
									StarsAlertButton.Text = "Alert"
									StarsAlertimage.ImageColor3 = Color3.fromRGB(255, 50, 50)
									_G.MagmaAlert = false
									MagmaAlertButton.TextColor3 = Color3.fromRGB(55, 55, 55)
									MagmaAlertButton.Text = "Alert"
									MagmaAlertimage.ImageColor3 = Color3.fromRGB(255, 50, 50)
									_G.CrystalsAlert = false
									CrystalAlertButton.TextColor3 = Color3.fromRGB(55, 55, 55)
									CrystalAlertButton.Text = "Alert"
									CrystalAlertimage.ImageColor3 = Color3.fromRGB(255, 50, 50)
									_G.EventCurrAlert = false
									EventAlertButton.TextColor3 = Color3.fromRGB(55, 55, 55)
									EventAlertButton.Text = "Alert"
									EventAlertimage.ImageColor3 = Color3.fromRGB(255, 50, 50)
									
								end
							else
								_G.DiscordAlerts = false
								button.TextColor3 = Color3.fromRGB(255, 255, 255)
								button.Text = "Discord\nAlerts"
								image.ImageColor3 = Color3.fromRGB(255, 50, 50)
								frame.DiscordKeyBox.TextColor3 = Color3.fromRGB(255, 255, 255)
								frame.DiscordKeyBox.Text = _G.DiscordKey
								_G.DiscordMessage = ""
								_G.PetQueueing = false
								_G.MessageSending = false
								_G.BubbleAlert = false
									BubbleAlertButton.TextColor3 = Color3.fromRGB(55, 55, 55)
									BubbleAlertButton.Text = "Alert"
									BubbleAlertimage.ImageColor3 = Color3.fromRGB(255, 50, 50)
									_G.EggsAlert = false
									EggsAlertButton.TextColor3 = Color3.fromRGB(55, 55, 55)
									EggsAlertButton.Text = "Alert"
									EggsAlertimage.ImageColor3 = Color3.fromRGB(255, 50, 50)
									_G.CoinAlert = false
									CoinAlertButton.TextColor3 = Color3.fromRGB(55, 55, 55)
									CoinAlertButton.Text = "Alert"
									CoinAlertimage.ImageColor3 = Color3.fromRGB(255, 50, 50)
									_G.GemAlert = false
									GemAlertButton.TextColor3 = Color3.fromRGB(55, 55, 55)
									GemAlertButton.Text = "Alert"
									GemAlertimage.ImageColor3 = Color3.fromRGB(255, 50, 50)
									_G.CandyAlert = false
									CandyAlertButton.TextColor3 = Color3.fromRGB(55, 55, 55)
									CandyAlertButton.Text = "Alert"
									CandyAlertimage.ImageColor3 = Color3.fromRGB(255, 50, 50)
									_G.BlocksAlert = false
									BlocksAlertButton.TextColor3 = Color3.fromRGB(55, 55, 55)
									BlocksAlertButton.Text = "Alert"
									BlocksAlertimage.ImageColor3 = Color3.fromRGB(255, 50, 50)
									_G.ShellsAlert = false
									ShellsAlertButton.TextColor3 = Color3.fromRGB(55, 55, 55)
									ShellsAlertButton.Text = "Alert"
									ShellsAlertimage.ImageColor3 = Color3.fromRGB(255, 50, 50)
									_G.PearlsAlert = false
									PearlsAlertButton.TextColor3 = Color3.fromRGB(55, 55, 55)
									PearlsAlertButton.Text = "Alert"
									PearlsAlertimage.ImageColor3 = Color3.fromRGB(255, 50, 50)
									_G.StarsAlert = false
									StarsAlertButton.TextColor3 = Color3.fromRGB(55, 55, 55)
									StarsAlertButton.Text = "Alert"
									StarsAlertimage.ImageColor3 = Color3.fromRGB(255, 50, 50)
									_G.MagmaAlert = false
									MagmaAlertButton.TextColor3 = Color3.fromRGB(55, 55, 55)
									MagmaAlertButton.Text = "Alert"
									MagmaAlertimage.ImageColor3 = Color3.fromRGB(255, 50, 50)
									_G.CrystalsAlert = false
									CrystalAlertButton.TextColor3 = Color3.fromRGB(55, 55, 55)
									CrystalAlertButton.Text = "Alert"
									CrystalAlertimage.ImageColor3 = Color3.fromRGB(255, 50, 50)
									_G.EventCurrAlert = false
									EventAlertButton.TextColor3 = Color3.fromRGB(55, 55, 55)
									EventAlertButton.Text = "Alert"
									EventAlertimage.ImageColor3 = Color3.fromRGB(255, 50, 50)
							end
								
						end)
						
					end
					coroutine.wrap(ZZQDMRR_fake_script)()

					
					
					
					local function JJYRF_fake_script() -- expandButton.LocalScript 
						local script = Instance.new('LocalScript', expandButton)

							local button = script.Parent
							local statframe = script.Parent.Parent.StatFrame
							
							button.MouseButton1Click:connect(function()
								if button.Text == "-" then
									button.Text = "+"
									statframe.Visible = false
								else
									button.Text = "-"
									statframe.Visible = true
								end
							end)
					
								
	
						end
					coroutine.wrap(JJYRF_fake_script)()

					
					
					local function ZHHDKPU_fake_script() -- MainInfoFrame.LocalScript 
						local script = Instance.new('LocalScript', MainInfoFrame)

							local mouse = game:GetService("Players").LocalPlayer:GetMouse();
							local inputService = game:GetService('UserInputService');
							local heartbeat = game:GetService("RunService").Heartbeat;
							local frame = script.Parent
							-- // credits to Ririchi / Inori for this cute drag function :)
						
							   local s, event = pcall(function()
									return frame.MouseEnter
								end)
						
								if s then
									frame.Active = true
									frame.Draggable = true
									
									event:connect(function()
										local input = frame.InputBegan:connect(function(key)
											if key.UserInputType == Enum.UserInputType.MouseButton1 then
												local objectPosition = Vector2.new(mouse.X - frame.AbsolutePosition.X, mouse.Y - frame.AbsolutePosition.Y);
												while heartbeat:wait() and inputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
													frame:TweenPosition(UDim2.new(0, mouse.X - objectPosition.X + (frame.Size.X.Offset * frame.AnchorPoint.X), 0, mouse.Y - objectPosition.Y + (frame.Size.Y.Offset * frame.AnchorPoint.Y)), 'Out', 'Quad', 0.1, true);
												end
											end
										end)
						
										local leave;
										leave = frame.MouseLeave:connect(function()
											input:disconnect();
											leave:disconnect();
										end)
									 end)
								end
					end
					coroutine.wrap(ZHHDKPU_fake_script)()
					
					local function PMXUFEP_fake_script() -- StatFrame.LocalScript 
						local script = Instance.new('LocalScript', StatFrame)

							local mouse = game:GetService("Players").LocalPlayer:GetMouse();
							local inputService = game:GetService('UserInputService');
							local heartbeat = game:GetService("RunService").Heartbeat;
							local mainframe = script.Parent.Parent
							local thisframe = script.Parent
							-- // credits to Ririchi / Inori for this cute drag function :)
						
							   local s, event = pcall(function()
									return thisframe.MouseEnter
								end)
						
								if s then
									thisframe.Active = true
									mainframe.Draggable = true
									
									event:connect(function()
										local input = thisframe.InputBegan:connect(function(key)
											if key.UserInputType == Enum.UserInputType.MouseButton1 then
												local objectPosition = Vector2.new(mouse.X - mainframe.AbsolutePosition.X, mouse.Y - mainframe.AbsolutePosition.Y);
												while heartbeat:wait() and inputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
													mainframe:TweenPosition(UDim2.new(0, mouse.X - objectPosition.X + (mainframe.Size.X.Offset * mainframe.AnchorPoint.X), 0, mouse.Y - objectPosition.Y + (mainframe.Size.Y.Offset * mainframe.AnchorPoint.Y)), 'Out', 'Quad', 0.1, true);
												end
											end
										end)
						
										local leave;
										leave = thisframe.MouseLeave:connect(function()
											input:disconnect();
											leave:disconnect();
										end)
									end)
								end
							
						
					end
					coroutine.wrap(PMXUFEP_fake_script)()
			
    
    local library = loadstring(game:HttpGet(("https://textbin.net/raw/e2oqz5cybm"),true))()
	            
    local f = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.ClientScript.Modules.InputService).UpdateClickDelay)[1]
    repeat
        wait(.1)
        f = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.ClientScript.Modules.InputService).UpdateClickDelay)[1]
    until f ~= nil
    local Module = game:GetService("ReplicatedStorage").Assets.Modules.ImageService
    local guiserv = require(game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.ClientScript.Modules.GuiService)
	
    local pets = debug.getupvalues(require(Module))[1]
    
    local farm = library:CreateWindow('Auto Farm')
    
    local petlist = require(game:GetService("ReplicatedStorage").Assets.Modules.ItemDataService.PetModule)
    local hatlist = require(game:GetService("ReplicatedStorage").Assets.Modules.ItemDataService.HatModule)
    local raritys = {}
    local moneyz = require(game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.ClientScript.Modules.GuiService)
    
	_G.petalertcounter = 0
	_G.counttoten = 0
	_G.hatchalertposx = 195
	_G.hatchalertposy = 100
	_G.PetQueueing = false
	_G.MessageSending = false
	--_G.CoinAlertLast = 0
	--_G.CrystalAlertLast = 0
	--_G.EventCurrAlertLast = 0
	
	local function formattedTimeStamp()
		local date = os.date("*t")
		return ("%02d:%02d:%02d%s"):format(((date.hour % 24) - 1) % 12 + 1, date.min, date.sec, date.hour > 11 and "PM" or "AM")
	end

	local function inventoryAlert(itemname, rarity, shiny, color)
	
		if _G.DiscordAlerts then
			if _G.MessageSent == 0 then
				_G.MessageSent = os.time()
			end			
			
			while (_G.MessageSending == true) do
				wait(1)
			end
			
			
			--if _G.DiscordMessage == "" then
				--_G.DiscordMessage = "```css\n"-- .. "Roblox Name:\t" .. game:GetService("Players").LocalPlayer.Name  .. "\n\n"
			--end
			if color == "orange" then --and (_G.CurrAlertLast == 0 or os.time() >= (_G.CurrAlertLast + (smaPeriodSecs * _G.currAlertWait))) then
				_G.DiscordMessage = _G.DiscordMessage .. "```cs\n# "
				_G.DiscordMessage = _G.DiscordMessage .. formattedTimeStamp() .. " - " .. game:GetService("Players").LocalPlayer.Name
				_G.DiscordMessage = _G.DiscordMessage .. " - " .. rarity .. " Alert #\n"
				_G.DiscordMessage = _G.DiscordMessage .. "# " .. itemname
				_G.DiscordMessage = _G.DiscordMessage .. " #\n```"
				DiscordKeyBox.Text = formattedTimeStamp()
				DiscordKeyBox.Text = DiscordKeyBox.Text .. rarity .. "Alert Queued!\nMessage Cooldown expires in " .. math.floor((_G.MessageSent + _G.MessageWait) - os.time()) .. " sec."
				DiscordKeyBox.TextColor3 = Color3.fromRGB(255, 255, 55)
			else			
				_G.PetQueueing = true
				if rarity == "SECRET" then
					_G.DiscordMessage = _G.DiscordMessage .. "```diff\n- "
				elseif itemname:find("Mythic") then
					_G.DiscordMessage = _G.DiscordMessage .. "```tex\n$ "
				elseif shiny and (color == "blue" or color == "green") then
					_G.DiscordMessage = _G.DiscordMessage .. "```asciidoc\n= "
				elseif color == "green" then
					_G.DiscordMessage = _G.DiscordMessage .. "```diff\n+ "
				elseif color == "blue" then
					_G.DiscordMessage = _G.DiscordMessage .. "```yaml\n< "
				elseif shiny then
					_G.DiscordMessage = _G.DiscordMessage .. "```fix\n^ "
				else
					_G.DiscordMessage = _G.DiscordMessage .. "```\n~ "
				end
				
				_G.DiscordMessage = _G.DiscordMessage .. formattedTimeStamp() .. " - " .. game:GetService("Players").LocalPlayer.Name .. " - "
				
				if rarity == "SECRET" then
					_G.DiscordMessage = _G.DiscordMessage .. "SECRET "
				else
					_G.DiscordMessage = _G.DiscordMessage .. rarity .. " "
				end
				
				_G.DiscordMessage = _G.DiscordMessage  .. itemname
							
				if shiny then
					_G.DiscordMessage = _G.DiscordMessage .. " (SHINY)"
				end
				if rarity == "SECRET" then
					_G.DiscordMessage = _G.DiscordMessage .. " -\n```"
				elseif itemname:find("Mythic") then
					_G.DiscordMessage = _G.DiscordMessage .. " $\n```"
				elseif shiny and (color == "blue" or color == "green") then
					_G.DiscordMessage = _G.DiscordMessage .. " =\n```"
				elseif color == "green" then
					_G.DiscordMessage = _G.DiscordMessage .. " +\n```"
				elseif color == "blue" then
					_G.DiscordMessage = _G.DiscordMessage .. " >\n```"
				elseif shiny then
					_G.DiscordMessage = _G.DiscordMessage .. " ^\n```"
				else
					_G.DiscordMessage = _G.DiscordMessage .. " ~\n```"
				end
				
				DiscordKeyBox.Text = formattedTimeStamp()
				if shiny then
					DiscordKeyBox.Text = DiscordKeyBox.Text .. " - SHINY "
				else
					DiscordKeyBox.Text = DiscordKeyBox.Text .. " - "
				end
				DiscordKeyBox.Text = DiscordKeyBox.Text .. itemname .. " Queued!\nMessage Cooldown expires in " .. math.floor((_G.MessageSent + _G.MessageWait) - os.time()) .. " sec."
				DiscordKeyBox.TextColor3 = Color3.fromRGB(255, 255, 55)
				_G.PetQueueing = false
			end
		end
			
				if _G.PetAlerts then
					_G.petalertcounter = _G.petalertcounter + 1
					_G.counttoten = _G.counttoten + 1
					
					if _G.counttoten == 12 then
					_G.hatchalertposx = 195 - (30 * _G.petalertcounter / 12)
					_G.hatchalertposy = 100 + (0 * _G.petalertcounter / 12)
					_G.counttoten = 1
					end
				
				
						-- Gui to Lua
						-- Version: 3.2

						-- Instances:

						local HatchAlert = Instance.new("Frame")
						local HatchAnnouncement = Instance.new("TextLabel")
						local HatchedPetImage = Instance.new("ImageLabel")
						local Closepetimagebutton = Instance.new("TextButton")
						local ShinyLabel = Instance.new("TextLabel")

						--Properties:


						HatchAlert.Name = "HatchAlert"
						HatchAlert.Parent = InfoPanel
						HatchAlert.Active = true
						HatchAlert.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
						if rarity == "SECRET" then
						HatchAlert.Position = UDim2.new(0.298314333, 0, 0.17678453, 0)
						HatchAlert.Size = UDim2.new(0, 513, 0, 111)
						else
						HatchAlert.Position = UDim2.new(0,_G.hatchalertposx + ((_G.counttoten - 1) * 25),0,_G.hatchalertposy + ((_G.counttoten - 1) * 25))
						HatchAlert.Size = UDim2.new(0, 303, 0, 65)
						end
						HatchAnnouncement.Name = "HatchAnnouncement"
						HatchAnnouncement.Parent = HatchAlert
						HatchAnnouncement.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
						HatchAnnouncement.BackgroundTransparency = 1.000
						HatchAnnouncement.BorderColor3 = Color3.fromRGB(27, 42, 53)
						HatchAnnouncement.BorderSizePixel = 0
						if rarity == "SECRET" then
						HatchAnnouncement.Position = UDim2.new(0.0645755529, 0, 0.150764391, 0)
						HatchAnnouncement.Size = UDim2.new(0, 435, 0, 76)
						else
						HatchAnnouncement.Position = UDim2.new(0.0645755976, 0, 0.150764331, 0)
						HatchAnnouncement.Size = UDim2.new(0, 263, 0, 45)
						end

						if rarity == "SECRET" then
							HatchAnnouncement.TextColor3 = Color3.fromRGB(239, 31, 107)
						elseif itemname:find("Mythic") then
							HatchAnnouncement.TextColor3 = Color3.fromRGB(96, 16, 166)
						elseif shiny and (color == "blue" or color == "green") then
							HatchAnnouncement.TextColor3 = Color3.fromRGB(31, 107, 239)
						elseif color == "green" then
							HatchAnnouncement.TextColor3 = Color3.fromRGB(20, 193, 32)
						elseif color == "blue" then
							HatchAnnouncement.TextColor3 = Color3.fromRGB(30, 231, 238)
						elseif shiny then
							HatchAnnouncement.TextColor3 = Color3.fromRGB(241, 247, 47)
						elseif rarity == "Epic" then
							HatchAnnouncement.TextColor3 = Color3.fromRGB(161, 112, 182)
						elseif rarity == "Rare" then
							HatchAnnouncement.TextColor3 = Color3.fromRGB(238, 62, 62)
						elseif rarity == "Unique" then
							HatchAnnouncement.TextColor3 = Color3.fromRGB(230, 173, 108)
						else
							HatchAnnouncement.TextColor3 = Color3.fromRGB(255, 255, 255)
						end


						
						HatchAnnouncement.Font = Enum.Font.SourceSans
						if shiny then
						HatchAnnouncement.Text = "#" .. _G.petalertcounter .. " - SHINY " .. rarity .. " " .. itemname
						else
						HatchAnnouncement.Text = "#" .. _G.petalertcounter .. " - " .. rarity .. " " .. itemname
						end
						HatchAnnouncement.TextScaled = true
						HatchAnnouncement.TextSize = 20.000
						HatchAnnouncement.TextWrapped = true
						HatchedPetImage.Name = "HatchedPetImage"
						HatchedPetImage.Parent = HatchAlert
						HatchedPetImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						HatchedPetImage.BackgroundTransparency = 1.000
						if rarity == "SECRET" then
						HatchedPetImage.Position = UDim2.new(0.114404142, 0, 1.1953187, 0)
						HatchedPetImage.Size = UDim2.new(0, 395, 0, 396)
						else
						HatchedPetImage.Position = UDim2.new(0.161716178, 0, 1.19279087, 0)
						HatchedPetImage.Size = UDim2.new(0, 206, 0, 206)
						end
						for i,d in pairs(pets) do
									if i == itemname then
										HatchedPetImage.Image = d
									end
								end
						Closepetimagebutton.Name = "Close pet image button"
						Closepetimagebutton.Parent = HatchAlert
						Closepetimagebutton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
						Closepetimagebutton.BorderSizePixel = 0
						if rarity == "SECRET" then
						Closepetimagebutton.Position = UDim2.new(0.929351032, 0, -0.16060631, 0)
						Closepetimagebutton.Size = UDim2.new(0, 54, 0, 45)
						else
						Closepetimagebutton.Position = UDim2.new(0.939226687, 0, -0.16060628, 0)
						Closepetimagebutton.Size = UDim2.new(0, 32, 0, 28)
						end
						Closepetimagebutton.ZIndex = 2
						Closepetimagebutton.Font = Enum.Font.SourceSans
						Closepetimagebutton.Text = "X"
						Closepetimagebutton.TextColor3 = Color3.fromRGB(255, 255, 255)
						Closepetimagebutton.TextScaled = true
						Closepetimagebutton.TextSize = 14.000
						Closepetimagebutton.TextWrapped = true

						if shiny then
							ShinyLabel.Name = "ShinyLabel"
							ShinyLabel.Parent = HatchAlert
							ShinyLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							ShinyLabel.BackgroundTransparency = 1.000
							if rarity == "SECRET" then
								ShinyLabel.Position = UDim2.new(0.482649714, 0, 3.84018683, 0)
								ShinyLabel.Size = UDim2.new(0, 185, 0, 93)
							else
								ShinyLabel.Position = UDim2.new(0.446203232, 0, 3.67802453, 0)
								ShinyLabel.Size = UDim2.new(0, 119, 0, 38)
							end
							ShinyLabel.Font = Enum.Font.SourceSans
							ShinyLabel.Text = "(SHINY)"
							ShinyLabel.TextColor3 = Color3.fromRGB(255, 255, 0)
							ShinyLabel.TextScaled = true
							ShinyLabel.TextSize = 14.000
							ShinyLabel.TextStrokeTransparency = 0.000
							ShinyLabel.TextWrapped = true
						end



						-- Scripts:

						--local function JLJBES_fake_script() -- HatchAnnouncement.LocalScript 
							--local script = Instance.new('LocalScript', HatchAnnouncement)

							
								--function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end
							
								--counter = 0
							
								--while wait(0.2) do
									--script.Parent.TextColor3 = Color3.fromHSV(zigzag(counter),1,1)
							 
									--counter = counter + 0.01
								--end
							
							
						--end
						--coroutine.wrap(JLJBES_fake_script)()
						local function NHUNXNF_fake_script() -- HatchedPetImage.LocalScript 
							local script = Instance.new('LocalScript', HatchedPetImage)

								local thisitem = script.Parent
								local alertframe = script.Parent.Parent
								local mouse = game:GetService("Players").LocalPlayer:GetMouse()
								local inputService = game:GetService('UserInputService')
								local heartbeat = game:GetService("RunService").Heartbeat
									
								local s, event = pcall(function() return thisitem.MouseEnter end)
								
								if s then
									thisitem.Active = true
									alertframe.Draggable = true
								
									event:connect(function()
										local input = thisitem.InputBegan:connect(function(key)
										if key.UserInputType == Enum.UserInputType.MouseButton1 then
											local objectPosition = Vector2.new(mouse.X - alertframe.AbsolutePosition.X, mouse.Y - alertframe.AbsolutePosition.Y)
											while heartbeat:wait() and inputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
												pcall(function()
													alertframe:TweenPosition(UDim2.new(0, mouse.X - objectPosition.X + (alertframe.Size.X.Offset * alertframe.AnchorPoint.X), 0, mouse.Y - objectPosition.Y + (alertframe.Size.Y.Offset * alertframe.AnchorPoint.Y)), 'Out', 'Linear', 0.1, true)
												end)
											end
										end
									end)
								
									local leave
									leave = thisitem.MouseLeave:connect(function()
												input:disconnect()
												leave:disconnect()
											end)
									end)
								end
							
						end
						coroutine.wrap(NHUNXNF_fake_script)()
						local function HIUPK_fake_script() -- Closepetimagebutton.LocalScript 
							local script = Instance.new('LocalScript', Closepetimagebutton)

							local button = script.Parent
							button.Activated:Connect(function() button.Parent:Destroy() end)
						end
						coroutine.wrap(HIUPK_fake_script)()
						local function PLPYXR_fake_script() -- HatchAlert.LocalScript 
							local script = Instance.new('LocalScript', HatchAlert)

								local thisitem = script.Parent
								local alertframe = script.Parent
								local mouse = game:GetService("Players").LocalPlayer:GetMouse()
								local inputService = game:GetService('UserInputService')
								local heartbeat = game:GetService("RunService").Heartbeat
									
								local s, event = pcall(function() return thisitem.MouseEnter end)
								
								if s then
									thisitem.Active = true
									alertframe.Draggable = true
								
									event:connect(function()
										local input = thisitem.InputBegan:connect(function(key)
										if key.UserInputType == Enum.UserInputType.MouseButton1 then
											local objectPosition = Vector2.new(mouse.X - alertframe.AbsolutePosition.X, mouse.Y - alertframe.AbsolutePosition.Y)
											while heartbeat:wait() and inputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
												pcall(function()
													alertframe:TweenPosition(UDim2.new(0, mouse.X - objectPosition.X + (alertframe.Size.X.Offset * alertframe.AnchorPoint.X), 0, mouse.Y - objectPosition.Y + (alertframe.Size.Y.Offset * alertframe.AnchorPoint.Y)), 'Out', 'Linear', 0.1, true)
												end)
											end
										end
									end)
								
									local leave
									leave = thisitem.MouseLeave:connect(function()
												input:disconnect()
												leave:disconnect()
											end)
									end)
								end
							
						end
						coroutine.wrap(PLPYXR_fake_script)()
		
	end
end	

spawn(function()
	while wait(1) do
		if _G.DiscordAlerts then
			if _G.MessageSent == 0 then
				_G.MessageSent = os.time()
			end	
			if (os.time() >= (_G.MessageSent + _G.MessageWait)) and _G.DiscordMessage ~= "" then
				_G.MessageSending = true
				local request = sendmessage(_G.DiscordKey, _G.DiscordMessage)
				DiscordKeyBox.TextColor3 = Color3.fromRGB(255, 255, 55)
				DiscordKeyBox.Text = "Attempting To Send Message..."
				
						--while not request.success do
							--DiscordKeyBox.Text = DiscordKeyBox.Text .. "..." .. math.floor((_G.MessageSent + waittime) - os.time())
							--wait(1)
							--if os.time() >= (now + waittime) then
								--break
							--end
						--end
				wait(2)
				if request.success then
					DiscordKeyBox.TextColor3 = Color3.fromRGB(55, 255, 55)					
					DiscordKeyBox.Text = formattedTimeStamp() .. " - Successfully Sent Message!"
					_G.DiscordMessage = ""
					_G.MessageSent = os.time()
				else
					DiscordKeyBox.TextColor3 = Color3.fromRGB(255, 55, 55)
					DiscordKeyBox.Text = request.error
					wait(5)
					DiscordKeyBox.Text = "Retrying in " .. _G.MessageWait .. " seconds"
					_G.MessageSent = os.time()
				end
				wait(2)
				_G.MessageSending = false
			end
		end
	end
end)

	local currencys = {}
	local currencylist = {}
	table.insert(currencylist,"Bubbles")
	table.insert(currencylist,"Coins")
    _G.canafford = false
	_G.canaffordchange = false
    for i,d in pairs(moneyz) do
        if string.find(i,"Changed") ~= nil then
			local currName = i:sub(1, #i-7)
			local skipCurr = false
			for i,d in pairs(oldCurrency) do
				if d == currName then
					skipCurr = true
				end
			end
			if not skipCurr then	
				currencys[currName] = debug.getupvalues(d)[3]
				table.insert(currencylist,currName)
			end
        end
    end
	
	

function getCurrRate(currAverage, lastTime, period)
	local currAvg = currAverage
	local currRate = 0
	if period == "mins" then
		currRate = math.floor(currAvg * smaPeriodMin) -- / (os.time() - lastTime))
	elseif period == "hours" then
		currRate = math.floor(currAvg * smaPeriodHour) -- / (os.time() - lastTime))
	end
	local isNeg = false
	if currRate < 0 then
		isNeg = true
		currRate = -currRate
	end	
	local currTril = currRate / 1000000000000
	local currBil = currRate / 1000000000
	local currMil = currRate / 1000000
	local currThou = currRate / 1000
	currRate = math.floor(currRate)
	if currTril >= 1 then
		currFormatted = string.format("%.1fT", currTril)
	elseif currBil >= 1 then
		currFormatted = string.format("%.1fB", currBil)
	elseif currMil >= 1 then
		currFormatted = string.format("%.1fM", currMil)
	elseif currThou >= 1 then
		currFormatted = string.format("%.1fK", currThou)
	else
		currFormatted = currRate
	end
	if isNeg then
		currFormatted = "-" .. currFormatted
	end
	return currFormatted
end


			
								_G.bubblesma = sma(smaPeriodMin)
								_G.bubblesmahour = sma(smaPeriodHour)
								_G.bubbleFirstVal = 0
								_G.bubbleLastVal = 0
								_G.bubbleLastTime = 0
								_G.eggssma = sma(smaPeriodMin)
								_G.eggssmahour = sma(smaPeriodHour)
								_G.eggsFirstVal = 0
								_G.eggsLastVal = 0
								_G.eggsLastTime = 0
								_G.coinsma = sma(smaPeriodMin)
								_G.coinsmahour = sma(smaPeriodHour)
								_G.coinFirstVal = 0
								_G.coinLastVal = 0
								_G.coinLastTime = 0
								_G.gemsma = sma(smaPeriodMin)
								_G.gemsmahour = sma(smaPeriodHour)
								_G.gemFirstVal = 0
								_G.gemLastVal = 0
								_G.gemLastTime = 0
								_G.candysma = sma(smaPeriodMin)
								_G.candysmahour = sma(smaPeriodHour)
								_G.candyFirstVal = 0
								_G.candyLastVal = 0
								_G.candyLastTime = 0
								_G.blockssma = sma(smaPeriodMin)
								_G.blockssmahour = sma(smaPeriodHour)
								_G.blocksFirstVal = 0
								_G.blocksLastVal = 0
								_G.blocksLastTime = 0
								_G.shellssma = sma(smaPeriodMin)
								_G.shellssmahour = sma(smaPeriodHour)
								_G.shellsFirstVal = 0
								_G.shellsLastVal = 0
								_G.shellsLastTime = 0
								_G.pearlssma = sma(smaPeriodMin)
								_G.pearlssmahour = sma(smaPeriodHour)
								_G.pearlsFirstVal = 0
								_G.pearlsLastVal = 0
								_G.pearlsLastTime = 0
								_G.starssma = sma(smaPeriodMin)
								_G.starssmahour = sma(smaPeriodHour)
								_G.starsFirstVal = 0								
								_G.starsLastVal = 0
								_G.starsLastTime = 0
								_G.magmasma = sma(smaPeriodMin)
								_G.magmasmahour = sma(smaPeriodHour)
								_G.magmaFirstVal = 0
								_G.magmaLastVal = 0
								_G.magmaLastTime = 0
								_G.crystalssma = sma(smaPeriodMin)
								_G.crystalssmahour = sma(smaPeriodHour)
								_G.crystalsFirstVal = 0
								_G.crystalsLastVal = 0
								_G.crystalsLastTime = 0
								_G.eventcurrsma = sma(smaPeriodMin)
								_G.eventcurrsmahour = sma(smaPeriodHour)
								_G.eventcurrFirstVal = 0
								_G.eventcurrLastVal = 0
								_G.eventcurrLastTime = 0
																								
	
	spawn(function()
		while wait(.1) do
			local playerData = f:InvokeServer("GetPlayerData")
			local eggsOpenedindex = require(game:GetService("ReplicatedStorage").Assets.Modules.Library.index)["EGGS_OPENED"]
			local bubblesBlownindex = require(game:GetService("ReplicatedStorage").Assets.Modules.Library.index)["BUBBLES_BLOWN"]
			local shardindex = require(game:GetService("ReplicatedStorage").Assets.Modules.Library.index)["SHARDS"]
			formatted = playerData[eggsOpenedindex]
			while true do  
				formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
				if (k==0) then
					break
				end
			end
			Eggs.Text =  formatted
			if _G.eggsLastTime ~= 0 then
				if os.time() >= (_G.eggsLastTime + _G.currAlertWait) then
					local ratemins = getCurrRate(_G.eggssma(playerData[eggsOpenedindex] - _G.eggsLastVal), _G.eggsLastTime, "mins")
					local ratehours = getCurrRate(_G.eggssmahour(playerData[eggsOpenedindex] - _G.eggsLastVal), _G.eggsLastTime, "hours")
					EggsPerMin.Text = ratemins .. "/m"
					EggsPerHour.Text = ratehours .. "/h"
					_G.eggsLastVal = playerData[eggsOpenedindex]
					_G.eggsLastTime = os.time()
					
					if _G.EggsAlert and _G.DiscordAlerts and (_G.EggsAlertLast == 0 or os.time() >= (_G.EggsAlertLast + (smaPeriodMin * _G.currAlertWait * _G.currAlertMsgWaitMins))) then
						inventoryAlert("Total: " .. formatted .. " #\n# Current Rates:\t" .. ratemins .. "/m & " .. ratehours .. "/h", "Eggs", false, "orange")
						_G.EggsAlertLast = os.time()
					elseif _G.EggsAlert and _G.DiscordAlerts then
						local minutesLeft = 0
						local secondsLeft = (_G.EggsAlertLast + (smaPeriodMin * _G.currAlertWait * _G.currAlertMsgWaitMins)) - os.time()
						if secondsLeft >= 60 then
							minutesLeft = math.floor(secondsLeft / 60)
							secondsLeft = secondsLeft - (minutesLeft * 60)
						end
						EggsAlertButton.Text = string.format("%02d:%02d", minutesLeft, secondsLeft)
					end
					
				end
			elseif _G.eggsLastTime == 0 then
				_G.eggsFirstVal = playerData[eggsOpenedindex]
				_G.eggsLastVal = playerData[eggsOpenedindex]
				_G.eggsLastTime = os.time()
			end
			formatted = playerData[bubblesBlownindex]
			while true do  
				formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
				if (k==0) then
					break
				end
			end
			Bubbles.Text =  formatted
			if _G.bubbleLastTime ~= 0 then
				if os.time() >= (_G.bubbleLastTime + _G.currAlertWait) then
					local ratemins = getCurrRate(_G.bubblesma(playerData[bubblesBlownindex] - _G.bubbleLastVal), _G.bubbleLastTime, "mins")
					local ratehours = getCurrRate(_G.bubblesmahour(playerData[bubblesBlownindex] - _G.bubbleLastVal), _G.bubbleLastTime, "hours")
					BubblesPerMin.Text = ratemins .. "/m"
					BubblesPerHour.Text = ratehours .. "/h"
					_G.bubbleLastVal = playerData[bubblesBlownindex]
					_G.bubbleLastTime = os.time()
					
					if _G.BubbleAlert and _G.DiscordAlerts and (_G.BubbleAlertLast == 0 or os.time() >= (_G.BubbleAlertLast + (smaPeriodMin * _G.currAlertWait * _G.currAlertMsgWaitMins))) then
						inventoryAlert("Total: " .. formatted .. " #\n# Current Rates:\t" .. ratemins .. "/m & " .. ratehours .. "/h", "Bubbles", false, "orange")
						_G.BubbleAlertLast = os.time()
					elseif _G.BubbleAlert and _G.DiscordAlerts then
						local minutesLeft = 0
						local secondsLeft = (_G.BubbleAlertLast + (smaPeriodMin * _G.currAlertWait * _G.currAlertMsgWaitMins)) - os.time()
						if secondsLeft >= 60 then
							minutesLeft = math.floor(secondsLeft / 60)
							secondsLeft = secondsLeft - (minutesLeft * 60)
						end
						BubbleAlertButton.Text = string.format("%02d:%02d", minutesLeft, secondsLeft)
					end
					
				end
			elseif _G.bubbleLastTime == 0 then
				_G.bubbleFirstVal = playerData[bubblesBlownindex]
				_G.bubbleLastVal = playerData[bubblesBlownindex]
				_G.bubbleLastTime = os.time()
			end
		
			for i,d in pairs(currencys) do
				if i == "Coins" then
					formatted = math.ceil(d.Value)
					while true do  
						formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
						if (k==0) then
							break
						end
					end
					Coins.Text =  formatted
					if _G.coinLastTime ~= 0 then
						if os.time() >= (_G.coinLastTime + _G.currAlertWait) then
							local ratemins = getCurrRate(_G.coinsma(d.Value - _G.coinLastVal), _G.coinLastTime, "mins")
							local ratehours = getCurrRate(_G.coinsmahour(d.Value - _G.coinLastVal), _G.coinLastTime, "hours")
							CoinsPerMin.Text = ratemins .. "/m"
							CoinsPerHour.Text = ratehours .. "/h"
							_G.coinLastVal = d.Value
							_G.coinLastTime = os.time()
							
							if _G.CoinAlert and _G.DiscordAlerts and (_G.CoinAlertLast == 0 or os.time() >= (_G.CoinAlertLast + (smaPeriodMin * _G.currAlertWait * _G.currAlertMsgWaitMins))) then
								inventoryAlert("Total: " .. formatted .. " #\n# Current Rates:\t" .. ratemins .. "/m & " .. ratehours .. "/h", i, false, "orange")
								_G.CoinAlertLast = os.time()
							elseif _G.CoinAlert and _G.DiscordAlerts then
								local minutesLeft = 0
								local secondsLeft = (_G.CoinAlertLast + (smaPeriodMin * _G.currAlertWait * _G.currAlertMsgWaitMins)) - os.time()
								if secondsLeft >= 60 then
									minutesLeft = math.floor(secondsLeft / 60)
									secondsLeft = secondsLeft - (minutesLeft * 60)
								end
								CoinAlertButton.Text = string.format("%02d:%02d", minutesLeft, secondsLeft)
							end
							
						end
					elseif _G.coinLastTime == 0 then
						_G.coinFirstVal = d.Value
						_G.coinLastVal = d.Value
						_G.coinLastTime = os.time()
					end
				elseif i == "Gems" then
					formatted = math.ceil(d.Value)
					while true do  
						formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
						if (k==0) then
							break
						end
					end
					Gems.Text =  formatted
					if _G.gemLastTime ~= 0 then
						if os.time() >= (_G.gemLastTime + _G.currAlertWait) then
							local ratemins = getCurrRate(_G.gemsma(d.Value - _G.gemLastVal), _G.gemLastTime, "mins")
							local ratehours = getCurrRate(_G.gemsmahour(d.Value - _G.gemLastVal), _G.gemLastTime, "hours")
							GemsPerMin.Text = ratemins .. "/m"
							GemsPerHour.Text = ratehours .. "/h"
							_G.gemLastVal = d.Value
							_G.gemLastTime = os.time()
							
							if _G.GemAlert and _G.DiscordAlerts and (_G.GemAlertLast == 0 or os.time() >= (_G.GemAlertLast + (smaPeriodMin * _G.currAlertWait * _G.currAlertMsgWaitMins))) then
								inventoryAlert("Total: " .. formatted .. " #\n# Current Rates:\t" .. ratemins .. "/m & " .. ratehours .. "/h", i, false, "orange")
								_G.GemAlertLast = os.time()
							elseif _G.GemAlert and _G.DiscordAlerts then
								local minutesLeft = 0
								local secondsLeft = (_G.GemAlertLast + (smaPeriodMin * _G.currAlertWait * _G.currAlertMsgWaitMins)) - os.time()
								if secondsLeft >= 60 then
									minutesLeft = math.floor(secondsLeft / 60)
									secondsLeft = secondsLeft - (minutesLeft * 60)
								end
								GemAlertButton.Text = string.format("%02d:%02d", minutesLeft, secondsLeft)
							end
							
						end
					elseif _G.gemLastTime == 0 then
						_G.gemFirstVal = d.Value
						_G.gemLastVal = d.Value
						_G.gemLastTime = os.time()
					end
				elseif i == "Crystals" then
					formatted = math.ceil(d.Value)
					while true do  
						formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
						if (k==0) then
							break
						end
					end
					Crystals.Text =  formatted
					if _G.crystalsLastTime ~= 0 then
						if os.time() >= (_G.crystalsLastTime + _G.currAlertWait) then
							local ratemins = getCurrRate(_G.crystalssma(d.Value - _G.crystalsLastVal), _G.crystalsLastTime, "mins")
							local ratehours = getCurrRate(_G.crystalssmahour(d.Value - _G.crystalsLastVal), _G.crystalsLastTime, "hours")
							CrystalsPerMin.Text = ratemins .. "/m"
							CrystalsPerHour.Text = ratehours .. "/h"
							_G.crystalsLastVal = d.Value
							_G.crystalsLastTime = os.time()
							
							if _G.CrystalsAlert and _G.DiscordAlerts and (_G.CrystalsAlertLast == 0 or os.time() >= (_G.CrystalsAlertLast + (smaPeriodMin * _G.currAlertWait * _G.currAlertMsgWaitMins))) then
								inventoryAlert("Total: " .. formatted .. " #\n# Current Rates:\t" .. ratemins .. "/m & " .. ratehours .. "/h", i, false, "orange")
								_G.CrystalsAlertLast = os.time()
							elseif _G.CrystalsAlert and _G.DiscordAlerts then
								local minutesLeft = 0
								local secondsLeft = (_G.CrystalsAlertLast + (smaPeriodMin * _G.currAlertWait * _G.currAlertMsgWaitMins)) - os.time()
								if secondsLeft >= 60 then
									minutesLeft = math.floor(secondsLeft / 60)
									secondsLeft = secondsLeft - (minutesLeft * 60)
								end
								CrystalAlertButton.Text = string.format("%02d:%02d", minutesLeft, secondsLeft)
							end
							
						end
					elseif _G.crystalsLastTime == 0 then
						_G.crystalsFirstVal = d.Value
						_G.crystalsLastVal = d.Value
						_G.crystalsLastTime = os.time()
					end
				elseif i == "Candy" then
					formatted = math.ceil(d.Value)
					while true do  
						formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
						if (k==0) then
							break
						end
					end
					Candy.Text =  formatted
					if _G.candyLastTime ~= 0 then
						if os.time() >= (_G.candyLastTime + _G.currAlertWait) then
							local ratemins = getCurrRate(_G.candysma(d.Value - _G.candyLastVal), _G.candyLastTime, "mins")
							local ratehours = getCurrRate(_G.candysmahour(d.Value - _G.candyLastVal), _G.candyLastTime, "hours")
							CandyPerMin.Text = ratemins .. "/m"
							CandyPerHour.Text = ratehours .. "/h"
							_G.candyLastVal = d.Value
							_G.candyLastTime = os.time()
							
							if _G.CandyAlert and _G.DiscordAlerts and (_G.CandyAlertLast == 0 or os.time() >= (_G.CandyAlertLast + (smaPeriodMin * _G.currAlertWait * _G.currAlertMsgWaitMins))) then
								inventoryAlert("Total: " .. formatted .. " #\n# Current Rates:\t" .. ratemins .. "/m & " .. ratehours .. "/h", i, false, "orange")
								_G.CandyAlertLast = os.time()
							elseif _G.CandyAlert and _G.DiscordAlerts then
								local minutesLeft = 0
								local secondsLeft = (_G.CandyAlertLast + (smaPeriodMin * _G.currAlertWait * _G.currAlertMsgWaitMins)) - os.time()
								if secondsLeft >= 60 then
									minutesLeft = math.floor(secondsLeft / 60)
									secondsLeft = secondsLeft - (minutesLeft * 60)
								end
								CandyAlertButton.Text = string.format("%02d:%02d", minutesLeft, secondsLeft)
							end
							
						end
					elseif _G.candyLastTime == 0 then
						_G.candyFirstVal = d.Value
						_G.candyLastVal = d.Value
						_G.candyLastTime = os.time()
					end
				elseif i == "Blocks" then
					formatted = math.ceil(d.Value)
					while true do  
						formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
						if (k==0) then
							break
						end
					end
					Blocks.Text =  formatted
					if _G.blocksLastTime ~= 0 then
						if os.time() >= (_G.blocksLastTime + _G.currAlertWait) then
							local ratemins = getCurrRate(_G.blockssma(d.Value - _G.blocksLastVal), _G.blocksLastTime, "mins")
							local ratehours = getCurrRate(_G.blockssmahour(d.Value - _G.blocksLastVal), _G.blocksLastTime, "hours")
							BlocksPerMin.Text = ratemins .. "/m"
							BlocksPerHour.Text = ratehours .. "/h"
							_G.blocksLastVal = d.Value
							_G.blocksLastTime = os.time()
							
							if _G.BlocksAlert and _G.DiscordAlerts and (_G.BlocksAlertLast == 0 or os.time() >= (_G.BlocksAlertLast + (smaPeriodMin * _G.currAlertWait * _G.currAlertMsgWaitMins))) then
								inventoryAlert("Total: " .. formatted .. " #\n# Current Rates:\t" .. ratemins .. "/m & " .. ratehours .. "/h", i, false, "orange")
								_G.BlocksAlertLast = os.time()
							elseif _G.BlocksAlert and _G.DiscordAlerts then
								local minutesLeft = 0
								local secondsLeft = (_G.BlocksAlertLast + (smaPeriodMin * _G.currAlertWait * _G.currAlertMsgWaitMins)) - os.time()
								if secondsLeft >= 60 then
									minutesLeft = math.floor(secondsLeft / 60)
									secondsLeft = secondsLeft - (minutesLeft * 60)
								end
								BlocksAlertButton.Text = string.format("%02d:%02d", minutesLeft, secondsLeft)
							end
							
						end
					elseif _G.blocksLastTime == 0 then
						_G.blocksFirstVal = d.Value
						_G.blocksLastVal = d.Value
						_G.blocksLastTime = os.time()
					end
				elseif i == "Shells" then
					formatted = math.ceil(d.Value)
					while true do  
						formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
						if (k==0) then
							break
						end
					end
					Shells.Text =  formatted
					if _G.shellsLastTime ~= 0 then
						if os.time() >= (_G.shellsLastTime + _G.currAlertWait) then
							local ratemins = getCurrRate(_G.shellssma(d.Value - _G.shellsLastVal), _G.shellsLastTime, "mins")
							local ratehours = getCurrRate(_G.shellssmahour(d.Value - _G.shellsLastVal), _G.shellsLastTime, "hours")
							ShellsPerMin.Text = ratemins .. "/m"
							ShellsPerHour.Text = ratehours .. "/h"
							_G.shellsLastVal = d.Value
							_G.shellsLastTime = os.time()
							
							if _G.ShellsAlert and _G.DiscordAlerts and (_G.ShellsAlertLast == 0 or os.time() >= (_G.ShellsAlertLast + (smaPeriodMin * _G.currAlertWait * _G.currAlertMsgWaitMins))) then
								inventoryAlert("Total: " .. formatted .. " #\n# Current Rates:\t" .. ratemins .. "/m & " .. ratehours .. "/h", i, false, "orange")
								_G.ShellsAlertLast = os.time()
							elseif _G.ShellsAlert and _G.DiscordAlerts then
								local minutesLeft = 0
								local secondsLeft = (_G.ShellsAlertLast + (smaPeriodMin * _G.currAlertWait * _G.currAlertMsgWaitMins)) - os.time()
								if secondsLeft >= 60 then
									minutesLeft = math.floor(secondsLeft / 60)
									secondsLeft = secondsLeft - (minutesLeft * 60)
								end
								ShellsAlertButton.Text = string.format("%02d:%02d", minutesLeft, secondsLeft)
							end
							
						end
					elseif _G.shellsLastTime == 0 then
						_G.shellsFirstVal = d.Value
						_G.shellsLastVal = d.Value
						_G.shellsLastTime = os.time()
					end
				elseif i == "Pearls" then
					formatted = math.ceil(d.Value)
					while true do  
						formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
						if (k==0) then
							break
						end
					end
					Pearls.Text =  formatted
					if _G.pearlsLastTime ~= 0 then
						if os.time() >= (_G.pearlsLastTime + _G.currAlertWait) then
							local ratemins = getCurrRate(_G.pearlssma(d.Value - _G.pearlsLastVal), _G.pearlsLastTime, "mins")
							local ratehours = getCurrRate(_G.pearlssmahour(d.Value - _G.pearlsLastVal), _G.pearlsLastTime, "hours")
							PearlsPerMin.Text = ratemins .. "/m"
							PearlsPerHour.Text = ratehours .. "/h"
							_G.pearlsLastVal = d.Value
							_G.pearlsLastTime = os.time()
							
							if _G.PearlsAlert and _G.DiscordAlerts and (_G.PearlsAlertLast == 0 or os.time() >= (_G.PearlsAlertLast + (smaPeriodMin * _G.currAlertWait * _G.currAlertMsgWaitMins))) then
								inventoryAlert("Total: " .. formatted .. " #\n# Current Rates:\t" .. ratemins .. "/m & " .. ratehours .. "/h", i, false, "orange")
								_G.PearlsAlertLast = os.time()
							elseif _G.PearlsAlert and _G.DiscordAlerts then
								local minutesLeft = 0
								local secondsLeft = (_G.PearlsAlertLast + (smaPeriodMin * _G.currAlertWait * _G.currAlertMsgWaitMins)) - os.time()
								if secondsLeft >= 60 then
									minutesLeft = math.floor(secondsLeft / 60)
									secondsLeft = secondsLeft - (minutesLeft * 60)
								end
								PearlsAlertButton.Text = string.format("%02d:%02d", minutesLeft, secondsLeft)
							end
							
						end
					elseif _G.pearlsLastTime == 0 then
						_G.pearlsFirstVal = d.Value
						_G.pearlsLastVal = d.Value
						_G.pearlsLastTime = os.time()
					end
				elseif i == "Stars" then
					formatted = math.ceil(d.Value)
					while true do  
						formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
						if (k==0) then
							break
						end
					end
					Stars.Text =  formatted
					if _G.starsLastTime ~= 0 then
						if os.time() >= (_G.starsLastTime + _G.currAlertWait) then
							local ratemins = getCurrRate(_G.starssma(d.Value - _G.starsLastVal), _G.starsLastTime, "mins")
							local ratehours = getCurrRate(_G.starssmahour(d.Value - _G.starsLastVal), _G.starsLastTime, "hours")
							StarsPerMin.Text = ratemins .. "/m"
							StarsPerHour.Text = ratehours .. "/h"
							_G.starsLastVal = d.Value
							_G.starsLastTime = os.time()
							
							if _G.StarsAlert and _G.DiscordAlerts and (_G.StarsAlertLast == 0 or os.time() >= (_G.StarsAlertLast + (smaPeriodMin * _G.currAlertWait * _G.currAlertMsgWaitMins))) then
								inventoryAlert("Total: " .. formatted .. " #\n# Current Rates:\t" .. ratemins .. "/m & " .. ratehours .. "/h", i, false, "orange")
								_G.StarsAlertLast = os.time()
							elseif _G.StarsAlert and _G.DiscordAlerts then
								local minutesLeft = 0
								local secondsLeft = (_G.StarsAlertLast + (smaPeriodMin * _G.currAlertWait * _G.currAlertMsgWaitMins)) - os.time()
								if secondsLeft >= 60 then
									minutesLeft = math.floor(secondsLeft / 60)
									secondsLeft = secondsLeft - (minutesLeft * 60)
								end
								StarsAlertButton.Text = string.format("%02d:%02d", minutesLeft, secondsLeft)
							end
							
						end
					elseif _G.starsLastTime == 0 then
						_G.starsFirstVal = d.Value
						_G.starsLastVal = d.Value
						_G.starsLastTime = os.time()
					end
				elseif i == "Magma" then
					formatted = math.ceil(d.Value)
					while true do  
						formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
						if (k==0) then
							break
						end
					end
					Magma.Text =  formatted
					if _G.magmaLastTime ~= 0 then
						if os.time() >= (_G.magmaLastTime + _G.currAlertWait) then
							local ratemins = getCurrRate(_G.magmasma(d.Value - _G.magmaLastVal), _G.magmaLastTime, "mins")
							local ratehours = getCurrRate(_G.magmasmahour(d.Value - _G.magmaLastVal), _G.magmaLastTime, "hours")
							MagmaPerMin.Text = ratemins .. "/m"
							MagmaPerHour.Text = ratehours .. "/h"
							_G.magmaLastVal = d.Value
							_G.magmaLastTime = os.time()
							
							if _G.MagmaAlert and _G.DiscordAlerts and (_G.MagmaAlertLast == 0 or os.time() >= (_G.MagmaAlertLast + (smaPeriodMin * _G.currAlertWait * _G.currAlertMsgWaitMins))) then
								inventoryAlert("Total: " .. formatted .. " #\n# Current Rates:\t" .. ratemins .. "/m & " .. ratehours .. "/h", i, false, "orange")
								_G.MagmaAlertLast = os.time()
							elseif _G.MagmaAlert and _G.DiscordAlerts then
								local minutesLeft = 0
								local secondsLeft = (_G.MagmaAlertLast + (smaPeriodMin * _G.currAlertWait * _G.currAlertMsgWaitMins)) - os.time()
								if secondsLeft >= 60 then
									minutesLeft = math.floor(secondsLeft / 60)
									secondsLeft = secondsLeft - (minutesLeft * 60)
								end
								MagmaAlertButton.Text = string.format("%02d:%02d", minutesLeft, secondsLeft)
							end
							
						end
					elseif _G.magmaLastTime == 0 then
						_G.magmaFirstVal = d.Value
						_G.magmaLastVal = d.Value
						_G.magmaLastTime = os.time()
					end
				elseif newEvent["Currency"] ~= nil and i == newEvent.Currency then
					local currencyVal = d.Value
					formatted = math.ceil(d.Value)
					while true do  
						formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
						if (k==0) then
							break
						end
					end
					EventCurrency.Text =  formatted
					if _G.eventcurrLastTime ~= 0 then
						if os.time() >= (_G.eventcurrLastTime + _G.currAlertWait) then
							local ratemins = getCurrRate(_G.eventcurrsma(currencyVal - _G.eventcurrLastVal), _G.eventcurrLastTime, "mins")
							local ratehours = getCurrRate(_G.eventcurrsmahour(currencyVal - _G.eventcurrLastVal), _G.eventcurrLastTime, "hours")
							EventCurrencyPerMin.Text = ratemins .. "/m"
							EventCurrencyPerHour.Text = ratehours .. "/h"
							_G.eventcurrLastVal = currencyVal
							_G.eventcurrLastTime = os.time()
							
							if _G.EventCurrAlert and _G.DiscordAlerts and (_G.EventCurrAlertLast == 0 or os.time() >= (_G.EventCurrAlertLast + (smaPeriodMin * _G.currAlertWait * _G.currAlertMsgWaitMins))) then
								inventoryAlert("Total: " .. formatted .. " #\n# Current Rates:\t" .. ratemins .. "/m & " .. ratehours .. "/h", i, false, "orange")
								_G.EventCurrAlertLast = os.time()
							elseif _G.EventCurrAlert and _G.DiscordAlerts then
								local minutesLeft = 0
								local secondsLeft = (_G.EventCurrAlertLast + (smaPeriodMin * _G.currAlertWait * _G.currAlertMsgWaitMins)) - os.time()
								if secondsLeft >= 60 then
									minutesLeft = math.floor(secondsLeft / 60)
									secondsLeft = secondsLeft - (minutesLeft * 60)
								end
								EventAlertButton.Text = string.format("%02d:%02d", minutesLeft, secondsLeft)
							end
							
						end
					elseif _G.eventcurrLastTime == 0 then
						_G.eventcurrFirstVal = currencyVal
						_G.eventcurrLastVal = currencyVal
						_G.eventcurrLastTime = os.time()
					end
				end	
			end			
		end
	end)
	
	
    for i,d in pairs(petlist) do
        if d["Rarity"] ~= "Legendary" then
            raritys[d["Rarity"]] = true
        end
    end
	 local function ownsgamepass(userid,gamepassid)
        local mar = game:GetService"MarketplaceService"
        local s,res = pcall(mar.UserOwnsGamePassAsync,mar,userid,gamepassid)
        if not s then
            res = false
        end
        return res
    end
    
    local triple = ownsgamepass(game.Players.LocalPlayer.UserId, 5502695)
	local plusFive = ownsgamepass(game.Players.LocalPlayer.UserId, 5364330)
	local vip = ownsgamepass(game.Players.LocalPlayer.UserId, 5361608)
	
    local eggs = library:CreateWindow('Auto Egg')
    --local hats = library:CreateWindow("Hats")
	local misc = library:CreateWindow('Misc')
    misc:Section("Optimize")
    misc:Button('Optimize map', function()

local v = workspace.Worlds.Overworld:GetChildren()
for i = 1, #v do
	if v[i].Name == "Model" then
		v[i]:Destroy()
	end
end
wait(1)
local ww = workspace.Worlds.Overworld.Border:GetChildren()
for i = 1, #ww do
	if ww[i].Name == "Wall" then
		ww[i]:Destroy()
	end
end
wait(1)
local descendants = game.Workspace.FloatingIslands.Overworld:GetDescendants()
for index, descendant in pairs(descendants) do
	if descendant.Name == "Model" then
		descendant:Destroy()
	end
end
wait(1)
for d,eggy in pairs(game.Workspace.Eggs:GetChildren() ) do
	if eggy:FindFirstChild("Secondary") then
		local egg_cleaner = eggy:FindFirstChild("Secondary")
		egg_cleaner:Destroy()
	end
	if eggy:FindFirstChild("Primary") then
		local egg_cleaner = eggy:FindFirstChild("Primary")
		egg_cleaner:Destroy()
	end
	if eggy:FindFirstChild("Decore") then
		local egg_cleaner = eggy:FindFirstChild("Decore")
		egg_cleaner:Destroy()
	end
end

local descendants = game.Workspace:GetDescendants()
for index, descendant in pairs(descendants) do
	if descendant.Name == "Cloud" then
		descendant:Destroy()
	end
	if descendant.Name == "Tree" then
		descendant:Destroy()
	end
	if descendant.Name == "Mountains" then
		descendant:Destroy()
	end
	if descendant.Name == "Building" then
		descendant:Destroy()
	end
	if descendant.Name == "DarkCloud" then
		descendant:Destroy()
	end
	if descendant.Name == "VoidCloud" then
		descendant:Destroy()
	end
	if descendant.Name == "BlueCloud" then
		descendant:Destroy()
	end
	if descendant.Name == "PinkCloud" then
		descendant:Destroy()
	end
	if descendant.Name == "PurpleCloud" then
		descendant:Destroy()
	end
	if descendant.Name == "Small Asteroid" then
		descendant:Destroy()
	end
	if descendant.Name == "Trampoline" then
		descendant:Destroy()
	end
	if descendant.Name == "BigTrampoline" then
		descendant:Destroy()
	end
	if descendant.Name == "Asteroid" then
		descendant:Destroy()
	end
	if descendant.Name == "Mars" then
		descendant:Destroy()
	end
	if descendant.Name == "Jupiter" then
		descendant:Destroy()
	end
	if descendant.Name == "Rocket" then
		descendant:Destroy()
	end
	if descendant.Name == "VoidAsteroid" then
		descendant:Destroy()
	end
	if descendant.Name == "PurpleAsteroid" then
		descendant:Destroy()
	end
	if descendant.Name == "UFO" then
		descendant:Destroy()
	end
	if descendant.Name == "Jolly2" then
		descendant:Destroy()
	end
	if descendant.Name == "Jolly1" then
		descendant:Destroy()
	end
	if descendant.Name == "Candy1" then
		descendant:Destroy()
	end
	if descendant.Name == "Candy2" then
		descendant:Destroy()
	end
	if descendant.Name == "Candy3" then
		descendant:Destroy()
	end
	if descendant.Name == "Candy4" then
		descendant:Destroy()
	end
	if descendant.Name == "Candy5" then
		descendant:Destroy()
	end
	if descendant.Name == "Candy6" then
		descendant:Destroy()
	end
	if descendant.Name == "Toy2" then
		descendant:Destroy()
	end
	if descendant.Name == "Toy3" then
		descendant:Destroy()
	end
	if descendant.Name == "Toy2" then
		descendant:Destroy()
	end
	if descendant.Name == "Toy1" then
		descendant:Destroy()
	end
	if descendant.Name == "Orange2" then
		descendant:Destroy()
	end
	if descendant.Name == "Orange1" then
		descendant:Destroy()
	end
end

local w = workspace.Worlds.Overworld.Mountains:GetChildren()
for i = 1, #w do
	if w[i].Name == "Model" then
		w[i]:Destroy()
	end
end


local descendants = game.Workspace.FloatingIslands.Overworld:GetDescendants()
for index, descendant in pairs(descendants) do
	if descendant.Name == "Model" then
		descendant:Destroy()
	end
end


	--for d,tree_w_lights in pairs(game.Workspace.ChristmasMap.Decor:GetChildren() ) do
		--if tree_w_lights:FindFirstChild("Tree Light") then
		--	tree_w_lights:Destroy()
		--end
	--end
	--for d,extras in pairs(game.Workspace.ChristmasMap.Decor:GetChildren() ) do
		--if extras:FindFirstChild("Model") then
		--	extras:Destroy()
		--end
	--end
	--for _, child in pairs( workspace.ChristmasMap.Decor:GetChildren()) do
   		--if child.Name == "Pole" then
        	--child:Destroy()
    	--end
	--end
	--for d,decor in pairs(game.Workspace.ChristmasMap.Houses:GetChildren() ) do
		--if decor.Name == "House" then
		--	if decor:FindFirstChild("Decor") then
		--		local the_home = decor:FindFirstChild("Decor")
		--		the_home:Destroy()
		--	end
		--end
	--end

	--local descendants = game.Workspace.ChristmasMap.Decor:GetDescendants()
	--	for index, descendant in pairs(descendants) do
	--		if descendant:IsA("BasePart") then
	--			if descendant.Material == Enum.Material.SmoothPlastic then
	--				descendant:Destroy()
	--		end
	--	end
	--end
    end)
	
	misc:Button('Uglify map', function()
		local decalsyeeted = true
		local g = game
		local w = g.Workspace
		local l = g.Lighting
		local t = w.Terrain
		t.WaterWaveSize = 0
		t.WaterWaveSpeed = 0
		t.WaterReflectance = 0
		t.WaterTransparency = 0
		l.GlobalShadows = false
		l.FogEnd = 9e9
		l.Brightness = 0
		settings().Rendering.QualityLevel = "Level01"
		for i, v in pairs(g:GetDescendants()) do
			if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
				v.Material = "Plastic"
				v.Reflectance = 0
			elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
				v.Transparency = 1
			elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
				v.Lifetime = NumberRange.new(0)
			elseif v:IsA("Explosion") then
				v.BlastPressure = 1
				v.BlastRadius = 1
			elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") then
				v.Enabled = false
			elseif v:IsA("MeshPart") then
				v.Material = "Plastic"
				v.Reflectance = 0
				v.TextureID = 10385902758728957
			end
		end
		for i, e in pairs(l:GetChildren()) do
			if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
				e.Enabled = false
			end
		end
	end)
	
	misc:Button('Prep for screenshot', function()
	for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
		if v:IsA("Part") or v:IsA("MeshPart") or v.Name == "Title" or v.Name == "Username" then
			v.Transparency = 1
		end
	end
	end)
	
    misc:Section("Swap")
    local worlds = {}
    local loadworlds = false
    repeat wait(0.1)
        local modul = require(game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.ClientScript.Modules.WorldService).SetWorld
        for i,d in pairs(debug.getupvalue(modul,3)) do
            loadworlds = true
        end
    until loadworlds
    local tpyes = require(game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.ClientScript.Modules.WorldService)
	table.insert(worlds,"Overworld")
	
	if newEvent["Name"] ~= nil then
		table.insert(worlds,newEvent["Name"])
	end
	
	table.insert(worlds,"Shard Area")

	
    for i,d in pairs(debug.getupvalue(tpyes.SetWorld,3)) do
		if i ~= "Overworld" then
			table.insert(worlds,i)
		end
    end
	
	_G.currentWorld = "Overworld"
	_G.currentBuff = "Bubbles"
	_G.buffChange = true
	--_G.startgame = true
	
	local function changeBuff(oldBuff,newBuff)
		if oldBuff ~= newBuff then
			--print("Currency changed from",_G.currentBuff,"to",newBuff)
			_G.currentBuff = newBuff
			_G.buffChange = true
		else
			_G.buffChange = false
		end
	end
			
	
	
	local function tptoDrops(oldworld,newworld)
		if oldworld ~= newworld then
			if oldworld == "Event" then
				tpyes.SetWorld(tpyes,"Overworld")
				f["FireServer"](f, "Teleport", "EventLeave")
			elseif oldworld == "Shard Area" then
				tpyes.SetWorld(tpyes,"Overworld")
				f["FireServer"](f, "Teleport", "ShardLeave")
			end
			if (newEvent["Name"] ~= nil and newworld == newEvent.Name) or newworld == "Event" then
				tpyes.SetWorld(tpyes,"Overworld")
				f["FireServer"](f, "Teleport", "EventSpawn")
				_G.currentWorld = "Event"
			elseif newworld == "Overworld" then
				tpyes.SetWorld(tpyes,newworld)
				f["FireServer"](f, "Teleport", "EventLeave")
				_G.currentWorld = newworld
			elseif newworld == "Shard Area" then
				tpyes.SetWorld(tpyes,"Overworld")
				f["FireServer"](f, "Teleport", "ShardArea")
				_G.currentWorld = newworld
			else
				tpyes.SetWorld(tpyes,newworld)
				_G.currentWorld = newworld
			end
			
		end
		--if misc.flags.tptoevent then
			--f["FireServer"](f, "Teleport", "EventSpawn")
			--_G.world = "Overworld"
			--wait(1)
		--end

	end
	
	
	 
	
	
    misc:Dropdown("World", {
        location = _G,
        flag = "world",
        list = worlds},
		function(new) tptoDrops(_G.currentWorld,new) end
     )
 
	--_G.world = "Overworld"
	--_G.OverWorldSpawn = "OverworldSpawn" --"EventSpawn"--"EventLeave" --

   -- misc:Button('Swap World', function()
      --  if _G.world ~= nil then
			--tptoDrops(_G.currentWorld,_G.world)
			--if-- _G.world == "Overworld" then
				--f["FireServer"](f, "Teleport", _G.OverWorldSpawn)
			--else
				--tpyes.SetWorld(tpyes,_G.world)
			--end
        --end
    -- end)
    misc:Section("Unlock")
    misc:Button('Unlock Islands', function()
        for i , v in pairs(game:GetService("Workspace").FloatingIslands:GetChildren()) do
            if #v:GetChildren() > 0 then
                for i ,v in pairs(v:GetChildren()) do
                    game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v.Collision.CFrame
                    wait(.25)
                end
            end
        end
     end)
    
	_G.giantchestsec = 7200
	_G.giantchestcollected = 0
	_G.mediumchestsec = 5400
	_G.mediumchestcollected = 0
	_G.smallchestsec = 2700
	_G.smallchestcollected = 0
	_G.coinchestsec = 900
	_G.coinchestcollected = 0
	_G.islandchests = {["GiantChests"] = {"Sweet Island",
										"Treasure Isle",
										"Sea Shell Isle",
										"Sandy Island",
										"Purple Island",
										"Molten Island",
										"Magic Island" --,
										--"XP Island"
										},
										
						["MediumChests"] = {"The Void",
										"Candy Island",
										"Teddy Island",
										"Oceanic Island",
										"Treasure Island",
										"Blue Island",
										"Inferno Island",
										"Spirit Island"},
										
						["SmallChests"] = {"The Skylands",
										"Gumdrop Island",
										"Block Island",
										"Sea Island",
										"Water Island",
										"Red Island",
										"Fire Island",
										"Crystal Island"},
										
						["CoinChest"] = {"The Floating Island"}--,
						--["XP Chest"] = {"XP Island"}
					}
										
										
	if vip then
		_G.giantchestsec = _G.giantchestsec * .7
		_G.mediumchestsec = _G.mediumchestsec * .7
		_G.smallchestsec = _G.smallchestsec * .7
		_G.coinchestsec = _G.coinchestsec * .7
	end
	
	misc:Section("Collect")
    misc:Button("Collect chests", function()
		if not _G.autoguessing and not _G.sell and not _G.collectingchests then
			_G.collectingchests = true
			for i,v in pairs(game:GetService("Workspace").FloatingIslands:GetDescendants()) do 
				if v.Name == "Chest" and v.ClassName == "Model" and not v.Regen.Enabled then 
					f["FireServer"](f, "TeleportToCheckpoint", v.Parent.Name)
					wait(0.25)
					repeat
						f["FireServer"](f, "CollectChestReward", v.Parent.Name)
						wait()
					until v.Regen.Enabled == true
					wait(0.25)
					print("Grabbed chest on " .. v.Parent.Name .. " in " .. _G.currentWorld)
				end
				if v.Name == "Chest" and v.ClassName == "Model" then
					for x,y in pairs(_G.islandchests) do
						for w,z in pairs(y) do
							if z == v.Parent.Name then
								local chesttime = v.Regen.Info.Text
								local chesthour = tonumber(string.sub(chesttime, 16, 17))
								local chestminute = tonumber(string.sub(chesttime, 19, 20))
								local chestseconds = tonumber(string.sub(chesttime, 22, 23))
								if x == "CoinChest" then
									_G.coinchestcollected = os.time() + (chesthour * 60 * 60) + (chestminute * 60) + chestseconds - _G.coinchestsec
								elseif x == "SmallChests" then
									_G.smallchestcollected = os.time() + (chesthour * 60 * 60) + (chestminute * 60) + chestseconds - _G.smallchestsec
								elseif x == "MediumChests" then
									_G.mediumchestcollected = os.time() + (chesthour * 60 * 60) + (chestminute * 60) + chestseconds - _G.mediumchestsec
								elseif x == "GiantChests" then
									_G.giantchestcollected = os.time() + (chesthour * 60 * 60) + (chestminute * 60) + chestseconds - _G.giantchestsec
								end
							end
						end
					end
				end
			end
			_G.collectingchests = false
		end
    end)
	
	misc:Dropdown("Auto Chests", {location = _G, flag = "autochest", list = {"Auto Chest Off", "All Worlds", "Current World Only"}}, function() _G.giantchestcollected = 0 
																																				_G.mediumchestcollected = 0
																																				_G.smallchestcollected = 0
																																				_G.coinchestcollected = 0 end)
	--misc:Toggle("TP to Event After", {flag = "tptoevent"})
	misc:Section("Misc")
    
	misc:Section("AutoEquip Per Currency")
	misc:Toggle("Enabled", {flag = 'AutoEquip'})
    --misc:Box('Num. Pets', {
        --flag = "numPets",
        --type = 'number'
    --})
	misc:Dropdown("Currency", {
		location = _G,
        flag = "buffCurrency",
        list = currencylist},
		function(new) changeBuff(_G.currentBuff,new) end
     )
	misc:Toggle("AutoChest Override", {flag = 'ChestOver'})
     
		 
	_G.collectingchests = false
	_G.chestscollected = 0
	
	local function collectChests(size)
		local oldBuff = _G.currentBuff
		local oldWorld = _G.currentWorld
		--local currentWorld = _G.world
		if size == "CoinChest" and (_G.autochest == "All Worlds" or (_G.autochest == "Current World Only" and _G.currentWorld == "Overworld")) then
			if not misc.flags.ChestOver then
				changeBuff(_G.currentBuff,"Coins")
			end
			--_G.world = "Overworld"
			--tpyes.SetWorld(tpyes,_G.world)
			--f["FireServer"](f, "Teleport", _G.OverWorldSpawn)
			tptoDrops(_G.currentWorld,"Overworld")
			wait(2)
			for k,d in pairs(_G.islandchests[size]) do
				for i,v in pairs(game:GetService("Workspace").FloatingIslands:GetDescendants()) do 
					if v.Name == "Chest" and v.ClassName == "Model" and v.Parent.Name == d and not v.Regen.Enabled then 
						--game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v.Parent.Collision.CFrame
						f["FireServer"](f, "TeleportToCheckpoint", v.Parent.Name)
						wait(0.25)
						repeat
							f["FireServer"](f, "CollectChestReward", v.Parent.Name)
							wait()
						until v.Regen.Enabled == true
						wait(0.25)
						print("Grabbed Coin Chest on " .. v.Parent.Name)
					end
					if v.Name == "Chest" and v.ClassName == "Model" and v.Parent.Name == d then
						local chesttime = v.Regen.Info.Text
						local chesthour = tonumber(string.sub(chesttime, 16, 17))
						local chestminute = tonumber(string.sub(chesttime, 19, 20))
						local chestseconds = tonumber(string.sub(chesttime, 22, 23))
						_G.coinchestcollected = os.time() + (chesthour * 60 * 60) + (chestminute * 60) + chestseconds - _G.coinchestsec
					end
				end
			end
			changeBuff(_G.currentBuff,oldBuff)
			tptoDrops(_G.currentWorld,oldWorld)
			wait(2)
		else
			for k,d in pairs(worlds) do
				if not misc.flags.ChestOver then
					if d == "Underworld" then
						changeBuff(_G.currentBuff,"Magma")
					elseif d == "Rainbow Land" then
						changeBuff(_G.currentBuff,"Stars")
					elseif d == "Mystic Forest" then
						changeBuff(_G.currentBuff,"Crystals")
					elseif d == "Candy Land" then
						changeBuff(_G.currentBuff,"Candy")
					elseif d == "Atlantis" then
						changeBuff(_G.currentBuff,"Pearls")
					elseif d == "Toy Land" then
						changeBuff(_G.currentBuff,"Blocks")
					elseif d == "Beach World" then
						changeBuff(_G.currentBuff,"Shells")
					end
				end
				
				if d ~= "Event" and (_G.autochest == "All Worlds" or (_G.autochest == "Current World Only" and _G.currentWorld == d)) then
					tptoDrops(_G.currentWorld,d)
					wait(2)
					for i,v in pairs(game:GetService("Workspace").FloatingIslands:GetDescendants()) do
						if size == "All" then
							if v.Name == "Chest" and v.ClassName == "Model" and not v.Regen.Enabled then
								if not misc.flags.ChestOver then
									if d == "Overworld" then
										if v.Parent.Name == "The Floating Island" then
											changeBuff(_G.currentBuff,"Coins")
											wait(1)
										else
											changeBuff(_G.currentBuff,"Gems")
											wait(1)
										end
									end
								end
								--game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v.Parent.Collision.CFrame
								f["FireServer"](f, "TeleportToCheckpoint", v.Parent.Name)
								wait(0.25)
								repeat
									f["FireServer"](f, "CollectChestReward", v.Parent.Name)
									wait()
								until v.Regen.Enabled == true
								wait(0.25)
								print("Grabbed chest on " .. v.Parent.Name .. " in " .. d)
							end
							if v.Name == "Chest" and v.ClassName == "Model" then
								for x,y in pairs(_G.islandchests) do
									for w,z in pairs(y) do
										if z == v.Parent.Name then
											local chesttime = v.Regen.Info.Text
											local chesthour = tonumber(string.sub(chesttime, 16, 17))
											local chestminute = tonumber(string.sub(chesttime, 19, 20))
											local chestseconds = tonumber(string.sub(chesttime, 22, 23))
											if x == "SmallChests" then
												_G.smallchestcollected = os.time() + (chesthour * 60 * 60) + (chestminute * 60) + chestseconds - _G.smallchestsec
											elseif x == "MediumChests" then
												_G.mediumchestcollected = os.time() + (chesthour * 60 * 60) + (chestminute * 60) + chestseconds - _G.mediumchestsec
											elseif x == "GiantChests" and v.Parent.Name ~= "XP Island" then
												_G.giantchestcollected = os.time() + (chesthour * 60 * 60) + (chestminute * 60) + chestseconds - _G.giantchestsec
											elseif x == "CoinChest" then
												_G.coinchestcollected = os.time() + (chesthour * 60 * 60) + (chestminute * 60) + chestseconds - _G.coinchestsec
											end
										end
									end
								end
							end
						else
							for k,d in pairs(_G.islandchests[size]) do
								if v.Name == "Chest" and v.ClassName == "Model" and v.Parent.Name == d and not v.Regen.Enabled then 
									--game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v.Parent.Collision.CFrame
									f["FireServer"](f, "TeleportToCheckpoint", v.Parent.Name)
									wait(0.25)
									repeat
										f["FireServer"](f, "CollectChestReward", v.Parent.Name)
										wait()
									until v.Regen.Enabled == true
									wait(0.25)
									print("Grabbed " .. size .. " chest on " .. v.Parent.Name .. " in " .. d)
								end
								if v.Name == "Chest" and v.ClassName == "Model" and v.Parent.Name == d then
									local chesttime = v.Regen.Info.Text
									local chesthour = tonumber(string.sub(chesttime, 16, 17))
									local chestminute = tonumber(string.sub(chesttime, 19, 20))
									local chestseconds = tonumber(string.sub(chesttime, 22, 23))
									if size == "SmallChests" then
										_G.smallchestcollected = os.time() + (chesthour * 60 * 60) + (chestminute * 60) + chestseconds - _G.smallchestsec
									elseif size == "MediumChests" then
										_G.mediumchestcollected = os.time() + (chesthour * 60 * 60) + (chestminute * 60) + chestseconds - _G.mediumchestsec
									elseif size == "GiantChests" and v.Parent.Name ~= "XP Island" then
										_G.giantchestcollected = os.time() + (chesthour * 60 * 60) + (chestminute * 60) + chestseconds - _G.giantchestsec
									elseif size == "CoinChest" then
										_G.coinchestcollected = os.time() + (chesthour * 60 * 60) + (chestminute * 60) + chestseconds - _G.coinchestsec
									end
								end 
							end
						end
					end
				end
			end
			changeBuff(_G.currentBuff,oldBuff)
			tptoDrops(_G.currentWorld,oldWorld)
			wait(2)
		end
	end

	
				
	spawn(function ()
		while wait(.3) do
			if not _G.autoguessing and not _G.sell and not _G.collectingchests then
			--if tonumber(_G.giantche) ~= nil and tonumber(misc.flags.chestmins) >= 10 then
				--local chesttimer = tonumber(misc.flags.chestmins)*60
				if _G.autochest == "All Worlds" and os.time() >= _G.giantchestcollected + _G.giantchestsec 
										and os.time() >= _G.mediumchestcollected + _G.mediumchestsec 
										and os.time() >= _G.smallchestcollected + _G.smallchestsec 
										and os.time() >= _G.coinchestcollected + _G.coinchestsec
										and misc.flags.AutoEquip then
					_G.collectingchests = true
					collectChests("All")
					--_G.giantchestcollected = os.time() + 60
					--_G.mediumchestcollected = os.time() + 60
					--_G.smallchestcollected = os.time() + 60
					--_G.coinchestcollected = os.time() + 60
				elseif (_G.autochest == "Current World Only" and _G.currentWorld == "Overworld") or _G.autochest == "All Worlds" and os.time() >= _G.coinchestcollected + _G.coinchestsec then
					_G.collectingchests = true
					collectChests("CoinChest")
					--_G.coinchestcollected = os.time() + 15
				elseif _G.autochest ~= "Auto Chest Off" and os.time() >= _G.smallchestcollected + _G.smallchestsec then
					_G.collectingchests = true
					collectChests("SmallChests")
					--_G.smallchestcollected = os.time() + 30
				elseif _G.autochest ~= "Auto Chest Off" and os.time() >= _G.mediumchestcollected + _G.mediumchestsec then
					_G.collectingchests = true
					collectChests("MediumChests")
					--_G.mediumchestcollected = os.time() + 30
				elseif (_G.autochest == "Current World Only" and _G.currentWorld ~= "Overworld") or _G.autochest == "All Worlds" and os.time() >= _G.giantchestcollected + _G.giantchestsec then
					_G.collectingchests = true
					collectChests("GiantChests")
					--_G.giantchestcollected = os.time() + 30
				--else
					--print((_G.giantchestcollected + _G.giantchestsec - os.time()) / 60 .. " minutes until Giant chests collect again")
					--print((_G.mediumchestcollected + _G.mediumchestsec - os.time()) / 60 .. " minutes until Medium chests collect again")
					--print((_G.smallchestcollected + _G.smallchestsec - os.time()) / 60 .. " minutes until Small chests collect again")
					--print((_G.coinchestcollected + _G.coinchestsec - os.time()) / 60 .. " minutes until Coin chests collect again")
					--wait(60)
				end
				
				_G.collectingchests = false
			end
		end 
	 end)
	 
	
	misc:Section("Items/Prizes/Rewards")
	misc:Toggle("Bubbles", {flag = 'AutoClaimBubbles'})
	misc:Toggle("Eggs", {flag = 'AutoClaimEggs'})
	misc:Toggle("World Pet Rewards", {flag = 'AutoWorldRewards'})
	
	local rewardsIndex = require(game:GetService("ReplicatedStorage").Assets.Modules.Library.index)["REWARDS"]
	local rewardsModule = require(game:GetService("ReplicatedStorage").Assets.Modules.ItemDataService.RewardsModule)
	
	spawn(function()
		while wait(1) do
			if misc.flags.AutoWorldRewards then
				for i,v in pairs(rewardsModule.Worlds) do
					local playerData = f:InvokeServer("GetPlayerData")
					local reward = playerData[rewardsIndex][i] + 1
					local currency = v.Currency
					for x = reward, v.MaxLevel do
						if rewardsModule:GetCost(i, x) <= currencys[currency].Value then
							print("Collecting "..i.." Reward #"..x)
							f:FireServer("CollectReward",i,x)
							wait(1)
						end
					end
				end
			end
		end
	end)
	
	misc:Toggle("Auto Buy Shop Items", {flag = 'AutoShop'})

	spawn(function()
		while wait(.6) do
			local f = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.ClientScript.Modules.InputService).UpdateClickDelay)[1]
			repeat
				wait(.1)
				f = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.ClientScript.Modules.InputService).UpdateClickDelay)[1]
			until f ~= nil	
			local shop = game:GetService("ReplicatedStorage").Assets.Modules.ItemDataService.ShopModule
	
			if misc.flags.AutoShop then
				for k,v in pairs(shop:GetChildren()) do
					for i,d in pairs(require(v)) do
						if type(i) == "number" and type(d) == "table" then
							for x,y in pairs(d) do
								if x == "Name" then
									if string.match(v.Name, "Gum") then
										f:FireServer("BuyShopItem",v.Name,"Gum",y)
										wait(5)
									end
									if string.match(v.Name, "Flavors") then
										f:FireServer("BuyShopItem",v.Name,"Flavors",y)
										wait(5)
									end
									if string.match(v.Name, "Faces") then
										f:FireServer("BuyShopItem",v.Name,"Faces",y)
										wait(5)
									end
								end
							end
						end
					end
				end
			end
		end
	end)
	

local extra= library:CreateWindow('Extra stuff')
extra:Section("--- Twitter codes ---")
extra:Button('Claim speed', function()

-- Gui to Lua
-- Version: 3.2

-- Instances:

local TwitterCodeGUI = Instance.new("ScreenGui")
local TwitterCodeFrame = Instance.new("Frame")
local RedeemAll = Instance.new("TextButton")
local CloseButton = Instance.new("TextButton")
local TwitterCodeLabel = Instance.new("TextLabel")
local Confirm = Instance.new("Frame")
local Sure = Instance.new("TextLabel")
local No = Instance.new("TextButton")
local Yes = Instance.new("TextButton")

_G.redeemCanceled = false

--Properties:

TwitterCodeGUI.Name = "twitterCodeGUI"
TwitterCodeGUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

TwitterCodeFrame.Name = "TwitterCodeFrame"
TwitterCodeFrame.Parent = TwitterCodeGUI
TwitterCodeFrame.BackgroundColor3 = Color3.fromRGB(249, 157, 255)
TwitterCodeFrame.Position = UDim2.new(0.257902443, 0, 0.261787415, 0)
TwitterCodeFrame.Size = UDim2.new(0, 660, 0, 49)

RedeemAll.Name = "RedeemAll"
RedeemAll.Parent = TwitterCodeFrame
RedeemAll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RedeemAll.Position = UDim2.new(0.27527836, 0, 0.132945716, 0)
RedeemAll.Selectable = false
RedeemAll.Size = UDim2.new(0, 102, 0, 34)
RedeemAll.Font = Enum.Font.SourceSans
RedeemAll.Text = "Press"
RedeemAll.TextColor3 = Color3.fromRGB(0, 0, 0)
RedeemAll.TextSize = 34.000
RedeemAll.TextWrapped = true

CloseButton.Name = "CloseButton"
CloseButton.Parent = TwitterCodeFrame
CloseButton.BackgroundColor3 = Color3.fromRGB(157, 20, 255)
CloseButton.Position = UDim2.new(0.946517169, 0, -0.00114468113, 0)
CloseButton.Size = UDim2.new(0, 35, 0, 33)
CloseButton.Font = Enum.Font.SourceSans
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(0, 0, 0)
CloseButton.TextScaled = true
CloseButton.TextSize = 14.000
CloseButton.TextWrapped = true

TwitterCodeLabel.Name = "TwitterCodeLabel"
TwitterCodeLabel.Parent = TwitterCodeFrame
TwitterCodeLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TwitterCodeLabel.BackgroundTransparency = 1.000
TwitterCodeLabel.Position = UDim2.new(0.0605306327, 0, 0.0366868377, 0)
TwitterCodeLabel.Size = UDim2.new(0, 579, 0, 45)
TwitterCodeLabel.Font = Enum.Font.Cartoon
TwitterCodeLabel.Text = "         to Redeem"
TwitterCodeLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TwitterCodeLabel.TextScaled = true
TwitterCodeLabel.TextSize = 14.000
TwitterCodeLabelTextWrapped = true

Confirm.Name = "Confirm"
Confirm.Parent = TwitterCodeGUI
Confirm.BackgroundColor3 = Color3.fromRGB(249, 157, 255)
Confirm.Position = UDim2.new(0.379209399, 0, 0.186197907, 0)
Confirm.Size = UDim2.new(0, 297, 0, 164)

Sure.Name = "Sure"
Sure.Parent = Confirm
Sure.BackgroundColor3 = Color3.fromRGB(249, 157, 255)
Sure.BorderColor3 = Color3.fromRGB(27, 42, 53)
Sure.BorderSizePixel = 0
Sure.Position = UDim2.new(0.115314111, 0, 0.048780486, 0)
Sure.Size = UDim2.new(0, 224, 0, 82)
Sure.Font = Enum.Font.SourceSans
Sure.Text = "Closing the script will stop redeeming codes.  Are You Sure?"
Sure.TextColor3 = Color3.fromRGB(0, 0, 0)
Sure.TextScaled = true
Sure.TextSize = 14.000
Sure.TextWrapped = true

No.Name = "No"
No.Parent = Confirm
No.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
No.Position = UDim2.new(0.577295542, 0, 0.638756454, 0)
No.Size = UDim2.new(0, 60, 0, 40)
No.Font = Enum.Font.SourceSans
No.Text = "No"
No.TextColor3 = Color3.fromRGB(0, 0, 0)
No.TextScaled = true
No.TextSize = 14.000
No.TextWrapped = true

Yes.Name = "Yes"
Yes.Parent = Confirm
Yes.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Yes.Position = UDim2.new(0.218039334, 0, 0.638756454, 0)
Yes.Size = UDim2.new(0, 60, 0, 40)
Yes.Font = Enum.Font.SourceSans
Yes.Text = "Yes"
Yes.TextColor3 = Color3.fromRGB(0, 0, 0)
Yes.TextScaled = true
Yes.TextSize = 14.000
Yes.TextWrapped = true

Confirm.Visible = false

local function ZNYUFB_fake_script() -- RedeemAll.LocalScript 
	local script = Instance.new('LocalScript', RedeemAll)
	local button = script.Parent
	function redeemAllCodes()
		RedeemAll.Visible = false
		local tbl_main = 
		{
			"RedeemCode", 
			""
		}
		local networkFunction = game:GetService("ReplicatedStorage").NetworkRemoteFunction
		local twitterCodes = loadstring(game:HttpGet(("https://textbin.net/raw/kazh6tf0pa"),true))() -- speed
		for codeType,codeTable in pairs(twitterCodes) do
			if _G.redeemCanceled then break end
			for codeIndex,codeValues in ipairs(codeTable) do
				if _G.redeemCanceled then break end
				TwitterCodeLabel.Text = "Attempting to redeem " .. codeValues.Name .. " for " .. codeValues.Minutes .. "mins of " .. codeType
				tbl_main[2] = codeValues.Name
				networkFunction:InvokeServer(unpack(tbl_main))
				wait (3)
			end
		end
		
		TwitterCodeLabel.Text = "         to Redeem"
		RedeemAll.Visible = true		
	end	
				
	button.Activated:Connect(redeemAllCodes)
end
coroutine.wrap(ZNYUFB_fake_script)()

local function CWLW_fake_script() -- TwitterCodeFrame.LocalScript 
	local script = Instance.new('LocalScript', TwitterCodeFrame)
	frame = script.Parent
	local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local inputService = game:GetService('UserInputService')
    local heartbeat = game:GetService("RunService").Heartbeat
        
	local s, event = pcall(function() return frame.MouseEnter end)
    
    if s then
		frame.Active = true
    
		event:connect(function()
			local input = frame.InputBegan:connect(function(key)
			if key.UserInputType == Enum.UserInputType.MouseButton1 then
				local objectPosition = Vector2.new(mouse.X - frame.AbsolutePosition.X, mouse.Y - frame.AbsolutePosition.Y)
				while heartbeat:wait() and inputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
					pcall(function()
						frame:TweenPosition(UDim2.new(0, mouse.X - objectPosition.X + (frame.Size.X.Offset * frame.AnchorPoint.X), 0, mouse.Y - objectPosition.Y + (frame.Size.Y.Offset * frame.AnchorPoint.Y)), 'Out', 'Linear', 0.1, true)
					end)
				end
			end
		end)
    
		local leave
		leave = frame.MouseLeave:connect(function()
					input:disconnect()
					leave:disconnect()
				end)
        end)
    end		
end
coroutine.wrap(CWLW_fake_script)()

local function ZWNJX_fake_script() -- CloseButton.LocalScript 
	local script = Instance.new('LocalScript', CloseButton)
	local button = script.Parent
	button.Activated:Connect(function() Confirm.Visible = true end)
end
coroutine.wrap(ZWNJX_fake_script)()

local function JITJS_fake_script() -- No.LocalScript 
	local script = Instance.new('LocalScript', No)
	local button = script.Parent
	button.Activated:Connect(function() Confirm.Visible = false end)
end
coroutine.wrap(JITJS_fake_script)()
local function DTOSN_fake_script() -- Yes.LocalScript 
	local script = Instance.new('LocalScript', Yes)
	local button = script.Parent
	button.Activated:Connect(function() 
		_G.redeemCanceled = true
		No.Visible = false
		Yes.Visible = false
		Confirm.Size = UDim2.new(0, 297, 0, 106)
		Sure.Text = "Cancelling..."
		wait(3)
		TwitterCodeGUI:Destroy()
	end)		
end
coroutine.wrap(DTOSN_fake_script)()

end)
-- codes end here	

extra:Button('Claim luck', function()

-- Gui to Lua
-- Version: 3.2

-- Instances:

local TwitterCodeGUI = Instance.new("ScreenGui")
local TwitterCodeFrame = Instance.new("Frame")
local RedeemAll = Instance.new("TextButton")
local CloseButton = Instance.new("TextButton")
local TwitterCodeLabel = Instance.new("TextLabel")
local Confirm = Instance.new("Frame")
local Sure = Instance.new("TextLabel")
local No = Instance.new("TextButton")
local Yes = Instance.new("TextButton")

_G.redeemCanceled = false

--Properties:

TwitterCodeGUI.Name = "twitterCodeGUI"
TwitterCodeGUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

TwitterCodeFrame.Name = "TwitterCodeFrame"
TwitterCodeFrame.Parent = TwitterCodeGUI
TwitterCodeFrame.BackgroundColor3 = Color3.fromRGB(159, 255, 255)
TwitterCodeFrame.Position = UDim2.new(0.257902443, 0, 0.261787415, 0)
TwitterCodeFrame.Size = UDim2.new(0, 660, 0, 49)

RedeemAll.Name = "RedeemAll"
RedeemAll.Parent = TwitterCodeFrame
RedeemAll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RedeemAll.Position = UDim2.new(0.27527836, 0, 0.132945716, 0)
RedeemAll.Selectable = false
RedeemAll.Size = UDim2.new(0, 102, 0, 34)
RedeemAll.Font = Enum.Font.SourceSans
RedeemAll.Text = "Press"
RedeemAll.TextColor3 = Color3.fromRGB(0, 0, 0)
RedeemAll.TextSize = 34.000
RedeemAll.TextWrapped = true

CloseButton.Name = "CloseButton"
CloseButton.Parent = TwitterCodeFrame
CloseButton.BackgroundColor3 = Color3.fromRGB(157, 20, 255)
CloseButton.Position = UDim2.new(0.946517169, 0, -0.00114468113, 0)
CloseButton.Size = UDim2.new(0, 35, 0, 33)
CloseButton.Font = Enum.Font.SourceSans
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(0, 0, 0)
CloseButton.TextScaled = true
CloseButton.TextSize = 14.000
CloseButton.TextWrapped = true

TwitterCodeLabel.Name = "TwitterCodeLabel"
TwitterCodeLabel.Parent = TwitterCodeFrame
TwitterCodeLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TwitterCodeLabel.BackgroundTransparency = 1.000
TwitterCodeLabel.Position = UDim2.new(0.0605306327, 0, 0.0366868377, 0)
TwitterCodeLabel.Size = UDim2.new(0, 579, 0, 45)
TwitterCodeLabel.Font = Enum.Font.Cartoon
TwitterCodeLabel.Text = "         to Redeem"
TwitterCodeLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TwitterCodeLabel.TextScaled = true
TwitterCodeLabel.TextSize = 14.000
TwitterCodeLabelTextWrapped = true

Confirm.Name = "Confirm"
Confirm.Parent = TwitterCodeGUI
Confirm.BackgroundColor3 = Color3.fromRGB(249, 157, 255)
Confirm.Position = UDim2.new(0.379209399, 0, 0.186197907, 0)
Confirm.Size = UDim2.new(0, 297, 0, 164)

Sure.Name = "Sure"
Sure.Parent = Confirm
Sure.BackgroundColor3 = Color3.fromRGB(249, 157, 255)
Sure.BorderColor3 = Color3.fromRGB(27, 42, 53)
Sure.BorderSizePixel = 0
Sure.Position = UDim2.new(0.115314111, 0, 0.048780486, 0)
Sure.Size = UDim2.new(0, 224, 0, 82)
Sure.Font = Enum.Font.SourceSans
Sure.Text = "Closing the script will stop redeeming codes.  Are You Sure?"
Sure.TextColor3 = Color3.fromRGB(0, 0, 0)
Sure.TextScaled = true
Sure.TextSize = 14.000
Sure.TextWrapped = true

No.Name = "No"
No.Parent = Confirm
No.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
No.Position = UDim2.new(0.577295542, 0, 0.638756454, 0)
No.Size = UDim2.new(0, 60, 0, 40)
No.Font = Enum.Font.SourceSans
No.Text = "No"
No.TextColor3 = Color3.fromRGB(0, 0, 0)
No.TextScaled = true
No.TextSize = 14.000
No.TextWrapped = true

Yes.Name = "Yes"
Yes.Parent = Confirm
Yes.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Yes.Position = UDim2.new(0.218039334, 0, 0.638756454, 0)
Yes.Size = UDim2.new(0, 60, 0, 40)
Yes.Font = Enum.Font.SourceSans
Yes.Text = "Yes"
Yes.TextColor3 = Color3.fromRGB(0, 0, 0)
Yes.TextScaled = true
Yes.TextSize = 14.000
Yes.TextWrapped = true

Confirm.Visible = false

local function ZNYUFB_fake_script() -- RedeemAll.LocalScript 
	local script = Instance.new('LocalScript', RedeemAll)
	local button = script.Parent
	function redeemAllCodes()
		RedeemAll.Visible = false
		local tbl_main = 
		{
			"RedeemCode", 
			""
		}
		local networkFunction = game:GetService("ReplicatedStorage").NetworkRemoteFunction
		local twitterCodes = loadstring(game:HttpGet(("https://textbin.net/raw/biohvg9k7h"),true))() -- luck
		for codeType,codeTable in pairs(twitterCodes) do
			if _G.redeemCanceled then break end
			for codeIndex,codeValues in ipairs(codeTable) do
				if _G.redeemCanceled then break end
				TwitterCodeLabel.Text = "Attempting to redeem " .. codeValues.Name .. " for " .. codeValues.Minutes .. "mins of " .. codeType
				tbl_main[2] = codeValues.Name
				networkFunction:InvokeServer(unpack(tbl_main))
				wait (3)
			end
		end
		
		TwitterCodeLabel.Text = "         to Redeem"
		RedeemAll.Visible = true		
	end	
				
	button.Activated:Connect(redeemAllCodes)
end
coroutine.wrap(ZNYUFB_fake_script)()

local function CWLW_fake_script() -- TwitterCodeFrame.LocalScript 
	local script = Instance.new('LocalScript', TwitterCodeFrame)
	frame = script.Parent
	local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local inputService = game:GetService('UserInputService')
    local heartbeat = game:GetService("RunService").Heartbeat
        
	local s, event = pcall(function() return frame.MouseEnter end)
    
    if s then
		frame.Active = true
    
		event:connect(function()
			local input = frame.InputBegan:connect(function(key)
			if key.UserInputType == Enum.UserInputType.MouseButton1 then
				local objectPosition = Vector2.new(mouse.X - frame.AbsolutePosition.X, mouse.Y - frame.AbsolutePosition.Y)
				while heartbeat:wait() and inputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
					pcall(function()
						frame:TweenPosition(UDim2.new(0, mouse.X - objectPosition.X + (frame.Size.X.Offset * frame.AnchorPoint.X), 0, mouse.Y - objectPosition.Y + (frame.Size.Y.Offset * frame.AnchorPoint.Y)), 'Out', 'Linear', 0.1, true)
					end)
				end
			end
		end)
    
		local leave
		leave = frame.MouseLeave:connect(function()
					input:disconnect()
					leave:disconnect()
				end)
        end)
    end		
end
coroutine.wrap(CWLW_fake_script)()

local function ZWNJX_fake_script() -- CloseButton.LocalScript 
	local script = Instance.new('LocalScript', CloseButton)
	local button = script.Parent
	button.Activated:Connect(function() Confirm.Visible = true end)
end
coroutine.wrap(ZWNJX_fake_script)()

local function JITJS_fake_script() -- No.LocalScript 
	local script = Instance.new('LocalScript', No)
	local button = script.Parent
	button.Activated:Connect(function() Confirm.Visible = false end)
end
coroutine.wrap(JITJS_fake_script)()
local function DTOSN_fake_script() -- Yes.LocalScript 
	local script = Instance.new('LocalScript', Yes)
	local button = script.Parent
	button.Activated:Connect(function() 
		_G.redeemCanceled = true
		No.Visible = false
		Yes.Visible = false
		Confirm.Size = UDim2.new(0, 297, 0, 106)
		Sure.Text = "Cancelling..."
		wait(3)
		TwitterCodeGUI:Destroy()
	end)		
end
coroutine.wrap(DTOSN_fake_script)()

end)
-- codes end here



extra:Button('Claim shiny/myth', function()

-- Gui to Lua
-- Version: 3.2

-- Instances:

local TwitterCodeGUI = Instance.new("ScreenGui")
local TwitterCodeFrame = Instance.new("Frame")
local RedeemAll = Instance.new("TextButton")
local CloseButton = Instance.new("TextButton")
local TwitterCodeLabel = Instance.new("TextLabel")
local Confirm = Instance.new("Frame")
local Sure = Instance.new("TextLabel")
local No = Instance.new("TextButton")
local Yes = Instance.new("TextButton")

_G.redeemCanceled = false

--Properties:

TwitterCodeGUI.Name = "twitterCodeGUI"
TwitterCodeGUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

TwitterCodeFrame.Name = "TwitterCodeFrame"
TwitterCodeFrame.Parent = TwitterCodeGUI
TwitterCodeFrame.BackgroundColor3 = Color3.fromRGB(175, 255, 159)
TwitterCodeFrame.Position = UDim2.new(0.257902443, 0, 0.261787415, 0)
TwitterCodeFrame.Size = UDim2.new(0, 660, 0, 49)

RedeemAll.Name = "RedeemAll"
RedeemAll.Parent = TwitterCodeFrame
RedeemAll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RedeemAll.Position = UDim2.new(0.27527836, 0, 0.132945716, 0)
RedeemAll.Selectable = false
RedeemAll.Size = UDim2.new(0, 102, 0, 34)
RedeemAll.Font = Enum.Font.SourceSans
RedeemAll.Text = "Press"
RedeemAll.TextColor3 = Color3.fromRGB(0, 0, 0)
RedeemAll.TextSize = 34.000
RedeemAll.TextWrapped = true

CloseButton.Name = "CloseButton"
CloseButton.Parent = TwitterCodeFrame
CloseButton.BackgroundColor3 = Color3.fromRGB(157, 20, 255)
CloseButton.Position = UDim2.new(0.946517169, 0, -0.00114468113, 0)
CloseButton.Size = UDim2.new(0, 35, 0, 33)
CloseButton.Font = Enum.Font.SourceSans
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(0, 0, 0)
CloseButton.TextScaled = true
CloseButton.TextSize = 14.000
CloseButton.TextWrapped = true

TwitterCodeLabel.Name = "TwitterCodeLabel"
TwitterCodeLabel.Parent = TwitterCodeFrame
TwitterCodeLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TwitterCodeLabel.BackgroundTransparency = 1.000
TwitterCodeLabel.Position = UDim2.new(0.0605306327, 0, 0.0366868377, 0)
TwitterCodeLabel.Size = UDim2.new(0, 579, 0, 45)
TwitterCodeLabel.Font = Enum.Font.Cartoon
TwitterCodeLabel.Text = "         to Redeem"
TwitterCodeLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TwitterCodeLabel.TextScaled = true
TwitterCodeLabel.TextSize = 14.000
TwitterCodeLabelTextWrapped = true

Confirm.Name = "Confirm"
Confirm.Parent = TwitterCodeGUI
Confirm.BackgroundColor3 = Color3.fromRGB(249, 157, 255)
Confirm.Position = UDim2.new(0.379209399, 0, 0.186197907, 0)
Confirm.Size = UDim2.new(0, 297, 0, 164)

Sure.Name = "Sure"
Sure.Parent = Confirm
Sure.BackgroundColor3 = Color3.fromRGB(249, 157, 255)
Sure.BorderColor3 = Color3.fromRGB(27, 42, 53)
Sure.BorderSizePixel = 0
Sure.Position = UDim2.new(0.115314111, 0, 0.048780486, 0)
Sure.Size = UDim2.new(0, 224, 0, 82)
Sure.Font = Enum.Font.SourceSans
Sure.Text = "Closing the script will stop redeeming codes.  Are You Sure?"
Sure.TextColor3 = Color3.fromRGB(0, 0, 0)
Sure.TextScaled = true
Sure.TextSize = 14.000
Sure.TextWrapped = true

No.Name = "No"
No.Parent = Confirm
No.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
No.Position = UDim2.new(0.577295542, 0, 0.638756454, 0)
No.Size = UDim2.new(0, 60, 0, 40)
No.Font = Enum.Font.SourceSans
No.Text = "No"
No.TextColor3 = Color3.fromRGB(0, 0, 0)
No.TextScaled = true
No.TextSize = 14.000
No.TextWrapped = true

Yes.Name = "Yes"
Yes.Parent = Confirm
Yes.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Yes.Position = UDim2.new(0.218039334, 0, 0.638756454, 0)
Yes.Size = UDim2.new(0, 60, 0, 40)
Yes.Font = Enum.Font.SourceSans
Yes.Text = "Yes"
Yes.TextColor3 = Color3.fromRGB(0, 0, 0)
Yes.TextScaled = true
Yes.TextSize = 14.000
Yes.TextWrapped = true

Confirm.Visible = false

local function ZNYUFB_fake_script() -- RedeemAll.LocalScript 
	local script = Instance.new('LocalScript', RedeemAll)
	local button = script.Parent
	function redeemAllCodes()
		RedeemAll.Visible = false
		local tbl_main = 
		{
			"RedeemCode", 
			""
		}
		local networkFunction = game:GetService("ReplicatedStorage").NetworkRemoteFunction
		local twitterCodes = loadstring(game:HttpGet(("https://textbin.net/raw/s8imaaciuj"),true))() -- shiny and mythic
		for codeType,codeTable in pairs(twitterCodes) do
			if _G.redeemCanceled then break end
			for codeIndex,codeValues in ipairs(codeTable) do
				if _G.redeemCanceled then break end
				TwitterCodeLabel.Text = "Attempting to redeem " .. codeValues.Name .. " for " .. codeValues.Minutes .. "mins of " .. codeType
				tbl_main[2] = codeValues.Name
				networkFunction:InvokeServer(unpack(tbl_main))
				wait (3)
			end
		end
		
		TwitterCodeLabel.Text = "         to Redeem"
		RedeemAll.Visible = true		
	end	
				
	button.Activated:Connect(redeemAllCodes)
end
coroutine.wrap(ZNYUFB_fake_script)()

local function CWLW_fake_script() -- TwitterCodeFrame.LocalScript 
	local script = Instance.new('LocalScript', TwitterCodeFrame)
	frame = script.Parent
	local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local inputService = game:GetService('UserInputService')
    local heartbeat = game:GetService("RunService").Heartbeat
        
	local s, event = pcall(function() return frame.MouseEnter end)
    
    if s then
		frame.Active = true
    
		event:connect(function()
			local input = frame.InputBegan:connect(function(key)
			if key.UserInputType == Enum.UserInputType.MouseButton1 then
				local objectPosition = Vector2.new(mouse.X - frame.AbsolutePosition.X, mouse.Y - frame.AbsolutePosition.Y)
				while heartbeat:wait() and inputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
					pcall(function()
						frame:TweenPosition(UDim2.new(0, mouse.X - objectPosition.X + (frame.Size.X.Offset * frame.AnchorPoint.X), 0, mouse.Y - objectPosition.Y + (frame.Size.Y.Offset * frame.AnchorPoint.Y)), 'Out', 'Linear', 0.1, true)
					end)
				end
			end
		end)
    
		local leave
		leave = frame.MouseLeave:connect(function()
					input:disconnect()
					leave:disconnect()
				end)
        end)
    end		
end
coroutine.wrap(CWLW_fake_script)()

local function ZWNJX_fake_script() -- CloseButton.LocalScript 
	local script = Instance.new('LocalScript', CloseButton)
	local button = script.Parent
	button.Activated:Connect(function() Confirm.Visible = true end)
end
coroutine.wrap(ZWNJX_fake_script)()

local function JITJS_fake_script() -- No.LocalScript 
	local script = Instance.new('LocalScript', No)
	local button = script.Parent
	button.Activated:Connect(function() Confirm.Visible = false end)
end
coroutine.wrap(JITJS_fake_script)()
local function DTOSN_fake_script() -- Yes.LocalScript 
	local script = Instance.new('LocalScript', Yes)
	local button = script.Parent
	button.Activated:Connect(function() 
		_G.redeemCanceled = true
		No.Visible = false
		Yes.Visible = false
		Confirm.Size = UDim2.new(0, 297, 0, 106)
		Sure.Text = "Cancelling..."
		wait(3)
		TwitterCodeGUI:Destroy()
	end)		
end
coroutine.wrap(DTOSN_fake_script)()

end)
-- codes end here

extra:Section("--- Event multipliers ---")
    extra:Button('2x Hatch Speed', function()
    game.ReplicatedStorage.Assets.Modules.Is2xSpeedEnabled.Enabled.Value = true
    end)


extra:Section("--- Shard Menu ---")
extra:Button('Buy Luck Boost', function()
	wait()
	local A_1 = "BuyShardShopItem"
	local A_2 = 1
	local Event = game:GetService("ReplicatedStorage").NetworkRemoteEvent
	Event:FireServer(A_1, A_2)
	wait(0.5)
end)
extra:Button('Buy Speed Boost', function()
	wait()
	local A_1 = "BuyShardShopItem"
	local A_2 = 2
	local Event = game:GetService("ReplicatedStorage").NetworkRemoteEvent
	Event:FireServer(A_1, A_2)
	wait(0.5)
end)
extra:Button('Buy Mythic Boost', function()
	wait()
	local A_1 = "BuyShardShopItem"
	local A_2 = 3
	local Event = game:GetService("ReplicatedStorage").NetworkRemoteEvent
	Event:FireServer(A_1, A_2)
	wait(0.5)
end)
extra:Button('Buy Shadow Potion +1', function()
	wait()
	local A_1 = "BuyShardShopItem"
	local A_2 = 4
	local Event = game:GetService("ReplicatedStorage").NetworkRemoteEvent
	Event:FireServer(A_1, A_2)
	wait(0.5)
end)

extra:Section("--- The Lab ---")
extra:Button('Craft Level +1', function()
	wait()
	local A_1 = "BrewPotion"
	local A_2 = 1
	local Event = game:GetService("ReplicatedStorage").NetworkRemoteEvent
	Event:FireServer(A_1, A_2)
	wait(0.5)
end)
extra:Button('Craft Enchant +1', function()
	wait()
	local A_1 = "BrewPotion"
	local A_2 = 2
	local Event = game:GetService("ReplicatedStorage").NetworkRemoteEvent
	Event:FireServer(A_1, A_2)
	wait(0.5)
end)
extra:Button('Craft Shadow Potion +1', function()
	wait()
	local A_1 = "BrewPotion"
	local A_2 = 3
	local Event = game:GetService("ReplicatedStorage").NetworkRemoteEvent
	Event:FireServer(A_1, A_2)
	wait(0.5)
end)
extra:Button('Craft Max Level', function()
	wait()
	local A_1 = "BrewPotion"
	local A_2 = 4
	local Event = game:GetService("ReplicatedStorage").NetworkRemoteEvent
	Event:FireServer(A_1, A_2)
	wait(0.5)
end)
extra:Button('Craft Max Enchant', function()
	wait()
	local A_1 = "BrewPotion"
	local A_2 = 5
	local Event = game:GetService("ReplicatedStorage").NetworkRemoteEvent
	Event:FireServer(A_1, A_2)
	wait(0.5)
end)
extra:Button('Craft Max Shadow', function()
	wait()
	local A_1 = "BrewPotion"
	local A_2 = 6
	local Event = game:GetService("ReplicatedStorage").NetworkRemoteEvent
	Event:FireServer(A_1, A_2)
	wait(0.5)
end)
extra:Button('Craft Money Potion', function()
	wait()
	local A_1 = "BrewPotion"
	local A_2 = 7
	local Event = game:GetService("ReplicatedStorage").NetworkRemoteEvent
	Event:FireServer(A_1, A_2)
	wait(0.5)
end)
extra:Button('Craft World Potion', function()
	wait()
	local A_1 = "BrewPotion"
	local A_2 = 8
	local Event = game:GetService("ReplicatedStorage").NetworkRemoteEvent
	Event:FireServer(A_1, A_2)
	wait(0.5)
end)
extra:Button('Craft Bubble Potion', function()
	wait()
	local A_1 = "BrewPotion"
	local A_2 = 9
	local Event = game:GetService("ReplicatedStorage").NetworkRemoteEvent
	Event:FireServer(A_1, A_2)
	wait(0.5)
end)

extra:Button('Collect potions', function()
	wait()
	local A_1 = "ClaimPotion"
	local A_2 = 1
	local Event = game:GetService("ReplicatedStorage").NetworkRemoteEvent
	Event:FireServer(A_1, A_2) 
	wait(0.5)
end)

    local eggtps = {}
    local eggsnames = {}
    local egginfo = require(game:GetService("ReplicatedStorage").Assets.Modules.ItemDataService.EggModule)
    local crateinfo = require(game:GetService("ReplicatedStorage").Assets.Modules.ItemDataService.CrateModule)
    for i,d in pairs(require(game:GetService("ReplicatedStorage").Assets.Modules.ItemDataService.EggModule)) do
        if game.Workspace.Eggs:FindFirstChild(i) then
            eggtps[i] = game.Workspace.Eggs[i].Hotkey
        end
        table.insert(eggsnames, i)
    end
    for i,d in pairs(require(game:GetService("ReplicatedStorage").Assets.Modules.ItemDataService.CrateModule)) do
        if game.Workspace.Eggs:FindFirstChild(i) then
            eggtps[i] = game.Workspace.Eggs[i].Hotkey
        end
        table.insert(eggsnames, i)
    end
   
    eggs:Section("Open Eggs / Crates")
    eggs:SearchBox("Egg", {
        location = eggs.flags,
        flag = "egg",
        list = eggsnames
     }, function()end)
    
    eggs:Toggle('Buy Eggs', {flag = "eggs"})
    if triple then
        eggs:Toggle('Buy Eggs (3x)', {flag = "three"})
    end
	local cccc = require(game:GetService("ReplicatedStorage").Assets.Modules.EggService)
    repeat
        wait()
        cccc = require(game:GetService("ReplicatedStorage").Assets.Modules.EggService)
    until cccc ~= nil
    local hat1 = cccc.HatchEgg
    --local hat3 = cccc.MultiHatchEgg
    eggs:Toggle('Skip Animation', {flag = "soa"},function(gh)
        cccc.HatchEgg = (gh == true and function()end or hat1)
        --cccc.MultiHatchEgg = (gh == true and function()end or hat3)
    end)
	eggs:Dropdown("Manage Inventory", {location = _G, flag = "AutoInv", list = {"Delete Pets", "Delete Hats", "Auto Delete Off"}}, function() _G.itemInv = {} end)
    for i,d in pairs(raritys) do
        eggs:Toggle('Delete '..i, {flag = tostring(i)})
    end
   -- hats:Section("Delete Hats")
    --for i,d in pairs(raritys) do
       -- hats:Toggle('Delete '..i, {flag = tostring(i)})
   -- end
   -- hats:Toggle('Delete Easy Legendary',{flag = 'easyleg'})
    eggs:Toggle('Delete Easy Legendary',{flag = 'easyleg'})
	
	eggs:Toggle('Custom Delete',{flag = 'customdelete'})
	eggs:Box('Name', {
        flag = "DeleteName",
        type = 'text'
    })
	
	eggs:Toggle('Make Pets Shiny', {flag = "shiny"})
    --eggs:Toggle('Show Alert(s)', {flag = "alerts"})
	eggs:Section("Upgrade Pets")
    
   
--    eggs:Toggle('Enchant Pets', {flag = "upgrade"})

	eggs:Box('Enchant Shiny(s)', {flag = 'enchantshinypetname', type="text"})
	eggs:Box('Enchant Normal(s)', {flag = "enchantnormalpetname", type = 'text'})

	eggs:Button('Use +1s on Pet', function()
		local maxEnchant = 40
		local maxLevel = 25
		local f = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.ClientScript.Modules.InputService).UpdateClickDelay)[1]
		repeat
			wait(.1)
			f = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.ClientScript.Modules.InputService).UpdateClickDelay)[1]
		until f ~= nil
		local playerData = f:InvokeServer("GetPlayerData")
		local potionIndex = require(game:GetService("ReplicatedStorage").Assets.Modules.Library.index)["POTIONS"]
		local petIndex = require(game:GetService("ReplicatedStorage").Assets.Modules.Library.index)["PETS"]
		for i,d in  pairs(game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.PetsFrame.Pets.Container.Frame:GetChildren()) do
			if d.Name ~= "UIGridLayout" then
				if d.ImageColor3 == Color3.new(0, 1, 0) then
					local petID = d.GUID.Value
					for x,y in pairs(playerData[petIndex]) do
						if y[1] == petID then
							local petLevel = y[4]
							local petEnchant = y[9]
							for k,v in pairs(playerData[potionIndex]) do
								if v[2] == "Level1" and petLevel < maxLevel then
									f:FireServer("UsePotionOnPet",v[1],petID)
									petLevel = petLevel + 1
								end
								if v[2] == "Enchant1" then
									if y[8] and petEnchant < maxEnchant then
										f:FireServer("UsePotionOnPet",v[1],petID)
										petEnchant = petEnchant + 1
									elseif not y[8] and y[4] == maxLevel and petEnchant < maxEnchant then
										f:FireServer("UsePotionOnPet",v[1],petID)
										petEnchant = petEnchant + 1
									end
								end
								print(petLevel,petEnchant)
							end
						end
					end
				end
			end
		end
     end)
	eggs:Button('Max Lvl/Ench Selected', function()
		local maxEnchant = 40
		local maxLevel = 25
		local f = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.ClientScript.Modules.InputService).UpdateClickDelay)[1]
		repeat
			wait(.1)
			f = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.ClientScript.Modules.InputService).UpdateClickDelay)[1]
		until f ~= nil
		local playerData = f:InvokeServer("GetPlayerData")
		local potionIndex = require(game:GetService("ReplicatedStorage").Assets.Modules.Library.index)["POTIONS"]
		local petIndex = require(game:GetService("ReplicatedStorage").Assets.Modules.Library.index)["PETS"]
		for i,d in  pairs(game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.PetsFrame.Pets.Container.Frame:GetChildren()) do
			if d.Name ~= "UIGridLayout" then
				if d.ImageColor3 == Color3.new(0, 1, 0) then
					local usedLevel = false
					local usedEnchant = false
					local petID = d.GUID.Value
					for k,v in pairs(playerData[potionIndex]) do
						for x,y in pairs(playerData[petIndex]) do
							if y[1] == petID then
								if v[2] == "LevelMax" and not usedLevel and y[4] < maxLevel then
									f:FireServer("UsePotionOnPet",v[1],petID)
									usedLevel = true
								end
								if v[2] == "EnchantMax" and not usedEnchant then
									if y[8] and y[9] < maxEnchant then
										f:FireServer("UsePotionOnPet",v[1],petID)
										usedEnchant = true
									elseif not y[8] and y[4] == maxLevel and y[9] < maxEnchant then
										f:FireServer("UsePotionOnPet",v[1],petID)
										usedEnchant = true
									elseif not y[8] and usedLevel and y[9] < maxEnchant then
										f:FireServer("UsePotionOnPet",v[1],petID)
										usedEnchant = true
									end
								end
							end
						end
					end
				end
			end
		end
     end)
	eggs:Toggle('Use Max Potion(s)', {flag = 'automaxpotion'})
	eggs:Box('Shiny Pet(s)', {flag = 'usepotionshinypetname', type="text"})
	eggs:Box('Normal Pet(s)', {flag = "usepotionnormalpetname", type = 'text'})


    _G.sell = false
    local range = 200
    
    local plr = game.Players.LocalPlayer
    local char = plr.Character
    local root = char.HumanoidRootPart
   
    function toTarget(pos, targetPos, targetCFrame)
        local tween_s = game:service"TweenService"
        local info = TweenInfo.new((targetPos - pos).Magnitude/70, Enum.EasingStyle.Quad)
       -- local tic_k = tick()
        local tween, err = pcall(function()
            local tween = tween_s:Create(plr.Character["HumanoidRootPart"], info, {CFrame = targetCFrame})
            tween:Play()
        end)
        if not tween then return err end
    end
	
	--function toTarget(pos, targetPos, targetCFrame)
		--local tween, err = pcall(function()local tween = game:service"TweenService":Create(plr.Character["HumanoidRootPart"], TweenInfo.new((targetPos - pos).Magnitude/50, Enum.EasingStyle.Quad), {CFrame = targetCFrame})tween:Play()end)
		--if not tween then return err end
   --end
   
   local skiptargets = {}
   
	spawn(function()
		while wait() do
			if not _G.collectingchests and not _G.sell and farm.flags.tot == true and not ((eggs.flags.eggs == true or eggs.flags.three == true) and _G.canafford) then
				local distance = math.huge
				local target
				for i,v in pairs(game:GetService("Workspace").HalloweenWorld.Houses:GetChildren()) do
					if v:WaitForChild("Activation"):WaitForChild("Tag"):WaitForChild("BillboardGui"):WaitForChild("Tag").Text == "Trick Or Treat!" and v:WaitForChild("Activation"):WaitForChild("Active").Value and (root.Position - v.Activation.Root.Position).Magnitude < distance and v ~= skiptargets[1] and v ~= skiptargets[2] and v ~= skiptargets[3] then
						distance = (root.Position - v.Activation.Root.Position).Magnitude
						target = v.Activation.Root
						if #skiptargets == 3 then
							table.remove(skiptargets, 1)
						end
					end
				end
				if not farm.flags.walk and target ~= nil and target.Parent.Active.Value and target.Parent.Tag.BillboardGui.Tag.Text == "Trick Or Treat!" then
					toTarget(root.Position,target.Position + Vector3.new(0,2,0),target.CFrame + Vector3.new(0,2,0))
				end
				local starttime = os.time()
				local connection
				if farm.flags.walk and target ~= nil and target.Parent.Active.Value and target.Parent.Tag.BillboardGui.Tag.Text == "Trick Or Treat!" then
					game:GetService("Players").LocalPlayer.Character.Humanoid:MoveTo(Vector3.new(2486.85, 55.0488, -294.33))
					connection = game:GetService("Players").LocalPlayer.Character.Humanoid.MoveToFinished:Connect(function()
						game:GetService("Players").LocalPlayer.Character.Humanoid:MoveTo(target.Position, target)
						connection:Disconnect()
						connection = nil
					end)
				end
				repeat
					wait(5)
				until target == nil or not target.Parent.Active.Value or target.Parent.Tag.BillboardGui.Tag.Text ~= "Trick Or Treat!" or os.time() > starttime + 10
				if target and target.Parent.Active.Value and farm.flags.walk then
					table.insert(skiptargets, target.Parent.Parent)
					print("Skipping target")
				end
			end
		end
	end)
   

    spawn(function()
        while wait() do
			
		local canaffordold = _G.canafford
			if not _G.sell and not _G.collectingchests and not _G.autoguessing and (eggs.flags.eggs == true or eggs.flags.three == true) then
				--local currentWorld = _G.world
                if eggs.flags.egg ~= nil then
                    if (egginfo[eggs.flags.egg] or crateinfo[eggs.flags.egg]) then
						local cost = (egginfo[eggs.flags.egg] or crateinfo[eggs.flags.egg]).Cost
						local e = 0
						e = cost[2]
						if eggs.flags.three then 
							e = e * 3
						end
						if currencys[cost[1]] and _G.sell ~= true then
							if currencys[cost[1]].Value >= e then
								_G.canafford = true
								if eggtps[eggs.flags.egg] then
									if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
										if (eggtps[eggs.flags.egg].Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10 then
											if not farm.flags.walk then
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,eggtps[eggs.flags.egg].Position.Y,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
												toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.Position,eggtps[eggs.flags.egg].Position,eggtps[eggs.flags.egg].CFrame)
											else
												game:GetService("Players").LocalPlayer.Character.Humanoid:MoveTo(eggtps[eggs.flags.egg].Position, eggtps[eggs.flags.egg])
											end
										end
										
										--while (eggtps[eggs.flags.egg].Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10 do
											--wait(.25)
										--end
										
												if eggs.flags.three == true then
													f["FireServer"](f, "PurchaseEgg",eggs.flags.egg, 'Multi')
												else
													f["FireServer"](f, "PurchaseEgg",eggs.flags.egg)
												end

									end
								end
							else
								_G.canafford = false
							end
						else
							_G.canafford = false
						end
					else
						_G.canafford = false
					end
                else
                    _G.canafford = false
                end
            else
                _G.canafford = false
            end
			
			if canaffordold ~= _G.canafford then
				_G.canaffordchange = true
			end
			--if canaffordold ~= _G.canaffordchange and not _G.canaffordchange and not _G.collectingchests and (eggs.flags.eggs == true or eggs.flags.three == true) and farm.flags.Drops then
			if not _G.canafford and not _G.collectingchests and not _G.autoguessing and not _G.sell and (eggs.flags.eggs == true or eggs.flags.three == true) and _G.canaffordchange == true and farm.flags.Drops == true and not (_G.currentWorld == "Event" or _G.currentWorld == "Overworld" or _G.currentWorld == "Mystic Forest") then
				_G.canaffordchange = false
				for k,d in pairs(_G.islandchests["GiantChests"]) do
					for i,v in pairs(game:GetService("Workspace").FloatingIslands:GetDescendants()) do
						if v.Name == "Chest" and v.ClassName == "Model" and v.Parent.Name == d then 
							--game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v.Parent.Collision.CFrame
							f["FireServer"](f, "TeleportToCheckpoint", v.Parent.Name)
							--wait(1)
						end
					end
				end
			end
			
				
			
        end
    end)
    farm:Section("Farm")
    farm:Toggle('Auto-Bubble Blow', {flag = 'Bubble'})
    
    
	--farm:Section("Auto-Sell Bubbles")
    farm:Dropdown("Sell World", {location = _G, flag = "SellWorld", list = {"Sell Bubbles Off", "Overworld", "Candy Land", "Beach World", "Atlantis", "Underworld", "Mystic Forest"}})
    farm:Toggle('Auto-Collect Lolipops', {flag = 'tot'})
 
	    farm:Toggle("Farm Drops", {flag = 'Drops'})
    
	    farm:Box('Radius', {
        flag = "Rad",
        type = 'number'
    })
	farm:Toggle('Walk (No TP)', {flag = 'walk'})
	

	farm:Section("Acquire Buffs")
	farm:Toggle('Daily Challenge', {flag = 'dailyChal'})
	farm:Toggle('Group Benefits', {flag = 'groupBene'})
	--farm:Toggle('Buy Merchant Item 1', {flag = 'merchItems1'})
	-- farm:Button('Buy Merchant Item 1', function()	
		-- if farm.flags.merchItems1 then
			-- for i = 1, 2 do
				-- f['FireServer'](f, 'BuyMerchantItem', 1)
				-- wait(.25)
			-- end
		-- end
	-- end)
	--farm:Toggle('Buy Merchant Item 2', {flag = 'merchItems2'})
	-- farm:Button('Buy Merchant Item 2', function()
		-- if farm.flags.merchItems2 then
			-- for i = 1, 2 do
				-- f['FireServer'](f, 'BuyMerchantItem', 2)
				-- wait(.25)
			-- end
		-- end
	-- end)
	farm:Toggle('Buy Merchant Pet', {flag = 'merchItems'})
	--farm:Toggle('Event Rewards', {flag = 'seasonChal'})
	farm:Toggle('Redeem Shard Chal', {flag = 'shardChal'})
	--farm:Toggle('Redeem Halloween XP', {flag = 'easterChal'})
	farm:Toggle('Enable Sprint', {flag = 'SpaceBoots'})

   -- loadstring(game:HttpGet(("http://roguefamily.com/script/twittercodes"),true))()
	--local twitterCodeGUI = library:CreateWindow('Redeem Twitter Codes')
	--local twitterCodeFrame = game:GetService("CoreGui").ScreenGui.Container["Redeem Twitter Codes"]
	--twitterCodeFrame.Visible = false
	--twitterCodeFrame.Size = UDim2.new(0, 450,0 ,550)
	--twitterCodeFrame.TextLabel.Position = UDim2.new(0, 5,0, -260)
	--twitterCodeFrame.Position = UDim2.new(0, 0,1, -520)
	--twitterCodeFrame.window_toggle:Destroy()
	
    farm:Section("MiniGames")
	farm:Toggle('Spin To Win', {flag = 'spt'})
	--farm:Toggle('Spooky Spin', {flag = 'sspt'})
	
	farm:Toggle('Doggy Jump', {flag = 'doggyJump'})
	--farm:Toggle('Match Pets', {flag = 'matchpets'})
   	farm:Toggle('AutoGuess Pet', {flag = 'Guess'})
  	farm:Toggle('Friendly AutoGuess', {flag = 'Friendly'})
	farm:Section("Auto Guess")
	farm:Dropdown("Autoguess", {location = _G, flag = "autoguess", list = {"Auto Guess Off", "Old Auto Guess", "Auto Guess TP"}})
	--farm:Box('X Offset', {flag = "XOff", type = 'number'})
	--farm:Box('Z Offset', {flag = "ZOff", type = 'number'})
	farm:Section("Potions")
	farm:Toggle('Delete +1s', {flag = 'delpotion1s'})
	
	local function matchPets()
		local complete = false
		local matchGame = {}
		local startTime
		local startTime2
		local NetworkRemoteFunction = game:GetService("ReplicatedStorage").NetworkRemoteFunction

		for i = 1, 18, 1 do
			startTime = os.time()
			--print(startTime)
			local pet1, status1
			repeat
				pet1, status1 = NetworkRemoteFunction:InvokeServer("MatchThePet", i)
			until status1 ~= nil or os.time() >= startTime + 2
			--print(i, pet1, status1)
			if status1 ~= nil then
				matchGame[i] = pet1
			elseif status1 == "match" then
				matchGame[i] = "matched"
			elseif status1 == "complete" then
				complete = true
				break
			end
		end
			if not complete then
			for i,d in pairs(matchGame) do
				for x,y in pairs(matchGame) do
					if i ~= x and y ~= "matched" and d == y then
						local pet1, status1
						startTime = os.time()
						repeat
							pet1, status1 = NetworkRemoteFunction:InvokeServer("MatchThePet", i)
						until status1 == "first" or os.time() >= startTime + 2
						if status1 == "first" then
							local pet2, status2 
							startTime2 = os.time()
							repeat
								pet2, status2 = NetworkRemoteFunction:InvokeServer("MatchThePet", x)
							until status2 == "match" or os.time() >= startTime2 + 2
							if status2 == "match" then
								matchGame[i] = "matched"
								matchGame[x] = "matched"
								print("Matched: " .. pet1, status1, pet2, status2)
							end
						end
					end
				end		
			end
		end
	end
	
	local spinModule = require(game:GetService("ReplicatedStorage").Assets.Modules.ItemDataService.SpinToWinModule)
	local spinindex = require(game:GetService("ReplicatedStorage").Assets.Modules.Library.index)["SPIN_TO_WIN"]
	local spookyspinModule = require(game:GetService("ReplicatedStorage").Assets.Modules.ItemDataService.SpinToWinSpookyModule)
	local spookyspinindex = require(game:GetService("ReplicatedStorage").Assets.Modules.Library.index)["SPIN_TO_WIN_SPOOKY"]
	local easterpassIndex = require(game:GetService("ReplicatedStorage").Assets.Modules.Library.index)["HALLOWEENPASS"]
	local easterpassModule = require(game:GetService("ReplicatedStorage").Assets.Modules.HalloweenPassService)
	local potionIndex = require(game:GetService("ReplicatedStorage").Assets.Modules.Library.index)["POTIONS"]
	
    spawn(function()
		 while wait(1) do
			local playerData = f:InvokeServer("GetPlayerData")

			if farm.flags.delpotion1s then
				for k,v in pairs(playerData[potionIndex]) do
					if v[2] == "Enchant1" or v[2] == "Level1" then
						f:FireServer("DeletePotion",v[1])
						wait(.5)
					end
				end
			end
            if farm.flags.spt and playerData[spinindex] < spinModule:GetHalfDay() then
				print("Spinning Wheel")
                f['FireServer'](f,'SpinToWin')
				wait(10)
				guiserv:DisplayFrame("")
	
			end
			if farm.flags.sspt and playerData[spookyspinindex] < spookyspinModule.GetHalfDay() then
				print("Spinning Spooky Wheel")
                f['FireServer'](f,'SpinToWinSpooky')
				wait(10)
				guiserv:DisplayFrame("")
			end
			if farm.flags.doggyJump then
				for i=1, 4 do
					f['FireServer'](f,'DoggyJumpWin',i)
					wait(1)
				end
			end
			if farm.flags.groupBene then
				f['InvokeServer'](f, 'CollectGroupReward')
				wait(1)
            end
			if farm.flags.dailyChal then
				f['FireServer'](f, 'ClaimDailyReward')
				wait(1)
			end
			
			


			if farm.flags.merchItems then
				for i = 1, 2 do
					f['FireServer'](f, 'BuyMerchantItem', 3)
					wait(.25)
				end
			end
			if farm.flags.seasonChal then
				for i = 1, 18 do
					f['FireServer'](f, 'ClaimChallengeReward', i, true)
					wait(.25)
					f['FireServer'](f, 'ClaimChallengeReward', i, false)
					wait(.25)
				end
			end
			if farm.flags.shardChal then
				f['FireServer'](f, 'GetShardQuest', 'Hard')
				wait(1)
				f['FireServer'](f, 'ClaimShardQuestReward')
				wait(1)
			end
			if farm.flags.SpaceBoots then
               			local hum = game.Players.LocalPlayer.Character.Humanoid
              				hum.WalkSpeed = 40
			end				
			if farm.flags.easterChal then
				for v1330, v1331 in ipairs({ "Easy", "Medium", "Hard" }) do
					local v1332, v1333 = unpack(playerData[easterpassIndex].Challenges[v1331])
					local v1334 = easterpassModule:GetChallengeData(v1331, v1332)
					local v1336 = v1334[2]
					local v1337 = math.clamp(v1333, 0, v1336)
					if v1336 <= v1337 then
						print("Redeeming Easter21 Pass "..v1331.." XP")
						f:FireServer("CompleteHalloweenChallenge",v1331)
						wait(.5)
					end
				end
			end		
			if farm.flags.matchpets then
				matchPets()
			end
        end
    end)
    
    spawn(function()
        while wait() do
            if farm.flags.Bubble then
                if f then
                    f['FireServer'](f,'BlowBubble')
                else
                    f = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.ClientScript.Modules.InputService).UpdateClickDelay)[1]
                end
            end
        end
    end)
	
   				
    spawn(function()
        while wait(.3) do
			if _G.SellWorld ~= "Sell Bubbles Off" and not _G.collectingchests and not _G.autoguessing then
				local counter = 0
				local leftside = ''
				local rightside = ''
				local a = {'', ''}
				local statFrame = game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("StatsFrame")
				repeat
					local statFrame = game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("StatsFrame")
				until statFrame ~= nil
					
				a = string.split(statFrame.Bubble.Amount.Text,'/')
				--for k,v in ipairs(a) do
					--if k == 1 then leftside = tonumber(v)
					--elseif k == 2 then rightside = tonumber(v)
					--end
				--end
				if string.find(a[1],',') ~= nil then
					leftside = a[1]:gsub(',','')
				else
					leftside = a[1]
				end
				if string.find(a[2],',') ~= nil then
					rightside = a[2]:gsub(',','')
				else
					rightside = a[2]
				end
				
				if leftside ~= '' then
					leftside = tonumber(leftside)
				else
					leftside = 0
				end
				if rightside ~= '' then
					rightside = tonumber(rightside)
				else
					rightside = 0
				end
				--local leftside = 0
				--local rightside = 0
				--print("1: " .. leftside .. " / " .. rightside)
				--if a[1] ~= nil then
					--leftside = tonumber(a[1])
				--end
				--if a[2] ~= nil then
					--rightside = tonumber(a[2])
				--end
				--print("2:" .. leftside .. " / " .. rightside)
				--print(leftside,rightside)
				--print(tonumber(a[1]) .. " " .. tonumber(a[2]))
                if leftside > 0 and leftside >= rightside then
                    _G.sell = true
					guiserv:DisplayFrame("")

					wait(.1)
					local oldWorld = _G.currentWorld
					local oldBuff = _G.currentBuff
					--changeBuff(_G.currentBuff,"Bubbles")
					tptoDrops(_G.currentWorld,_G.SellWorld)
					--wait(2)
					repeat
						f['FireServer'](f,"Teleport","Sell")
						wait(.25)
						f['FireServer'](f,'Sell')
						wait(.25)
					until string.split(game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:WaitForChild("StatsFrame").Bubble.Amount.Text,'/')[1] ~= leftside
					--changeBuff(_G.currentBuff,oldBuff)
					tptoDrops(_G.SellWorld,oldWorld)
					--wait(2)
					if farm.flags.Drops then
						for k,d in pairs(_G.islandchests["GiantChests"]) do
							for i,v in pairs(game:GetService("Workspace").FloatingIslands:GetDescendants()) do
								if v.Name == "Chest" and v.ClassName == "Model" and v.Parent.Name == d then 
									--game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v.Parent.Collision.CFrame
									f["FireServer"](f, "TeleportToCheckpoint", v.Parent.Name)
									--wait(2)
								end
							end
						end
					end
					_G.sell = false
                else
					_G.sell = false
    			end
            end
        end
    end)
    
	_G.autoguessing = false
	--_G.autoguessstarttime = 0
	--guessboard.SurfaceGui.Frame.Intro.Changed:Connect(function() if guessboard.SurfaceGui.Frame.Intro.Visible then _G.autoguessstarttime = os.time() + 2 end end)
    game:GetService("Workspace").GuessThatPet.GuessThatPetBoard.SurfaceGui.Frame.Main.Pet.Changed:Connect(function()
		if not _G.collectingchests and not _G.sell and _G.autoguess == "Auto Guess TP" then
			_G.autoguessing = true
			local oldWorld = _G.currentWorld
			local oldBuff = _G.currentBuff
			local guessboard = game:GetService("Workspace").GuessThatPet.GuessThatPetBoard
			--local sentguess = false
			--changeBuff(_G.currentBuff,"Gems")
			tptoDrops(_G.currentWorld,"Overworld")
			--f["FireServer"](f, "Teleport", "EventLeave")
			--game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,guessboard.CFrame.Y - 2,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
			--toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.Position,guessboard.Position + Vector3.new(0,-2,0),guessboard.CFrame + Vector3.new(0,-2, 0))
			--repeat
				--wait(.1)
				--if not sentguess and guessboard.Position.X - game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X <= farm.flags.XOff and guessboard.Position.Z - game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z <= farm.flags.ZOff  then
					--for i,d in pairs(pets) do
						--if d == game:GetService("Workspace").GuessThatPet.GuessThatPetBoard.SurfaceGui.Frame.Main.Pet.Image then
							--game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(i, "All")
							--sentguess = true
						--end
					--end
				--end
			--until sentguess
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,guessboard.CFrame.Y - 2,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
			toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.Position,guessboard.Position + Vector3.new(0,-2,0),guessboard.CFrame + Vector3.new(0,-2, 0))
			for i,d in pairs(pets) do
				if d == game:GetService("Workspace").GuessThatPet.GuessThatPetBoard.SurfaceGui.Frame.Main.Pet.Image then
					for x = 1 , 10 , 1 do
						game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(i, "All")
						wait(1)
					end
				end
			end
			wait(10)
			tptoDrops(_G.currentWorld,oldWorld)
			_G.autoguessing = false
		elseif _G.autoguess == "Old Auto Guess" then
			for i,d in pairs(pets) do
				if d == game:GetService("Workspace").GuessThatPet.GuessThatPetBoard.SurfaceGui.Frame.Main.Pet.Image then
					game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(i, "All")
				end
			end
		end
	end)
	--guessboard.SurfaceGui.Frame.Results.Title.Changed:Connect(function() if guessboard.SurfaceGui.Frame.Results.Title.Text:find("FINAL") ~= nil then _G.autoguessstarttime = os.time() + 9 end end)
    
	--spawn(function ()
		--while wait(.1) do
			--print(_G.autoguessstarttime - os.time())
			--if farm.flags.Guess and (os.time() - 1) >= _G.autoguessstarttime then
					
			--end
		--end
	--end)
    
    
 
 
    --game:GetService('RunService').Stepped:connect(function()
    --    if farm.flags.Drops and not farm.flags.walk then
    --        game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
    --    end
    --end)
    local target = nil
    spawn(function ()
    while wait() do 
    	if not _G.sell and ((farm.flags.Drops or target) and not farm.flags.walk) then
    		game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(11)
    	end
    end
    end)

    spawn(function()
		while wait(.1) do
			if not _G.collectingchests and not _G.sell and farm.flags.Drops == true and not farm.flags.tot and not ((eggs.flags.eggs == true or eggs.flags.three == true) and _G.canafford) then
				local closest = nil
				local dis = math.huge
				for i , v in ipairs(game.Workspace.Pickups:GetChildren()) do
					range = farm.flags.Rad
					if tonumber(range) ~= nil then
						if v:FindFirstChild('TouchInterest') and (root.Position-v.Position).magnitude <= tonumber(range) and (root.Position-v.Position).magnitude < dis then --and farm.flags.Drops == true  and _G.sell ~= true then
							--root.CFrame = CFrame.new(root.CFrame.X,v.CFrame.Y,root.CFrame.Z)
							closest = v
							dis = (root.Position-v.Position).magnitude
						end
					end
				end
				if closest ~= nil and (target == nil or target.Parent == nil) then
					local dis = closest.CFrame.Y - root.CFrame.Y
					if dis < (closest.Size.Y * -1) or dis > closest.Size.Y then
						root.CFrame = CFrame.new(root.CFrame.X,closest.CFrame.Y + 2,root.CFrame.Z)
					end
					if farm.flags.walk then
						game:GetService("Players").LocalPlayer.Character.Humanoid:MoveTo(closest.Position, closest)
					else
						toTarget(root.Position,closest.Position + Vector3.new(0,2,0),closest.CFrame + Vector3.new(0,2,0))
					end
				end
			end
		end
    end)
    
	spawn(function()
		local prize = require(game:GetService("ReplicatedStorage").Assets.Modules.ItemDataService.PrizeModule)
		while wait(.1) do
			if misc.flags.AutoClaimBubbles then
				for i,d in ipairs(prize["Bubbles"]) do
					f:InvokeServer("CollectPrize","Bubbles",i)
					wait(3)
				end
			end
	
			if misc.flags.AutoClaimEggs then
				for k,v in ipairs(prize["Eggs"]) do
					f:InvokeServer("CollectPrize","Eggs",k)
					wait(3)
				end
			end
		end
	end)
	
    local Module = game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.ClientScript.Modules.GuiService-- your module here
    local gg = require(Module)
    
    
    
    
    local function GetRarity(name)
        local entry = petlist[name]
        if entry ~= nil then
            return petlist[name]['Rarity']
        else
            return "error"
        end
    end
    
    local function HGetRarity(name)
        local entry = hatlist[name]
        if entry ~= nil then
            return hatlist[name]['Rarity']
        else
            return "error"
        end
    end
    
	
    local function Delete(Id)
        f['FireServer'](f,'DeletePet',Id)
    end
    local function HDelete(Id)
        f['FireServer'](f,'DeleteHat',Id)
    end
    repeat wait() until typeof(gg.TryShowPetsFrame) == "function"
    --local get = debug.getupvalues(require(Module).TryShowPetsFrame)[4]["PetsFrame"]
    --spawn(function()
        --while wait(30) do
            
        --end
    --end)
    local Eggs = require(game:GetService("ReplicatedStorage").Assets.Modules.ItemDataService.EggModule)
    local Crates = require(game:GetService("ReplicatedStorage").Assets.Modules.ItemDataService.CrateModule)
    local EasyLeg = {}
	local BlueLeg = {}
	local GreenLeg = {}
    for i , v in pairs(Eggs) do 
    	for i , v in pairs(v.Rarities) do
    		if GetRarity(v[1]) == 'Legendary' and v[2] >= 0.04 then
    			table.insert(EasyLeg,v[1])
    		end
			
			if GetRarity(v[1]) == 'Legendary' and v[2] >= 0.005 and v[2] <= 1.0 then
				table.insert(BlueLeg,v[1])
			elseif GetRarity(v[1]) == 'Legendary' and v[2] >= 0.0005 and v[2] <= 0.004 then
				table.insert(GreenLeg,v[1])
			end
    	end
    end
    local HEasyLeg = {}
	local HBlueLeg = {}
	local HGreenLeg = {}
    for i , v in pairs(Crates) do 
    	for i , v in pairs(v.Rarities) do
    		if GetRarity(v[1]) == 'Legendary' and v[2] >= 0.04 then
    			table.insert(HEasyLeg,v[1])
    		end
			
			if GetRarity(v[1]) == 'Legendary' and v[2] >= 0.005 and v[2] <= 1.0 then
				table.insert(HBlueLeg,v[1])
			elseif GetRarity(v[1]) == 'Legendary' and v[2] >= 0.0005 and v[2] <= 0.004 then
				table.insert(HGreenLeg,v[1])
			end
    	end
    end
	
    local pn = require(game:GetService("ReplicatedStorage").Assets.Modules.Library.index)["PETS"]
    local hn = require(game:GetService("ReplicatedStorage").Assets.Modules.Library.index)["HATS"]
	local prizeModule = require(game:GetService("ReplicatedStorage").Assets.Modules.ItemDataService.PrizeModule)
	local claimedHatchRewardIndex = require(game:GetService("ReplicatedStorage").Assets.Modules.Library.index)["CLAIMED_HATCH_REWARDS"]
	local redeemedCodes = require(game:GetService("ReplicatedStorage").Assets.Modules.Library.index)["REDEEMED_CODES"]
	local potionIndex = require(game:GetService("ReplicatedStorage").Assets.Modules.Library.index)["POTIONS"]	
	local playerData = f:InvokeServer("GetPlayerData")
	
	--_G.buffType = "Bubbles"
	maxPetsEquip = 5
	--_G.buffCur = "Bubbles"
	_G.equippedPets = {}
	--local equipChange = true
	
	_G.newInv = {}

	for i,d in pairs(playerData[claimedHatchRewardIndex]) do
		for k,v in pairs(prizeModule["Eggs"]) do
			if k == d then
				if v.Unlock == "+1 Pet Equipped" then
					maxPetsEquip = maxPetsEquip+1
				end
			end
		end
	end
	
	if plusFive then
				maxPetsEquip = maxPetsEquip+5
	end

	local function GetBuff(name, curr)
		local entry = petlist[name]
		local val = 0
		if entry ~= nil then
			for x,y in pairs(entry['Buffs']) do
				if x == curr then
					val = y
					return val
				end
			end
		end
	end
    
	local function spairs(t, order)
		local keys = {}
		for k in pairs(t) do keys[#keys+1] = k end
	
		if order then
			table.sort(keys, function(a,b) return order(t, a, b) end)
		else
			table.sort(keys)
		end
	
		local i = 0
		return function()
			i = i + 1
			if keys[i] then
				return keys[i], t[keys[i]]
			end
		end
	end

	_G.itemInv = {}
	_G.tradeList = {}
	--_G.tradeNames = "" --"Paragon,Mythic Paragon,Sakuralord,Mythic Sakuralord,Shard"
	--_G.tradeShiny = false
	--_G.tradeTo = "" --"MotorboatFloater" --"PremiumSeating" -- "MoarCowball"
	_G.tradeTo = ""
	_G.tradeNames = "All"
	_G.tradeShiny = true
	_G.tradeReqSent = false
	_G.tradeWait = 30 -- 360
	_G.acceptTrades = false
	_G.lastTrade = os.time() - 25
	_G.tradeAccepted = false
	
	local tradeFrame = game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:WaitForChild("TradeFrame")
	tradeFrame:GetPropertyChangedSignal("Visible"):Connect(function()
		if _G.acceptTrades and _G.tradeAccepted then --not _G.tradeReqSent then
			if tradeFrame.Visible then
				--local tradeTo = _G.tradeTo
				--_G.tradeTo = ""
				while tradeFrame.Visible do
					wait(.5)
					f:FireServer("TradeReady")
					wait(.5)
					f:FireServer("TradeConfirm")
				end
				
				_G.tradeAccepted = false
				--wait(10)
				--_G.tradeTo = tradeTo	
			end
		end			
	end)
	
	local function doTrade()
		for i,d in pairs(_G.tradeList) do
			print(d)
			wait(.5)
			f:FireServer("TradeAddItem", d)
		end
		local tradeFinished = game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("TradeFinished")
		local startTrade = os.time()
		repeat
			wait(.5)
			f:FireServer("TradeReady")
			wait(.5)
			f:FireServer("TradeConfirm")
			tradeFinished = game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("TradeFinished")
		until tradeFinished ~= nil or os.time() >= startTrade + 30
		_G.tradeList = {}
		_G.lastTrade = os.time()
		_G.tradeReqSent = false
	end
	
	spawn(function()
		while wait(.1) do
			if _G.acceptTrades and not _G.tradeAccepted then
				local tradeWindow = game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("TradeRequestNotification")
				repeat
					wait(.1)
					tradeWindow = game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("TradeRequestNotification")
				until tradeWindow ~= nil
				if tradeWindow ~= nil then
					_G.tradeAccepted = true
					local tradePlayer = string.sub(tradeWindow.Desc.Text, 1, string.find(tradeWindow.Desc.Text, " ") - 1)
					print("Accepting trade from " .. tradePlayer)
					Players = game:GetService("Players")
					for i, player in pairs(Players:GetPlayers()) do
						if player.name == tradePlayer then
							f:FireServer("TradeAcceptRequest", player)
						end
					end
					--tradeWindow:Destroy()
				end
			end
		end
	end)
	
	spawn(function()
		while wait(.1) do
			if not tradeReqSent and _G.tradeList[1] ~= nil and _G.tradeTo ~= "" then
				local tradePlayer = _G.tradeTo
				Players = game:GetService("Players")
				for i, player in pairs(Players:GetPlayers()) do
					if player.name == tradePlayer then
						f:FireServer("TradeSendRequest", player)
						wait(10)
						if tradeFrame.Visible then
							_G.tradeReqSent = true
							doTrade()
						end
					end
				end
			end
			--print(os.time(), tradeFrame.Visible, _G.tradeList, _G.tradeTo)
		end
	end)

    spawn(function()
        while wait(.1) do
            local cp = {}
            local dfg = {}
			_G.newInv = {}
			--local massDelete = {}
			local numEquipped = 0
			_G.equippedPets = {}
			local equipBuff = 0
			local newBuff = 0
			local petBuffs = {}
			local sortedPetBuffs = {}
			local maxEnchant = 40
			local maxLevel = 25
			local a = game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.ClientScript.Modules.GuiService
    		local e = f:InvokeServer("GetPlayerData")
				
			for i,d in pairs(e[pn]) do
				local id = d[1]
                local name = d[2]
				local isShiny = d[8]
                local rarity = GetRarity(name)
				local petBuff = GetBuff(name,_G.currentBuff)
				local deleted = false
				local traded = false
				local easyLegend = false
				local legendColor = ""
				local delNames = eggs.flags.DeleteName
				local potionShinyNames = eggs.flags.usepotionshinypetname
				local potionNormalNames = eggs.flags.usepotionnormalpetname
				local enchantShinyNames = eggs.flags.enchantshinypetname
				local enchantNormalNames = eggs.flags.enchantnormalpetname
				
				
				if petBuff ~= nil and petBuff > 0 then
					basePetBuff = petBuff
					petBuff = petBuff + ((d[4]-1)*(1/24)*basePetBuff)
					petBuff = petBuff + (d[9]*.025*basePetBuff)
					if d[8] == true then
						petBuff = petBuff*2
					end
					petBuffs[id] = petBuff
				else petBuff = 0
				end
				
				if d[6] then
					table.insert(_G.equippedPets,d[1])
					equipBuff = equipBuff + petBuff
					numEquipped = numEquipped + 1
				end
									
						
					--if inList and i ~= nil then
						--print(d[1],"in Equip Slot",i)
					--elseif ~= inList
					
					--	table.insert(equippedPets, d[1])
					--	print(d[1],"added to Equipped List")
					--end
				for i , v in pairs(EasyLeg) do 
					if v == name then
						easyLegend = true
					end
				end
				
				for i , v in pairs(GreenLeg) do 
					if v == name then
						legendColor = "green"
					end
				end
				
				
				for i , v in pairs(BlueLeg) do 
					if v == name then
						legendColor = "blue"
					end
				end
				
				
				if _G.AutoInv == "Delete Pets" and not d[7] then				
					if eggs.flags[rarity] == true then 
						Delete(id)
						deleted = true
					elseif eggs.flags.easyleg and easyLegend then
						Delete(id)
						deleted = true
					elseif eggs.flags.customdelete then
						if tostring(delNames) ~= nil then
							for i in string.gmatch(delNames, '([^,]+)') do
								if name == i then
									Delete(id)
									--table.insert(massDelete,d[1])
									deleted = true
								end
							end
						end
					end
				end
					

					if tostring(_G.tradeNames) ~= nil and _G.tradeTo ~= "" and deleted == false and not d[7] and not _G.tradeReqSent then
						local inList = false
						local listCount = 0
						local addToList = false
						for i in string.gmatch(_G.tradeNames, '([^,]+)') do
							if name == i or i == "All" then
								if (isShiny and _G.tradeShiny) or not isShiny then
									addToList = true
								end
							end
						end
						if addToList and _G.tradeList[8] == nil then
							if _G.tradeList[1] ~= nil then
								for i,d in pairs(_G.tradeList) do
									listCount = listCount + 1
									if d == id then
										inList = true
									end
								end
							end
							if not inList then
								table.insert(_G.tradeList, id)
								print(id, name)
							end
							traded = true
						end		
					end
					
					if deleted == false then
						table.insert(_G.newInv, {d[1], d[2], rarity, d[8], legendColor})
					end
					
					
					if eggs.flags.shiny and deleted == false and traded == false and not d[7] then
						if d[8] == false and not d[7] then
							cp[name] = (cp[name] or 0) + 1
							if cp[name] >= 10 then
								cp[name] = 0
								f:FireServer("MakePetShiny", id)
							end
						end
					end
					
					local enchantPet = false
					if tostring(enchantShinyNames) ~= nil then
						for i in string.gmatch(enchantShinyNames, '([^,]+)') do
							if (i == "All" or name == i) and d[8] then
								enchantPet = true
							end
						end
					end
					if tostring(enchantNormalNames) ~= nil then
						for i in string.gmatch(enchantNormalNames, '([^,]+)') do
							if i == "All" or name == i then
								enchantPet = true
							end
						end
					end
					if enchantPet and (d[8] or d[4]==maxLevel) and d[9] < maxEnchant and deleted == false and traded == false then
						f["FireServer"](f, "EnchantPet", id)
					end
					
					if eggs.flags.automaxpotion then
						local shinyPet = false
						if tostring(potionShinyNames) ~= nil then
							for i in string.gmatch(potionShinyNames, '([^,]+)') do
								if name == i and d[8] then
									shinyPet = true
								end
							end
						end
						if tostring(potionNormalNames) ~= nil then
							for i in string.gmatch(potionNormalNames, '([^,]+)') do
								if name == i then
									shinyPet = true
								end
							end
						end
						if shinyPet and deleted == false and traded == false then
							local usedLevel = false
							local usedEnchant = false
							for k,v in pairs(e[potionIndex]) do
								if v[2] == "LevelMax" and not usedLevel and d[4] < maxLevel then
									f:FireServer("UsePotionOnPet",v[1],id)
									usedLevel = true
								end
								if v[2] == "EnchantMax" and not usedEnchant then
									if d[8] and d[9] < maxEnchant then
										f:FireServer("UsePotionOnPet",v[1],id)
										usedEnchant = true
									elseif not d[8] and d[4] == maxLevel and d[9] < maxEnchant then
										f:FireServer("UsePotionOnPet",v[1],id)
										usedEnchant = true
									elseif not d[8] and usedLevel and d[9] < maxEnchant then
										f:FireServer("UsePotionOnPet",v[1],id)
										usedEnchant = true
									end
								end
							end
						end
					end	
			end
			
			if _G.AutoInv == "Delete Hats" then
				for i,d in pairs(e[hn]) do
					local delNames = eggs.flags.DeleteName
					local deleted = false
					local id = d[1]
					local name = d[2]
					local rarity = HGetRarity(name)
					local easyLegend = false
					local legendColor = ""
					for i , v in pairs(HEasyLeg) do 
						if v == name then
							easyLegend = true
						end
					end
					for i , v in pairs(HBlueLeg) do 
						if v == name then
							legendColor = "blue"
						end
					end
					for i , v in pairs(HGreenLeg) do 
						if v == name then
							legendColor = "green"
						end
					end
					if not d[4] then
						if eggs.flags[rarity] == true then 
							HDelete(id)
							deleted = true
						elseif eggs.flags.easyleg and easyLegend then
							HDelete(id)
							deleted = true
						elseif eggs.flags.customdelete then
							if tostring(delNames) ~= nil then
								for i in string.gmatch(delNames, '([^,]+)') do
									if name == i then
										HDelete(id)
										--table.insert(massDelete,d[1])
										deleted = true
									end
								end
							end
						end
					end
					if deleted == false then
						table.insert(_G.newInv, {d[1], d[2], rarity, false, legendColor})
					end
				end
			end
			
			if _G.newInv[1] ~= nil then
				for i,d in ipairs(_G.newInv) do
					if _G.itemInv[1] ~= nil then
						local itemFound = false
						local skipAlert = false
						for k,v in ipairs(_G.itemInv) do
							if v[1] == d[1] then
								itemFound = true
							end
						end
						
						_G.ExcludeAlerts = ExcludedAlerts.Text
						
						if tostring(_G.ExcludeAlerts) ~= nil then
							for i in string.gmatch(_G.ExcludeAlerts, '([^,]+)') do
								if d[2] == i then
									skipAlert = true
								end
							end
						end
						
					
						if not itemFound and not skipAlert then
							if cccc:IsSecretItem(d[2]) then
								inventoryAlert(d[2], "SECRET", d[4], d[5])
							else
								inventoryAlert(d[2], d[3], d[4], d[5])
							end
							--print("New " .. d[3] .. " Item " .. d[1] .. " " .. d[2])
						end
					end
				end
			end
			
			_G.itemInv = {}
			
			if _G.newInv[1] ~= nil then
				for i,d in ipairs(_G.newInv) do
					table.insert(_G.itemInv, {d[1], d[2], d[3], d[4], d[5]})
				end
			end

							

			for k,v in spairs(petBuffs, function(t,a,b) return t[b] < t[a] end) do
				table.insert(sortedPetBuffs,{k,v})
			end
				
			for i=1,maxPetsEquip do
				if sortedPetBuffs[i] ~= nil then
					newBuff = newBuff + sortedPetBuffs[i][2]
				end
			end
			
			if misc.flags.AutoEquip and sortedPetBuffs[1] ~= nil then
				if (math.ceil(newBuff) > math.ceil(equipBuff)) or _G.buffChange then
					if numEquipped ~= nil and numEquipped >= maxPetsEquip then
						for i,d in pairs(_G.equippedPets) do
							f:FireServer("UnequipPet", _G.equippedPets[i])
						end
						_G.equippedPets = {}
					end
					for i=1,maxPetsEquip do
						if sortedPetBuffs[i] ~= nil then
							f:FireServer("EquipPet", sortedPetBuffs[i][1])
						end
					end
				end
				_G.buffChange = false
			end
		end
	end)
end

local this = 1
local that = 1

--if game.PlaceVersion > LatestSupportedVersion then
if this ~= that then

    function RandomVariable(length)
        local res = ""
        for i = 1, length do
            res = res .. string.char(math.random(97, 122))
        end
        return res
    end

    local ScreenGui = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    local TextLabel = Instance.new("TextLabel")
    local TextLabel_2 = Instance.new("TextLabel")
    local TextLabel_3 = Instance.new("TextLabel")
    local Yes = Instance.new("TextButton")
    local No = Instance.new("TextButton")

    ScreenGui.Parent = game.CoreGui
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    ScreenGui.Name = RandomVariable(math.random(3,20))

    Frame.Parent = ScreenGui
    Frame.BackgroundColor3 = Color3.fromRGB(27, 42, 53)
    Frame.BorderColor3 = Color3.fromRGB(27, 42, 53)
    Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
    Frame.Size = UDim2.new(0, 400, 0, 250)
    Frame.AnchorPoint = Vector2.new(0.5,0.5)
    Frame.Name = RandomVariable(math.random(3,20))

    TextLabel.Parent = Frame
    TextLabel.BackgroundColor3 = Color3.fromRGB(48, 75, 94)
    TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
    TextLabel.Position = UDim2.new(0, 0, 0.0480000004, 0)
    TextLabel.Size = UDim2.new(1, 0, 0, 50)
    TextLabel.Font = Enum.Font.SourceSans
    TextLabel.Text = "Warning!"
    TextLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
    TextLabel.TextScaled = true
    TextLabel.TextSize = 14.000
    TextLabel.TextWrapped = true
    TextLabel.Name = RandomVariable(math.random(3,20))

    TextLabel_2.Parent = Frame
    TextLabel_2.BackgroundColor3 = Color3.fromRGB(48, 75, 94)
    TextLabel_2.BackgroundTransparency = 1.000
    TextLabel_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
    TextLabel_2.Position = UDim2.new(0, 0, 0.280000001, 0)
    TextLabel_2.Size = UDim2.new(1, 0, 0.159999996, 50)
    TextLabel_2.Font = Enum.Font.SourceSans
    TextLabel_2.Text = "The script detected that the game has been updated and it wasnt tested on the newest version, you can still execute it on you own risk which can cause your account in getting banned if the anticheat was updated!"
    TextLabel_2.TextColor3 = Color3.fromRGB(255, 0, 0)
    TextLabel_2.TextSize = 20.000
    TextLabel_2.TextWrapped = true
    TextLabel_2.Name = RandomVariable(math.random(3,20))

    TextLabel_3.Parent = Frame
    TextLabel_3.BackgroundColor3 = Color3.fromRGB(48, 75, 94)
    TextLabel_3.BorderColor3 = Color3.fromRGB(27, 42, 53)
    TextLabel_3.Position = UDim2.new(0, 0, 0.700000048, 0)
    TextLabel_3.Size = UDim2.new(1, 0, -0.0879999995, 50)
    TextLabel_3.Font = Enum.Font.SourceSans
    TextLabel_3.Text = "Execute?"
    TextLabel_3.TextColor3 = Color3.fromRGB(255, 0, 0)
    TextLabel_3.TextSize = 28.000
    TextLabel_3.TextWrapped = true
    TextLabel_3.Name = RandomVariable(math.random(3,20))

    Yes.Name = RandomVariable(math.random(3,20))
    Yes.Parent = Frame
    Yes.BackgroundColor3 = Color3.fromRGB(68, 107, 134)
    Yes.BorderColor3 = Color3.fromRGB(27, 42, 53)
    Yes.Position = UDim2.new(0.100000001, 0, 0.864000022, 0)
    Yes.Size = UDim2.new(0, 140, 0, 25)
    Yes.Font = Enum.Font.SourceSansBold
    Yes.Text = "Yes"
    Yes.TextColor3 = Color3.fromRGB(255, 0, 4)
    Yes.TextScaled = true
    Yes.TextSize = 14.000
    Yes.TextWrapped = true

    No.Name = RandomVariable(math.random(3,20))
    No.Parent = Frame
    No.BackgroundColor3 = Color3.fromRGB(68, 107, 134)
    No.BorderColor3 = Color3.fromRGB(27, 42, 53)
    No.Position = UDim2.new(0.550000012, 0, 0.864000022, 0)
    No.Size = UDim2.new(0, 140, 0, 25)
    No.Font = Enum.Font.SourceSansBold
    No.Text = "No"
    No.TextColor3 = Color3.fromRGB(17, 255, 0)
    No.TextScaled = true
    No.TextSize = 14.000
    No.TextWrapped = true

    No.MouseButton1Click:Connect(function()
        ScreenGui:Destroy()
    end)

    Yes.MouseButton1Click:Connect(function()
        ScreenGui:Destroy()
        scr()
    end)
else
    scr()
end 
-- OCT21-1
