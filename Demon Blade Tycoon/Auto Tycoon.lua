if not _G.AutoTycoon then _G.AutoTycoon = {} end
if _G.AutoTycoon.Enabled then return end

_G.AutoTycoon.Enabled = true
_G.AutoTycoon.IsRunning = false

_G.AutoTycoon.Type = "Demon"
_G.AutoTycoon.Active = true
_G.AutoTycoon.AutoReset = false

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TweenService = game:GetService("TweenService")
local VirtualUser = game:GetService("VirtualUser")
local Lighting = game:GetService("Lighting")
local Players = game:GetService("Players")

local UIModule = loadstring(game:HttpGet("https://raw.githubusercontent.com/Grenouar/RBX-Scripting/main/Demon%20Blade%20Tycoon/UI.lua", true))()

local Camera = workspace.CurrentCamera

local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")
local TempData = Player:WaitForChild("TempData")

local Functions = {}

Functions.Reset = function()
	ReplicatedStorage.NetworkEvent:FireServer("ResetTycoon")
	
	task.wait(1)
	
	local Character = Player.Character or Player.CharacterAdded:Wait()
	local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
	
	if HumanoidRootPart then
		local TextLabel
		
		for _,Tycoon in ipairs(workspace.Game.Tycoons:GetChildren()) do
			local Essentials = Tycoon:FindFirstChild("Essentials")
			local ClaimPart = Essentials and Essentials:FindFirstChild("ClaimPart")
			
			if ClaimPart and ClaimPart.SurfaceGui.TextLabel.Text == "Claim Tycoon" then
				TextLabel = ClaimPart.SurfaceGui.TextLabel
				
				PlayerGui.Main.TycoonSelect.Visible = false
				
				HumanoidRootPart.CFrame = ClaimPart.CFrame
				
				repeat
					task.wait()
				until PlayerGui.Main.TycoonSelect.Visible
				
				ReplicatedStorage.NetworkEvent:FireServer("SelectTycoonType", _G.AutoTycoon.Type)
				
				PlayerGui.Main.TycoonSelect.Visible = false
				
				break
			end
		end
		
		task.wait(1)
		if TextLabel and TextLabel.Text == "Claim Tycoon" then
			Functions.Reset()
		else
			Functions.Collect()
		end
	else
		task.wait(1/30)

		Functions.Reset()
	end
end

--

Functions.Collect = function()
	task.wait(1/30)
	
	if not _G.AutoTycoon.Active then return end
	
	_G.AutoTycoon.IsRunning = true
	
	local Character = Player.Character or Player.CharacterAdded:Wait()
	local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

	if HumanoidRootPart then
		local Tycoon = Player:FindFirstChild("OwnedTycoon")
		
		if Tycoon then
			local Buttons = Tycoon.Value:WaitForChild("Buttons")
			
			for _,Button in ipairs(Buttons:GetChildren()) do
				local Price = Button:FindFirstChild("Price")
				local Touch = Button:FindFirstChildWhichIsA("BasePart")

				if Price and Touch then
					if Price.Value <= tonumber(TempData.Yen.Value) then
						if HumanoidRootPart then
							HumanoidRootPart.CFrame = Touch.CFrame * CFrame.new(math.random(-(Touch.Size.X/2), Touch.Size.X/2), Touch.Size.Y/2 + 3, math.random(-(Touch.Size.Z/2), Touch.Size.Z/2))
						end
						
						task.wait(1)
						break
					end
				end
				
				task.wait()
			end
			
			if Buttons and Buttons.Parent then
				if #Buttons:GetChildren() > 0 then
					task.wait(1/30)
					
					if _G.AutoTycoon.Active then
						task.defer(function()
							Functions.Collect()
						end)
						
						_G.AutoTycoon.IsRunning = false
						
						return
					end
				else
					if _G.AutoTycoon.AutoReset then
						task.defer(function()
							Functions.Reset()
						end)
						
						_G.AutoTycoon.IsRunning = false
						
						return
					else
						task.wait(1/30)
						
						if _G.AutoTycoon.Active then
							task.defer(function()
								Functions.Collect()
							end)
							
							_G.AutoTycoon.IsRunning = false
							
							return
						end
					end
				end
			else
				task.defer(function()
					Functions.Reset()
				end)
				
				_G.AutoTycoon.IsRunning = false
				
				return
			end
		else
			task.defer(function()
				Functions.Reset()
			end)
			
			_G.AutoTycoon.IsRunning = false
			
			return
		end
	else
		task.wait(1/30)
		
		if _G.AutoTycoon.Active then
			task.defer(function()
				Functions.Collect()
			end)
			
			_G.AutoTycoon.IsRunning = false
			
			return
		end
	end
	
	_G.AutoTycoon.IsRunning = false
end

--

