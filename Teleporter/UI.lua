local CoreGui = game:GetService("CoreGui")

return function()
	local Teleporte = Instance.new("ScreenGui")
	local Fundo = Instance.new("Frame")
	local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
	local UICorner = Instance.new("UICorner")
	local CapturarCursor = Instance.new("ImageButton")
	local Checkbox = Instance.new("ImageButton")
	local Eixo_X = Instance.new("TextBox")
	local Eixo_Y = Instance.new("TextBox")
	local Eixo_Z = Instance.new("TextBox")
	local Teleporte_2 = Instance.new("TextButton")
	local UICorner_2 = Instance.new("UICorner")
	local Fechar = Instance.new("TextButton")
	local IR_PARA = Instance.new("TextLabel")
	local X = Instance.new("TextLabel")
	local Y = Instance.new("TextLabel")
	local Z = Instance.new("TextLabel")
	local Header = Instance.new("Frame")
	local Title = Instance.new("TextLabel")

	--Properties:

	Teleporte.Name = "Teleporte"
	Teleporte.Parent = CoreGui
	Teleporte.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	Teleporte.DisplayOrder = -1
	Teleporte.ResetOnSpawn = false
	Teleporte.IgnoreGuiInset = true

	Fundo.Name = "Fundo"
	Fundo.Parent = Teleporte
	Fundo.Active = true
	Fundo.AnchorPoint = Vector2.new(0.5, 0.5)
	Fundo.BackgroundColor3 = Color3.new()
	Fundo.BackgroundTransparency = 0.5
	Fundo.Draggable = true
	Fundo.Position = UDim2.new(0.152, 0, 0.615, 0)
	Fundo.Size = UDim2.new(0.219, 0, 0.231, 0)

	UIAspectRatioConstraint.Parent = Fundo
	UIAspectRatioConstraint.AspectRatio = 1.736

	UICorner.CornerRadius = UDim.new(0.05, 0)
	UICorner.Parent = Fundo

	CapturarCursor.Name = "CapturarCursor"
	CapturarCursor.Parent = Fundo
	CapturarCursor.BackgroundTransparency = 1
	CapturarCursor.BorderSizePixel = 0
	CapturarCursor.Position = UDim2.new(0.861, 0, 0.486, 0)
	CapturarCursor.Size = UDim2.new(0.138, 0, 0.187, 0)
	CapturarCursor.Image = "rbxassetid://4827658474"
	CapturarCursor.ImageRectOffset = Vector2.new(100, 110)
	CapturarCursor.ImageRectSize = Vector2.new(200, 200)
	CapturarCursor.ScaleType = Enum.ScaleType.Fit

	Checkbox.Name = "Checkbox"
	Checkbox.Parent = Fundo
	Checkbox.BackgroundTransparency = 1
	Checkbox.BorderSizePixel = 0
	Checkbox.Position = UDim2.new(0.041, 0, 0.802, 0)
	Checkbox.Size = UDim2.new(0.083, 0, 0.144, 0)
	Checkbox.Image = "rbxassetid://1264513374"

	Eixo_X.Name = "Eixo_X"
	Eixo_X.Parent = Fundo
	Eixo_X.BackgroundColor3 = Color3.new(1, 1, 1)
	Eixo_X.BorderSizePixel = 0
	Eixo_X.Position = UDim2.new(0.138, 0, 0.486, 0)
	Eixo_X.Size = UDim2.new(0.185, 0, 0.192, 0)
	Eixo_X.Font = Enum.Font.TitilliumWeb
	Eixo_X.PlaceholderColor3 = Color3.new()
	Eixo_X.PlaceholderText = "0"
	Eixo_X.Text = ""
	Eixo_X.TextColor3 = Color3.new()
	Eixo_X.TextScaled = true

	Eixo_Y.Name = "Eixo_Y"
	Eixo_Y.Parent = Fundo
	Eixo_Y.BackgroundColor3 = Color3.new(1, 1, 1)
	Eixo_Y.BorderSizePixel = 0
	Eixo_Y.Position = UDim2.new(0.407, 0, 0.485, 0)
	Eixo_Y.Size = UDim2.new(0.185, 0, 0.192, 0)
	Eixo_Y.Font = Enum.Font.TitilliumWeb
	Eixo_Y.PlaceholderColor3 = Color3.new()
	Eixo_Y.PlaceholderText = "0"
	Eixo_Y.Text = ""
	Eixo_Y.TextColor3 = Color3.new()
	Eixo_Y.TextScaled = true

	Eixo_Z.Name = "Eixo_Z"
	Eixo_Z.Parent = Fundo
	Eixo_Z.BackgroundColor3 = Color3.new(1, 1, 1)
	Eixo_Z.BorderSizePixel = 0
	Eixo_Z.Position = UDim2.new(0.67590028, 0, 0.485576928, 0)
	Eixo_Z.Size = UDim2.new(0.185595572, 0, 0.192307696, 0)
	Eixo_Z.Font = Enum.Font.TitilliumWeb
	Eixo_Z.PlaceholderColor3 = Color3.new()
	Eixo_Z.PlaceholderText = "0"
	Eixo_Z.Text = ""
	Eixo_Z.TextColor3 = Color3.new()
	Eixo_Z.TextScaled = true

	Teleporte_2.Name = "Teleporte"
	Teleporte_2.Parent = Fundo
	Teleporte_2.BackgroundColor3 = Color3.new(1, 1, 1)
	Teleporte_2.Position = UDim2.new(0.54, 0, 0.802, 0)
	Teleporte_2.Size = UDim2.new(0.415, 0, 0.144, 0)
	Teleporte_2.Font = Enum.Font.TitilliumWeb
	Teleporte_2.Text = "TELEPORTAR"
	Teleporte_2.TextColor3 = Color3.new()
	Teleporte_2.TextScaled = true

	UICorner_2.CornerRadius = UDim.new(0.1, 0)
	UICorner_2.Parent = Teleporte_2

	Fechar.Name = "Fechar"
	Fechar.Parent = Fundo
	Fechar.BackgroundTransparency = 1
	Fechar.BorderSizePixel = 0
	Fechar.Position = UDim2.new(0.903, 0, 0, 0)
	Fechar.Size = UDim2.new(0.096, 0, 0.168, 0)
	Fechar.ZIndex = 2
	Fechar.Font = Enum.Font.TitilliumWeb
	Fechar.Text = "X"
	Fechar.TextColor3 = Color3.new()
	Fechar.TextScaled = true

	IR_PARA.Name = "IR_PARA"
	IR_PARA.Parent = Fundo
	IR_PARA.BackgroundTransparency = 1
	IR_PARA.BorderSizePixel = 0
	IR_PARA.Position = UDim2.new(0.15, 0, 0.803, 0)
	IR_PARA.Size = UDim2.new(0.346, 0, 0.144, 0)
	IR_PARA.Font = Enum.Font.TitilliumWeb
	IR_PARA.Text = "IR PARA"
	IR_PARA.TextColor3 = Color3.new(1, 1, 1)
	IR_PARA.TextScaled = true
	IR_PARA.TextStrokeTransparency = 0
	IR_PARA.TextXAlignment = Enum.TextXAlignment.Left

	X.Name = "X"
	X.Parent = Fundo
	X.BackgroundTransparency = 1
	X.Position = UDim2.new(0.138, 0, 0.245, 0)
	X.Size = UDim2.new(0.185, 0, 0.24, 0)
	X.Font = Enum.Font.TitilliumWeb
	X.Text = "X"
	X.TextColor3 = Color3.new(1, 1, 1)
	X.TextScaled = true
	X.TextStrokeTransparency = 0

	Y.Name = "Y"
	Y.Parent = Fundo
	Y.BackgroundTransparency = 1
	Y.Position = UDim2.new(0.407, 0, 0.245, 0)
	Y.Size = UDim2.new(0.185, 0, 0.24, 0)
	Y.Font = Enum.Font.TitilliumWeb
	Y.Text = "Y"
	Y.TextColor3 = Color3.new(1, 1, 1)
	Y.TextScaled = true
	Y.TextStrokeTransparency = 0

	Z.Name = "Z"
	Z.Parent = Fundo
	Z.BackgroundTransparency = 1
	Z.Position = UDim2.new(0.675, 0, 0.245, 0)
	Z.Size = UDim2.new(0.185, 0, 0.24, 0)
	Z.Font = Enum.Font.TitilliumWeb
	Z.Text = "Z"
	Z.TextColor3 = Color3.new(1, 1, 1)
	Z.TextScaled = true
	Z.TextStrokeTransparency = 0

	Header.Name = "Cabeçalho"
	Header.Parent = Fundo
	Header.BackgroundColor3 = Color3.new(1, 1, 1)
	Header.BorderSizePixel = 0
	Header.Size = UDim2.new(1, 0, 0.168, 0)

	Title.Name = "Título"
	Title.Parent = Header
	Title.BackgroundTransparency = 1
	Title.BorderSizePixel = 0
	Title.Position = UDim2.new(0.042, 0, 0, 0)
	Title.Size = UDim2.new(0.831, 0, 1, 0)
	Title.Font = Enum.Font.TitilliumWeb
	Title.Text = "TELEPORTE"
	Title.TextColor3 = Color3.new()
	Title.TextScaled = true
	Title.TextXAlignment = Enum.TextXAlignment.Left

	Fundo.Size = UDim2.new()
	Fundo:TweenSize(UDim2.new(0.219, 0, 0.231, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Sine, 0.25, true)
	
	return Teleporte
end
