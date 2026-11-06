local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer
local playerGui = localPlayer:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ExplodingButtonGui"
screenGui.ResetOnSpawn = false
screenGui.Enabled = true
screenGui.Parent = playerGui
print("GUI Created!")