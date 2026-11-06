local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer
local playerGui = localPlayer:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ExplodingButtonGui"
screenGui.ResetOnSpawn = false
screenGui.Enabled = true
screenGui.Parent = playerGui
print("GUI Created!")

local button = Instance.new("TextButton")
button.Name = "ExplodingButton"
button.Size = UDim2.new(0, 120, 0, 40)
button.Position = UDim2.new(0.5, 0, 0.5, 0)
button.AnchorPoint = Vector2.new(0.5,0.5)
button.BackgroundColor3 = Color3.fromRGB(0, 122, 255)
button.BorderSizePixel = 0
button.Text = "Detonate"
