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
	local Donations = Instance.new("Frame")
	local UICorner_11 = Instance.new("UICorner")
	local Title_2 = Instance.new("TextLabel")
	local Prices = Instance.new("Frame")
	local UICorner_12 = Instance.new("UICorner")
	local UIListLayout = Instance.new("UIListLayout")
	local UIPadding = Instance.new("UIPadding")
	local _5 = Instance.new("TextButton")
	local UICorner_13 = Instance.new("UICorner")
	local TextLabel_4 = Instance.new("TextLabel")
	local _50 = Instance.new("TextButton")
	local UICorner_14 = Instance.new("UICorner")
	local TextLabel_5 = Instance.new("TextLabel")
	local _100 = Instance.new("TextButton")
	local UICorner_15 = Instance.new("UICorner")
	local TextLabel_6 = Instance.new("TextLabel")
	local _500 = Instance.new("TextButton")
	local UICorner_16 = Instance.new("UICorner")
	local TextLabel_7 = Instance.new("TextLabel")
	local _1000 = Instance.new("TextButton")
	local UICorner_17 = Instance.new("UICorner")
	local TextLabel_8 = Instance.new("TextLabel")
	local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")

	--Properties:

	AutoTycoon.Name = "AutoTycoon"
	AutoTycoon.Parent = CoreGui
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
	LabelType.Position = UDim2.new(0.050999999, 0, 0.187999994, 0)
	LabelType.Size = UDim2.new(0.897717953, 0, 0.0596658699, 0)
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
	TextLabel_3.Size = UDim2.new(0.800000012, 0, 0.800000012, 0)
	TextLabel_3.Font = Enum.Font.FredokaOne
	TextLabel_3.Text = "Demon"
	TextLabel_3.TextColor3 = Color3.fromRGB(100, 0, 0)
	TextLabel_3.TextScaled = true
	TextLabel_3.TextSize = 14.000
	TextLabel_3.TextStrokeTransparency = 0.000
	TextLabel_3.TextWrapped = true

	Line.Name = "Line"
	Line.Parent = Background
	Line.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
	Line.Position = UDim2.new(0.051282052, 0, 0.393794745, 0)
	Line.Size = UDim2.new(0.897435904, 0, 0.011933174, 0)

	UICorner_10.CornerRadius = UDim.new(1, 0)
	UICorner_10.Parent = Line

	_Version.Name = "_Version"
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
	Credits.Position = UDim2.new(0.0626782328, 0, 0.850319326, 0)
	Credits.Size = UDim2.new(0.897436023, 0, 0.0566018708, 0)
	Credits.Font = Enum.Font.FredokaOne
	Credits.Text = "Made by Grenouer#0331"
	Credits.TextColor3 = Color3.fromRGB(255, 255, 255)
	Credits.TextScaled = true
	Credits.TextSize = 14.000
	Credits.TextStrokeTransparency = 0.500
	Credits.TextWrapped = true

	UIAspectRatioConstraint.Parent = Background
	UIAspectRatioConstraint.AspectRatio = 0.830

	Donations.Name = "Donations"
	Donations.Parent = Background
	Donations.AnchorPoint = Vector2.new(0.5, 0.5)
	Donations.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
	Donations.Position = UDim2.new(1.47463477, 0, 0.625277162, 0)
	Donations.Size = UDim2.new(0.886918008, 0, 0.74872756, 0)

	UICorner_11.CornerRadius = UDim.new(0.0500000007, 0)
	UICorner_11.Parent = Donations

	Title_2.Name = "Title"
	Title_2.Parent = Donations
	Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title_2.BackgroundTransparency = 1.000
	Title_2.Position = UDim2.new(0, 0, 0.0149999997, 0)
	Title_2.Size = UDim2.new(1, 0, 0.135207459, 0)
	Title_2.Font = Enum.Font.SourceSansBold
	Title_2.Text = "Donations"
	Title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title_2.TextScaled = true
	Title_2.TextSize = 14.000
	Title_2.TextStrokeTransparency = 0.500
	Title_2.TextWrapped = true

	Prices.Name = "Prices"
	Prices.Parent = Donations
	Prices.AnchorPoint = Vector2.new(0.5, 0.5)
	Prices.BackgroundColor3 = Color3.fromRGB(71, 71, 71)
	Prices.Position = UDim2.new(0.498194933, 0, 0.565217376, 0)
	Prices.Size = UDim2.new(0.935018063, 0, 0.81422925, 0)

	UICorner_12.CornerRadius = UDim.new(0.0500000007, 0)
	UICorner_12.Parent = Prices

	UIListLayout.Parent = Prices
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0.0299999993, 0)

	UIPadding.Parent = Prices
	UIPadding.PaddingTop = UDim.new(0.0299999993, 0)

	_5.Name = "_5"
	_5.Parent = Prices
	_5.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
	_5.LayoutOrder = 5
	_5.Size = UDim2.new(0.949806929, 0, 0.169902906, 0)
	_5.Font = Enum.Font.SourceSans
	_5.Text = ""
	_5.TextColor3 = Color3.fromRGB(0, 0, 0)
	_5.TextSize = 14.000

	UICorner_13.CornerRadius = UDim.new(1, 0)
	UICorner_13.Parent = _5

	TextLabel_4.Parent = _5
	TextLabel_4.AnchorPoint = Vector2.new(0.5, 0.5)
	TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_4.BackgroundTransparency = 1.000
	TextLabel_4.Position = UDim2.new(0.5, 0, 0.5, 0)
	TextLabel_4.Size = UDim2.new(0.800000012, 0, 0.800000012, 0)
	TextLabel_4.Font = Enum.Font.FredokaOne
	TextLabel_4.Text = "5 Robux"
	TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_4.TextScaled = true
	TextLabel_4.TextSize = 14.000
	TextLabel_4.TextStrokeTransparency = 0.500
	TextLabel_4.TextWrapped = true

	_50.Name = "_50"
	_50.Parent = Prices
	_50.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
	_50.LayoutOrder = 50
	_50.Size = UDim2.new(0.949806929, 0, 0.169902906, 0)
	_50.Font = Enum.Font.SourceSans
	_50.Text = ""
	_50.TextColor3 = Color3.fromRGB(0, 0, 0)
	_50.TextSize = 14.000

	UICorner_14.CornerRadius = UDim.new(1, 0)
	UICorner_14.Parent = _50

	TextLabel_5.Parent = _50
	TextLabel_5.AnchorPoint = Vector2.new(0.5, 0.5)
	TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_5.BackgroundTransparency = 1.000
	TextLabel_5.Position = UDim2.new(0.5, 0, 0.5, 0)
	TextLabel_5.Size = UDim2.new(0.800000012, 0, 0.800000012, 0)
	TextLabel_5.Font = Enum.Font.FredokaOne
	TextLabel_5.Text = "50 Robux"
	TextLabel_5.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_5.TextScaled = true
	TextLabel_5.TextSize = 14.000
	TextLabel_5.TextStrokeTransparency = 0.500
	TextLabel_5.TextWrapped = true

	_100.Name = "_100"
	_100.Parent = Prices
	_100.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
	_100.LayoutOrder = 100
	_100.Size = UDim2.new(0.949806929, 0, 0.169902906, 0)
	_100.Font = Enum.Font.SourceSans
	_100.Text = ""
	_100.TextColor3 = Color3.fromRGB(0, 0, 0)
	_100.TextSize = 14.000

	UICorner_15.CornerRadius = UDim.new(1, 0)
	UICorner_15.Parent = _100

	TextLabel_6.Parent = _100
	TextLabel_6.AnchorPoint = Vector2.new(0.5, 0.5)
	TextLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_6.BackgroundTransparency = 1.000
	TextLabel_6.Position = UDim2.new(0.5, 0, 0.5, 0)
	TextLabel_6.Size = UDim2.new(0.800000012, 0, 0.800000012, 0)
	TextLabel_6.Font = Enum.Font.FredokaOne
	TextLabel_6.Text = "100 Robux"
	TextLabel_6.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_6.TextScaled = true
	TextLabel_6.TextSize = 14.000
	TextLabel_6.TextStrokeTransparency = 0.500
	TextLabel_6.TextWrapped = true

	_500.Name = "_500"
	_500.Parent = Prices
	_500.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
	_500.LayoutOrder = 500
	_500.Size = UDim2.new(0.949806929, 0, 0.169902906, 0)
	_500.Font = Enum.Font.SourceSans
	_500.Text = ""
	_500.TextColor3 = Color3.fromRGB(0, 0, 0)
	_500.TextSize = 14.000

	UICorner_16.CornerRadius = UDim.new(1, 0)
	UICorner_16.Parent = _500

	TextLabel_7.Parent = _500
	TextLabel_7.AnchorPoint = Vector2.new(0.5, 0.5)
	TextLabel_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_7.BackgroundTransparency = 1.000
	TextLabel_7.Position = UDim2.new(0.5, 0, 0.5, 0)
	TextLabel_7.Size = UDim2.new(0.800000012, 0, 0.800000012, 0)
	TextLabel_7.Font = Enum.Font.FredokaOne
	TextLabel_7.Text = "500 Robux"
	TextLabel_7.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_7.TextScaled = true
	TextLabel_7.TextSize = 14.000
	TextLabel_7.TextStrokeTransparency = 0.500
	TextLabel_7.TextWrapped = true

	_1000.Name = "_1000"
	_1000.Parent = Prices
	_1000.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
	_1000.LayoutOrder = 1000
	_1000.Size = UDim2.new(0.949806929, 0, 0.169902906, 0)
	_1000.Font = Enum.Font.SourceSans
	_1000.Text = ""
	_1000.TextColor3 = Color3.fromRGB(0, 0, 0)
	_1000.TextSize = 14.000

	UICorner_17.CornerRadius = UDim.new(1, 0)
	UICorner_17.Parent = _1000

	TextLabel_8.Parent = _1000
	TextLabel_8.AnchorPoint = Vector2.new(0.5, 0.5)
	TextLabel_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_8.BackgroundTransparency = 1.000
	TextLabel_8.Position = UDim2.new(0.5, 0, 0.5, 0)
	TextLabel_8.Size = UDim2.new(0.800000012, 0, 0.800000012, 0)
	TextLabel_8.Font = Enum.Font.FredokaOne
	TextLabel_8.Text = "1000 Robux"
	TextLabel_8.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_8.TextScaled = true
	TextLabel_8.TextSize = 14.000
	TextLabel_8.TextStrokeTransparency = 0.500
	TextLabel_8.TextWrapped = true

	UIAspectRatioConstraint_2.Parent = Donations
	UIAspectRatioConstraint_2.AspectRatio = 0.983
	
	return AutoTycoon
end
