local part = Instance.new("Part")
part.Name = "DetonateButton"
part.Size = Vector3.new(4, 1, 4)
part.Position = Vector3.new(0, 1, 0)
part.Anchored = true
part.BrickColor.new("Bright Red")
part.Parent = workspace

local clickDetector = Instance.new("ClickDetector")
clickDetector.MaxActivationDistance = 32
clickDetector.Parent = part

clickDetector.MouseClick:Connect(function(player)
	print("Button Clicked")

	local character = player.Character
	if not character then return end
	
end)