local UI = UIModule()

local Button = PlayerGui.Main.SideMenu.Morph:Clone()
Button.Name = "Cheat"

Button.Label.Image = "rbxassetid://9381397609"

Button.Parent = PlayerGui.Main.SideMenu

local MenuList = {"ShopMenu", "TeleportMenu", "MorphMenu", "SettingsMenu"}

Button.MouseButton1Click:Connect(function()
	for i = 1, #MenuList do
		local Menu = PlayerGui.Main:FindFirstChild(MenuList[i])
		if Menu then
			Menu.Visible = false
		end
	end
	
	UI.Enabled = not UI.Enabled
end)

Button.MouseEnter:Connect(function()
	Button.ImageColor3 = Color3.fromRGB(72, 72, 72)
end)

Button.MouseLeave:Connect(function()
	Button.ImageColor3 = Color3.fromRGB(52, 52, 52)
end)

TweenService:Create(Button.Parent, TweenInfo.new(0.25, Enum.EasingStyle.Sine), {Position = UDim2.new(0.005, 0, 0.475, 0)}):Play()

for _,AnotherButton in ipairs(Button.Parent:GetChildren()) do
	if AnotherButton:IsA("ImageButton") and AnotherButton ~= Button then
		AnotherButton.MouseButton1Click:Connect(function()
			UI.Enabled = false
		end)
	end
end

local BackgroundUI = UI.Background
BackgroundUI.CloseButton.MouseButton1Click:Connect(function()
	UI.Enabled = false
end)

BackgroundUI.Type.MouseButton1Click:Connect(function()
	if _G.AutoTycoon.Type == "Demon" then
		_G.AutoTycoon.Type = "Slayer"
		
		TweenService:Create(BackgroundUI.Type.TextLabel, TweenInfo.new(0.25, Enum.EasingStyle.Sine), {TextColor3 = Color3.fromRGB(29, 131, 255), TextStrokeTransparency = 0.5}):Play()
	else
		_G.AutoTycoon.Type = "Demon"
		
		TweenService:Create(BackgroundUI.Type.TextLabel, TweenInfo.new(0.25, Enum.EasingStyle.Sine), {TextColor3 = Color3.fromRGB(100, 0, 0), TextStrokeTransparency = 0}):Play()
	end
	
	BackgroundUI.Type.TextLabel.Text = _G.AutoTycoon.Type
end)

BackgroundUI.ActiveBot.Toggle.TextButton.MouseButton1Click:Connect(function()
	if _G.AutoTycoon.Active then
		_G.AutoTycoon.Active = false
		
		TweenService:Create(BackgroundUI.ActiveBot.Toggle.TextButton, TweenInfo.new(0.15, Enum.EasingStyle.Sine), {Position = UDim2.new(), BackgroundColor3 = Color3.fromRGB(203, 0, 0)}):Play()
	else
		if not _G.AutoTycoon.IsRunning then
			_G.AutoTycoon.Active = true

			TweenService:Create(BackgroundUI.ActiveBot.Toggle.TextButton, TweenInfo.new(0.15, Enum.EasingStyle.Sine), {Position = UDim2.new(0.5, 0, 0, 0), BackgroundColor3 = Color3.fromRGB(49, 226, 0)}):Play()
			
			Functions.Collect()
		end
	end
end)

BackgroundUI.Preferences.AutoReset.Toggle.TextButton.MouseButton1Click:Connect(function()
	if _G.AutoTycoon.AutoReset then
		TweenService:Create(BackgroundUI.Preferences.AutoReset.Toggle.TextButton, TweenInfo.new(0.15, Enum.EasingStyle.Sine), {Position = UDim2.new(), BackgroundColor3 = Color3.fromRGB(203, 0, 0)}):Play()
	else
		TweenService:Create(BackgroundUI.Preferences.AutoReset.Toggle.TextButton, TweenInfo.new(0.15, Enum.EasingStyle.Sine), {Position = UDim2.new(0.5, 0, 0, 0), BackgroundColor3 = Color3.fromRGB(49, 226, 0)}):Play()
	end

	_G.AutoTycoon.AutoReset = not _G.AutoTycoon.AutoReset
end)

--TweenService:Create(Lighting, TweenInfo.new(0.5, Enum.EasingStyle.Sine), {Ambient = Color3.fromRGB(255, 255, 255), Brightness = 0.5}):Play()

local Sky = Lighting:FindFirstChildWhichIsA("Sky")
if Sky then
	Sky.SunTextureId = "rbxassetid://9382008229"
end

Player.Idled:Connect(function()
	VirtualUser:Button2Down(Vector2.new(), Camera.CFrame)
	
	task.wait(1)
	VirtualUser:Button2Up(Vector2.new(), Camera.CFrame)
end)

Functions.Collect()
