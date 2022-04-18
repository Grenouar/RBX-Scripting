local CoreGui = game:GetService("CoreGui")

return function()
	local AutoTycoon = Instance.new("ScreenGui")
	local Background = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local Title = Instance.new("TextLabel")
	local Shadow = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local ActiveBot = Instance.new("Frame")
	local UICorner_3 = Instance.new("UICorner")
	local TextLabel = Instance.new("TextLabel")
	local Toggle = Instance.new("Frame")
	local UICorner_4 = Instance.new("UICorner")
	local TextButton = Instance.new("TextButton")
	local UICorner_5 = Instance.new("UICorner")
	local Preferences = Instance.new("Frame")
	local AutoReset = Instance.new("Frame")
	local UICorner_6 = Instance.new("UICorner")
	local TextLabel_2 = Instance.new("TextLabel")
	local Toggle_2 = Instance.new("Frame")
	local UICorner_7 = Instance.new("UICorner")
	local TextButton_2 = Instance.new("TextButton")
	local UICorner_8 = Instance.new("UICorner")
	local UIGridLayout = Instance.new("UIGridLayout")
	local LabelType = Instance.new("TextLabel")
	local Type = Instance.new("TextButton")
	local UICorner_9 = Instance.new("UICorner")
	local TextLabel_3 = Instance.new("TextLabel")
	local Line = Instance.new("Frame")
	local UICorner_10 = Instance.new("UICorner")
	local _Version = Instance.new("TextLabel")
	local CloseButton = Instance.new("ImageButton")
	local Credits = Instance.new("TextLabel")
	local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")

	--Properties:

	AutoTycoon.Name = "AutoTycoon"
	AutoTycoon.Parent = CoreGui
	AutoTycoon.Enabled = false
	AutoTycoon.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	AutoTycoon.ResetOnSpawn = false
	AutoTycoon.IgnoreGuiInset = true

	Background.Name = "Background"
	Background.Parent = AutoTycoon
	Background.AnchorPoint = Vector2.new(0.5, 0.5)
	Background.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
	Background.BorderSizePixel = 0
	Background.Position = UDim2.new(0.5, 0, 0.5, 0)
	Background.Size = UDim2.new(0.25, 0, 0.5, 0)
	Background.ZIndex = 2

	UICorner.CornerRadius = UDim.new(0.0500000007, 0)
	UICorner.Parent = Background

	Title.Name = "Title"
	Title.Parent = Background
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.Position = UDim2.new(0, 0, 0.00999999978, 0)
	Title.Size = UDim2.new(1, 0, 0.125, 0)
	Title.Font = Enum.Font.SourceSansBold
	Title.Text = "AFK Mode"
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextScaled = true
	Title.TextSize = 14.000
	Title.TextStrokeTransparency = 0.500
	Title.TextWrapped = true

	Shadow.Name = "Shadow"
	Shadow.Parent = Background
	Shadow.AnchorPoint = Vector2.new(0.5, 1)
	Shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shadow.BackgroundTransparency = 0.900
	Shadow.Position = UDim2.new(0.5, 0, 0.975000024, 0)
	Shadow.Size = UDim2.new(0.949999928, 0, 0.824999988, 0)

	UICorner_2.CornerRadius = UDim.new(0.0500000007, 0)
	UICorner_2.Parent = Shadow

	ActiveBot.Name = "ActiveBot"
	ActiveBot.Parent = Background
	ActiveBot.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
	ActiveBot.Position = UDim2.new(0.051282052, 0, 0.439140797, 0)
	ActiveBot.Size = UDim2.new(0.900284886, 0, 0.100238666, 0)

	UICorner_3.CornerRadius = UDim.new(1, 0)
	UICorner_3.Parent = ActiveBot

	TextLabel.Parent = ActiveBot
	TextLabel.AnchorPoint = Vector2.new(0, 0.5)
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.Position = UDim2.new(0.075000003, 0, 0.5, 0)
	TextLabel.Size = UDim2.new(0.5, 0, 0.699999988, 0)
	TextLabel.Font = Enum.Font.FredokaOne
	TextLabel.Text = "Auto Tycoon"
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 14.000
	TextLabel.TextStrokeTransparency = 0.500
	TextLabel.TextWrapped = true
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left

	Toggle.Name = "Toggle"
	Toggle.Parent = ActiveBot
	Toggle.AnchorPoint = Vector2.new(1, 0.5)
	Toggle.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	Toggle.Position = UDim2.new(0.949999988, 0, 0.5, 0)
	Toggle.Size = UDim2.new(0.349999994, 0, 0.600000024, 0)

	UICorner_4.CornerRadius = UDim.new(1, 0)
	UICorner_4.Parent = Toggle

	TextButton.Parent = Toggle
	TextButton.BackgroundColor3 = Color3.fromRGB(49, 226, 0)
	TextButton.Position = UDim2.new(0.5, 0, 0, 0)
	TextButton.Size = UDim2.new(0.5, 0, 1, 0)
	TextButton.Font = Enum.Font.SourceSans
	TextButton.Text = ""
	TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextButton.TextSize = 14.000

	UICorner_5.CornerRadius = UDim.new(1, 0)
	UICorner_5.Parent = TextButton

	Preferences.Name = "Preferences"
	Preferences.Parent = Background
	Preferences.AnchorPoint = Vector2.new(0.5, 0)
	Preferences.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Preferences.BackgroundTransparency = 1.000
	Preferences.Position = UDim2.new(0.534401715, 0, 0.55447495, 0)
	Preferences.Size = UDim2.new(0.831196487, 0, 0.30011934, 0)

	AutoReset.Name = "AutoReset"
	AutoReset.Parent = Preferences
	AutoReset.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
	AutoReset.Size = UDim2.new(0, 100, 0, 100)

	UICorner_6.CornerRadius = UDim.new(1, 0)
	UICorner_6.Parent = AutoReset

	TextLabel_2.Parent = AutoReset
	TextLabel_2.AnchorPoint = Vector2.new(0, 0.5)
	TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_2.BackgroundTransparency = 1.000
	TextLabel_2.Position = UDim2.new(0.075000003, 0, 0.5, 0)
	TextLabel_2.Size = UDim2.new(0.5, 0, 0.699999988, 0)
	TextLabel_2.Font = Enum.Font.FredokaOne
	TextLabel_2.Text = "Auto Reset"
	TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_2.TextScaled = true
	TextLabel_2.TextSize = 14.000
	TextLabel_2.TextStrokeTransparency = 0.500
	TextLabel_2.TextWrapped = true
	TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left

	Toggle_2.Name = "Toggle"
	Toggle_2.Parent = AutoReset
	Toggle_2.AnchorPoint = Vector2.new(1, 0.5)
	Toggle_2.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	Toggle_2.Position = UDim2.new(0.949999988, 0, 0.5, 0)
	Toggle_2.Size = UDim2.new(0.349999994, 0, 0.600000024, 0)

	UICorner_7.CornerRadius = UDim.new(1, 0)
	UICorner_7.Parent = Toggle_2

	TextButton_2.Parent = Toggle_2
	TextButton_2.BackgroundColor3 = Color3.fromRGB(203, 0, 0)
	TextButton_2.Size = UDim2.new(0.5, 0, 1, 0)
	TextButton_2.Font = Enum.Font.SourceSans
	TextButton_2.Text = ""
	TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextButton_2.TextSize = 14.000

	UICorner_8.CornerRadius = UDim.new(1, 0)
	UICorner_8.Parent = TextButton_2

	UIGridLayout.Parent = Preferences
	UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIGridLayout.CellPadding = UDim2.new(0.0199999996, 0, 0.0399999991, 0)
	UIGridLayout.CellSize = UDim2.new(1, 0, 0.300000012, 0)

	LabelType.Name = "LabelType"
	LabelType.Parent = Background
	LabelType.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LabelType.BackgroundTransparency = 1.000
	LabelType.Position = UDim2.new(0.051, 0, 0.188, 0)
	LabelType.Size = UDim2.new(0.898, 0, 0.06, 0)
	LabelType.Font = Enum.Font.FredokaOne
	LabelType.Text = "Tycoon Type:"
	LabelType.TextColor3 = Color3.fromRGB(255, 255, 255)
	LabelType.TextScaled = true
	LabelType.TextSize = 14.000
	LabelType.TextStrokeTransparency = 0.500
	LabelType.TextWrapped = true
	LabelType.TextXAlignment = Enum.TextXAlignment.Left

	Type.Name = "Type"
	Type.Parent = Background
	Type.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
	Type.Position = UDim2.new(0.050999999, 0, 0.26699999, 0)
	Type.Size = UDim2.new(0.899999976, 0, 0.100000001, 0)
	Type.Font = Enum.Font.SourceSans
	Type.Text = ""
	Type.TextColor3 = Color3.fromRGB(0, 0, 0)
	Type.TextSize = 14.000

	UICorner_9.CornerRadius = UDim.new(1, 0)
	UICorner_9.Parent = Type

	TextLabel_3.Parent = Type
	TextLabel_3.AnchorPoint = Vector2.new(0.5, 0.5)
	TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_3.BackgroundTransparency = 1.000
	TextLabel_3.Position = UDim2.new(0.5, 0, 0.5, 0)
	TextLabel_3.Size = UDim2.new(0.8, 0, 0.8, 0)
	TextLabel_3.Font = Enum.Font.FredokaOne
	TextLabel_3.Text = "Demon"
	TextLabel_3.TextColor3 = Color3.fromRGB(100, 0, 0)
	TextLabel_3.TextScaled = true
	TextLabel_3.TextSize = 14.000
	TextLabel_3.TextStrokeTransparency = 0
	TextLabel_3.TextWrapped = true

	Line.Name = "Line"
	Line.Parent = Background
	Line.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
	Line.Position = UDim2.new(0.051282052, 0, 0.393794745, 0)
	Line.Size = UDim2.new(0.897435904, 0, 0.011933174, 0)

	UICorner_10.CornerRadius = UDim.new(1, 0)
	UICorner_10.Parent = Line

	_Version.Name = "Version"
	_Version.Parent = Background
	_Version.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	_Version.BackgroundTransparency = 1.000
	_Version.Position = UDim2.new(0.0512822233, 0, 0.921241045, 0)
	_Version.Size = UDim2.new(0.897436082, 0, 0.038186159, 0)
	_Version.Font = Enum.Font.FredokaOne
	_Version.Text = "EXPERIMENTAL VERSION"
	_Version.TextColor3 = Color3.fromRGB(255, 255, 255)
	_Version.TextScaled = true
	_Version.TextSize = 14.000
	_Version.TextStrokeTransparency = 0.500
	_Version.TextWrapped = true
	_Version.TextXAlignment = Enum.TextXAlignment.Right

	CloseButton.Name = "CloseButton"
	CloseButton.Parent = Background
	CloseButton.AnchorPoint = Vector2.new(1, 0)
	CloseButton.BackgroundColor3 = Color3.fromRGB(0, 66, 132)
	CloseButton.BackgroundTransparency = 1.000
	CloseButton.Position = UDim2.new(0.980000019, 0, 0.0199999996, 0)
	CloseButton.Size = UDim2.new(0.0700000003, 0, 0.0590000004, 0)
	CloseButton.Image = "rbxassetid://9113933905"

	Credits.Name = "Credits"
	Credits.Parent = Background
	Credits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Credits.BackgroundTransparency = 1.000
	Credits.Position = UDim2.new(0.063, 0, 0.85, 0)
	Credits.Size = UDim2.new(0.897, 0, 0.057, 0)
	Credits.Font = Enum.Font.FredokaOne
	Credits.Text = "Made by Grenouer#0331"
	Credits.TextColor3 = Color3.fromRGB(255, 255, 255)
	Credits.TextScaled = true
	Credits.TextSize = 14.000
	Credits.TextStrokeTransparency = 0.500
	Credits.TextWrapped = true

	UIAspectRatioConstraint.Parent = Background
	UIAspectRatioConstraint.AspectRatio = 0.830

	return AutoTycoon
end