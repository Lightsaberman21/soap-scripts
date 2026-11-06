workspace.DetonateButton:Destroy()

local part = Instance.new("Part")
part.Name = "DetonateButton"
part.Size = Vector3.new(7, 1, 4)
part.Position = Vector3.new(35, 5.1, 35)
part.Anchored = true
part.BrickColor = BrickColor.new("Bright Red")
part.Material = Enum.Material.Neon
part.Parent = workspace
print("Button Created")



part.Touched:Connect(function(hit)
	print("Button Clicked!")
	local character = hit.Parent
	if not character then return end

	local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
	if not humanoidRootPart then return end

	local explosion = Instance.new("Explosion")
	explosion.Position = humanoidRootPart.Position
	explosion.BlastRadius = 15
	explosion.BlastPressure = 500000
	explosion.ExplosionType = Enum.ExplosionType.NoCraters
	explosion.Parent = workspace
end)