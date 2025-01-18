local DiscordLib =
    loadstring(game:HttpGet "https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/discord")()

local win = DiscordLib:Window("PinguHub")

local serv = win:Server("Isle", "http://www.roblox.com/asset/?id=4776156106")

local btns = serv:Channel("Lobby")

btns:Button(
    "Get Collectibles",
    function()
       -- Loop through all descendants of the Collectibles folder in workspace.Map.Ignore
local player = game:GetService("Players").LocalPlayer
for _, object in pairs(workspace.Map.Ignore.Collectibles:GetDescendants()) do
    -- Check if the object has a ClickDetector
    local clickDetector = object:FindFirstChildOfClass("ClickDetector")
    if clickDetector then
        -- Ensure the player's character is loaded before teleporting
        local character = player.Character
        if character then
            local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

            -- Teleport the player to the parent part's CFrame
            local parentPart = clickDetector.Parent
            if parentPart and parentPart:IsA("BasePart") then
                humanoidRootPart.CFrame = parentPart.CFrame
            end
            
            -- Wait for 0.5 seconds before simulating a click
            wait(1)
            
            -- Simulate a click on the ClickDetector
            fireclickdetector(clickDetector)
            
            -- Wait for 0.5 seconds before moving to the next ClickDetector
            wait(0.5)
        end
    end
end
    end
)

btns:Button(
    "Lounge TP",
    function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-802, 116, -3)
    end
)
