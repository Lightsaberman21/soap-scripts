local part = Instance.new("Part")
part.Name = "DetonateButton"
part.Size = Vector3.new(7, 1, 4)
part.Position = Vector3.new(5, 0, 5)
part.Anchored = true
part.BrickColor = BrickColor.new("Bright Red")
part.Material = Enum.Material.Neon
part.Parent = workspace


local clickDetector = Instance.new("ClickDetector")
clickDetector.MaxActivationDistance = 32
clickDetector.Parent = part

clickDetector.MouseClick:Connect(function(player)
	print("Button Clicked")

	local character = player.Character
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