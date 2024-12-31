local anims = {client={};server={};}
local ui = {}
local settings = getgenv().settings or {
	saveas = "all"; -- can be set to client or server
	onlyplayers = true; -- find anims from players only or from all humanoids/animationcontrollers
	logtoconsole = false; -- log animation data to a console
}
ui.init = function(ver)
	local mysterious = Instance.new("ScreenGui")
	local main = Instance.new("Frame")
	local title = Instance.new("TextLabel")
	local tabs = Instance.new("Frame")
	local ca = Instance.new("ImageButton")
	local tooltip = Instance.new("TextLabel")
	local sa = Instance.new("ImageButton")
	local tooltip_2 = Instance.new("TextLabel")
	local UIListLayout = Instance.new("UIListLayout")
	local client_anims = Instance.new("ScrollingFrame")
	local UIListLayout_2 = Instance.new("UIListLayout")
	local server_anims = Instance.new("ScrollingFrame")
	local UIListLayout_3 = Instance.new("UIListLayout")
	local savebtn = Instance.new("TextButton")

	mysterious.Name = "mysterious"
	mysterious.Parent = game.CoreGui
	mysterious.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	main.Name = "main"
	main.Parent = mysterious
	main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	main.ClipsDescendants = true
	main.Position = UDim2.new(0.309174299, 0, 0.279661, 0)
	main.Size = UDim2.new(0, 415, 0, 260)

	title.Name = "title"
	title.Parent = main
	title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	title.Size = UDim2.new(0, 415, 0, 24)
	title.Font = Enum.Font.SourceSans
	title.Text = "     false's animation grabber ( v"..ver..")"
	title.TextColor3 = Color3.fromRGB(0, 0, 0)
	title.TextSize = 14.000
	title.TextXAlignment = Enum.TextXAlignment.Left

	tabs.Name = "tabs"
	tabs.Parent = main
	tabs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	tabs.Position = UDim2.new(0, 0, 0.0961538479, 0)
	tabs.Size = UDim2.new(0, 30, 0, 235)

	ca.Name = "ca"
	ca.Parent = tabs
	ca.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ca.Position = UDim2.new(0, 0, -0.00400000066, 0)
	ca.Size = UDim2.new(0, 30, 0, 30)
	ca.Image = "rbxassetid://8779531164"
	ca.ScaleType = Enum.ScaleType.Slice
	ca.MouseButton1Click:Connect(function()
		client_anims.Visible = true
		server_anims.Visible = false
	end)

	tooltip.Name = "tooltip"
	tooltip.Parent = ca
	tooltip.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	tooltip.Position = UDim2.new(1, 1, 0.00333333574, 0)
	tooltip.Size = UDim2.new(0, 118, 0, 30)
	tooltip.Visible = false
	tooltip.Font = Enum.Font.SourceSans
	tooltip.Text = "client animations"
	tooltip.TextSize = 14.000

	sa.Name = "sa"
	sa.Parent = tabs
	sa.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	sa.Position = UDim2.new(0, 0, 0.20769231, 0)
	sa.Size = UDim2.new(0, 30, 0, 30)
	sa.Image = "rbxassetid://8779534181"
	sa.ScaleType = Enum.ScaleType.Crop
	sa.SliceCenter = Rect.new(10, 0, 28, 48)
	sa.MouseButton1Click:Connect(function()
		client_anims.Visible = false
		server_anims.Visible = true
	end)

	tooltip_2.Name = "tooltip"
	tooltip_2.Parent = sa
	tooltip_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	tooltip_2.Position = UDim2.new(1, 1, 0.00333333574, 0)
	tooltip_2.Size = UDim2.new(0, 118, 0, 30)
	tooltip_2.Visible = false
	tooltip_2.Font = Enum.Font.SourceSans
	tooltip_2.Text = "server animations"
	tooltip_2.TextSize = 14.000

	UIListLayout.Parent = tabs
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 1)

	client_anims.Name = "client_anims"
	client_anims.Parent = main
	client_anims.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	client_anims.Position = UDim2.new(0.0722891539, 0, 0.0961538479, 0)
	client_anims.Selectable = false
	client_anims.Size = UDim2.new(0, 385, 0, 235)
	client_anims.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
	client_anims.ScrollBarThickness = 5
	client_anims.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
	client_anims.ScrollBarImageColor3 = Color3.fromRGB(0,0,0)

	UIListLayout_2.Parent = client_anims
	UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

	server_anims.Name = "server_anims"
	server_anims.Parent = main
	server_anims.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	server_anims.Position = UDim2.new(0.0722891539, 0, 0.0961538479, 0)
	server_anims.Selectable = false
	server_anims.Size = UDim2.new(0, 385, 0, 235)
	server_anims.Visible = false
	server_anims.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
	server_anims.ScrollBarThickness = 5
	server_anims.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
	server_anims.ScrollBarImageColor3 = Color3.fromRGB(0,0,0)

	UIListLayout_3.Parent = server_anims
	UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder

	savebtn.Name = "savebtn"
	savebtn.Parent = main
	savebtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	savebtn.Position = UDim2.new(0.894216835, 0, -0.000999978976, 0)
	savebtn.Size = UDim2.new(0, 45, 0, 24)
	savebtn.Font = Enum.Font.SourceSans
	savebtn.Text = "save"
	savebtn.TextColor3 = Color3.fromRGB(0, 0, 0)
	savebtn.TextSize = 14.000

       savebtn.MouseButton1Click:Connect(function()
      pcall(function()
        writefile("grabbed anims3.txt", game:GetService("HttpService"):JSONEncode(anims))
        writefile("grabbed anims2.txt", game:GetService("HttpService"):JSONEncode(anims.client))
        writefile("grabbed anims1.txt", game:GetService("HttpService"):JSONEncode(anims.server))
      end)
    end)
	local onbd = main
	local dragging
	local dragInput
	local dragStart
	local startPos

	local function update(input)
		local delta = input.Position - dragStart
		game:GetService("TweenService"):Create(onbd, TweenInfo.new(0.000001), {Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)}):Play()
	end

	onbd.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = onbd.Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	onbd.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)

	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
	local window = {}
	window.addpanel = function(info)
		local anim_panel = Instance.new("Frame")
		local anim_name = Instance.new("TextLabel")
		local anim_id = Instance.new("TextLabel")
		local copybtn = Instance.new("TextButton")

		anim_panel.Name = "anim_panel"
		anim_panel.Parent = main:FindFirstChild(info["type"] .."_anims")
		anim_panel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		anim_panel.Size = UDim2.new(0, 379, 0, 45)
		anim_panel.Name = "anim_panel"

		anim_name.Name = "anim_name"
		anim_name.Parent = anim_panel
		anim_name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		anim_name.BorderColor3 = Color3.fromRGB(27, 42, 53)
		anim_name.BorderSizePixel = 0
		anim_name.Position = UDim2.new(0.0299999993, 0, 0.100000001, 0)
		anim_name.Size = UDim2.new(0, 360, 0, 23)
		anim_name.Font = Enum.Font.SourceSans
		anim_name.Text = info["name"]
		anim_name.TextColor3 = Color3.fromRGB(0, 0, 0)
		anim_name.TextSize = 16.000
		anim_name.TextXAlignment = Enum.TextXAlignment.Left

		anim_id.Name = "anim_id"
		anim_id.Parent = anim_panel
		anim_id.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		anim_id.BackgroundTransparency = 1.000
		anim_id.BorderColor3 = Color3.fromRGB(27, 42, 53)
		anim_id.BorderSizePixel = 0
		anim_id.Position = UDim2.new(0.0299999993, 0, 0.449999988, 0)
		anim_id.Size = UDim2.new(0, 359, 0, 16)
		anim_id.Font = Enum.Font.SourceSans
		anim_id.Text = "rbxassetid://".. tostring(info["id"])
		anim_id.TextColor3 = Color3.fromRGB(0, 0, 0)
		anim_id.TextSize = 14.000
		anim_id.TextTransparency = 0.250
		anim_id.TextXAlignment = Enum.TextXAlignment.Left

		copybtn.Name = "copybtn"
		copybtn.Parent = anim_panel
		copybtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		copybtn.Position = UDim2.new(0.810389578, 0, 0.222222224, 0)
		copybtn.Size = UDim2.new(0, 59, 0, 25)
		copybtn.Font = Enum.Font.SourceSans
		copybtn.Text = "copy"
		copybtn.TextColor3 = Color3.fromRGB(0, 0, 0)
		copybtn.TextSize = 14.000
		copybtn.MouseButton1Click:Connect(function()
			setclipboard(tostring(info["id"]))
		end)
		anim_panel.Parent.AutomaticCanvasSize = Enum.AutomaticSize.None
		anim_panel.Parent.AutomaticCanvasSize = Enum.AutomaticSize.Y
	end
	return window;
end
local window = ui.init("1.1.0a")
addanim = function(info)
	local type, name, id = info["type"], info["name"], info["id"]
	if anims[type][name] then return end
	anims[type][name] = id
	window.addpanel(info)
end
getanimations = function()
	spawn(function()
		if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
			for i,v in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
				addanim({["type"]="client";["name"]=v.Name;["id"]=v.Animation.AnimationId})
			end
		end
	end) -- getting client animations
	spawn(function()
		if settings.onlyplayers then
			for i,v in pairs(game.Players:GetPlayers()) do
				if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") then
					for x,y in pairs(v.Character.Humanoid:GetPlayingAnimationTracks()) do
						addanim({["type"]="server";["name"]=y.Name;["id"]=y.Animation.AnimationId})
					end
				end
			end
		else
			for i,v in pairs(workspace:GetDescendants()) do
				if v:IsA("Humanoid") or v:IsA("AnimationController") and not game.Players.LocalPlayer:FindFirstChild(v) then
					for x,y in pairs(v:GetPlayingAnimationTracks()) do
						addanim({["type"]="client";["name"]=y.Name;["id"]=y.Animation.AnimationId})
					end
				end
			end
		end
	end) -- getting server animations
end
while wait(.05) do getanimations() end
