

local character11 = workspace:WaitForChild("Lux Life")
local bodyColors = character11:FindFirstChildOfClass("BodyColors")
if not bodyColors then
	bodyColors = Instance.new("BodyColors")
	bodyColors.Parent = character
end
local shirtColor = Color3.new(0,0,196)
local bodyColor = Color3.new(0,0,255)
local pantColor = Color3.new(0,0,122)
local headColor = Color3.new(255,255,255)
bodyColors.HeadColor3 = headColor
bodyColors.LeftArmColor3 = bodyColor
bodyColors.RightArmColor3 = bodyColor
bodyColors.LeftLegColor3 = pantColor
bodyColors.RightLegColor3 = pantColor
bodyColors.TorsoColor3 = shirtColor
local part = Instance.new("Part")
part.Name = "DetonateButton"
part.Size = Vector3.new(7, 1, 4)
part.Position = Vector3.new(25, 5.1, 30)
part.Anchored = true
part.BrickColor = BrickColor.Red()
part.Material = Enum.Material.Neon
part.Parent = workspace
local SGui = Instance.new("SurfaceGui")
SGui.Parent = part
SGui.Face = Enum.NormalId.Top
local textLabel = Instance.new("TextLabel")
textLabel.Text = "DO NOT TOUCH"
textLabel.Size = UDim2.new(1,0,1,0)
textLabel.TextScaled = true
textLabel.BackgroundTransparency = 1
textLabel.Parent = SGui
print("Button Created")



part.Touched:Connect(function(hit)
	print("Button Clicked!")
	local character = hit.Parent
	if not character then return end

	local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
	if not humanoidRootPart then return end

	textLabel.Text = "I warned you..."
	wait(4)

	local explosion = Instance.new("Explosion")
	explosion.Position = humanoidRootPart.Position
	explosion.BlastRadius = 15
	explosion.BlastPressure = 500000
	explosion.ExplosionType = Enum.ExplosionType.NoCraters
	explosion.Parent = workspace
	wait(0.5)
	explosion:Destroy()
	wait(0.5)
	textLabel.Text = "DO NOT TOUCH"
end)