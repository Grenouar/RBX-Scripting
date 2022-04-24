--// Services \\--

local Players = game:GetService("Players")

-- // Constants \\--

local Player = Players.LocalPlayer
local Mouse = Player:GetMouse()

--// Modules \\--

local UIModule = loadstring(game:HttpGet("https://raw.githubusercontent.com/Grenouar/RBX-Scripting/main/Teleporter/UI.lua", true))()

--// Variáveis \\--

local Position = {X = 0, Y = 0, Z = 0}

local TeleportTo = false

--// Código

local UI = UIModule()

local AlterarPos = function(NewPosition : Vector3)
	Position.X, Position.Y, Position.Z = NewPosition.X, NewPosition.Y, NewPosition.Z

	UI.Fundo.Eixo_X.Text = tostring(math.floor(Position.X + 0.5))
	UI.Fundo.Eixo_Y.Text = tostring(math.floor(Position.Y + 0.5))
	UI.Fundo.Eixo_Z.Text = tostring(math.floor(Position.Z + 0.5))
end

UI.Fundo.CapturarCursor.MouseButton1Click:Connect(function()
	local Move, Button1Down
	
	UI.Fundo.CapturarCursor.Visible = false
	UI.Fundo.Teleporte.Visible = false
	
	AlterarPos(Mouse.Hit.Position)
	
	Move = Mouse.Move:Connect(function()
		if not UI or not UI.Parent then
			Move:Disconnect()
			Button1Down:Disconnect()
			
			return
		end
		
		AlterarPos(Mouse.Hit.Position)
	end)
	
	Button1Down = Mouse.Button1Down:Connect(function()
		Move:Disconnect()
		Button1Down:Disconnect()
		
		if UI and UI.Parent then
			UI.Fundo.CapturarCursor.Visible = true
			UI.Fundo.Teleporte.Visible = true
		end
	end)
end)

UI.Fundo.Teleporte.MouseButton1Click:Connect(function()
	local Character = Player.Character
	local HumanoidRootPart = Character and Character.Parent and Character:IsA("Model") and Character.PrimaryPart
	
	if HumanoidRootPart then
		local FinalPosition = CFrame.new( Vector3.new(Position.X, Position.Y, Position.Z) )
		
		if TeleportTo then
			local _, Size = Character:GetBoundingBox()

			FinalPosition *= CFrame.new(0, Size.Y/2, 0)
		else
			FinalPosition = HumanoidRootPart.CFrame * FinalPosition
		end
		
		HumanoidRootPart.CFrame = FinalPosition
	end
end)

for _,Eixo in ipairs(UI.Fundo:GetChildren()) do
	if Eixo:IsA("TextBox") then
		Eixo.FocusLost:Connect(function()
			local Dir = string.split(Eixo.Name, "_")[2]

			if #Eixo.Text > 0 then
				Position[Dir] = tonumber(Eixo.Text)
			else
				Position[Dir] = 0
			end
		end)
	end
end

UI.Fundo.Fechar.MouseButton1Click:Connect(function()
	UI:Destroy()
end)

local CheckIDs = {
	[true] = "1264515756";
	[false] = "1264513374";
}

UI.Fundo.Checkbox.MouseButton1Click:Connect(function()
	TeleportTo = not TeleportTo
	
	UI.Fundo.Checkbox.Image = "rbxassetid://" .. CheckIDs[TeleportTo]
end)
