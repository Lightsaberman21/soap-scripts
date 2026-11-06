local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer
local playerGui = localPlayer:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ExplodingButtonGui"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = playerGui

local button = Instance.new("TextButton")
button.Name = "ExplodingButton"
button.Size = UDim2.new(0, 120, 0, 40)
button.Position = UDim2.new(0.5, 0, 0.5, 0)
button.AnchorPoint 