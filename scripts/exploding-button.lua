local Players = game:GetService("Players")

local function onPlayerAdded(player)
	
end

local playerGui = localPlayer:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ExplodingButtonGui"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = playerGui

local button = Instance.new("TextButton")
button.Name = "ExplodingButton"
button.Size = UDim2.new(0, 120, 0, 40)
button.Position = UDim2.new(0.5, 0, 0.5, 0)
button.AnchorPoint = Vector2.new(0.5, 0.5)
button.BackgroundColor3 = Color3.fromRGB(0, 122, 255)
button.BorderSizePixel = 0

button.text = "Detonate"
button.TextColor = Color3.fromRGB(255, 0, 0)
button.TextSize = 16
button.Font = Enum.Font.SorceSansBold

button.Parent = screenGui

button.MouseButton1Click:Connect(function(player)
	local character = player.Character
	if not character then return end

	local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
	if not humanoidRootPart then return end

	local explosion = Instance.new("Explosion")

	explosion.Position = humanoidRootPart.Position
	explosion.BlastRadius = 15
	explosion.BlastPressure = 500000
	explosion.Parent = workspace
end)