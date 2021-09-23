--[[ Configurações ]]--

local Distance = 100

-------------------------------------------------------------------------------------------------

--[[ Ignore ]]--

if not _G.Exploit then _G.Exploit = {} end
_G.Exploit.Activated = true
_G.Exploit.Distance = tonumber(Distance)

--------------------------------------------------

--[[ Código ]]--

local RunService = game:GetService("RunService")
local Teams = game:GetService("Teams")
local Players = game:GetService("Players")

local Player = Players.LocalPlayer

local Tracer = {}
function Tracer:Create()
	local Character = Player.Character or Player.CharacterAdded:Wait()
	local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

	local Target = {}
	
	for _,Enemy in pairs(Players:GetPlayers()) do
		if Enemy ~= Player then
			if #Teams:GetChildren() > 0 then
				if Enemy.Team ~= Player.Team then
					table.insert(Target, Enemy)
				end
			else
				table.insert(Target, Enemy)
			end

			Enemy:GetPropertyChangedSignal("Team"):Connect(function()
				Tracer:Delete(Enemy.Name)
			end)

			for _,Enemy in ipairs(Target) do
				local EnemyCharacter = Enemy.Character or Enemy.CharacterAdded:Wait()
				local EnemyRootPart = EnemyCharacter:FindFirstChild("HumanoidRootPart")

				if HumanoidRootPart and EnemyRootPart then
					if (HumanoidRootPart.Position - EnemyRootPart.Position).Magnitude <= _G.Exploit.Distance then
						local Attachment0 = HumanoidRootPart:FindFirstChild("Tracer_Attachment")
						if not Attachment0 then
							Attachment0 = Instance.new("Attachment")
							Attachment0.Name = "Tracer_Attachment"

							Attachment0.Parent = HumanoidRootPart
						end

						local Attachment1 = EnemyRootPart:FindFirstChild("Tracer_Attachment")
						if not Attachment1 then
							Attachment1 = Instance.new("Attachment")
							Attachment1.Name = "Tracer_Attachment"

							Attachment1.Parent = EnemyRootPart
						end

						local Beam = EnemyRootPart:FindFirstChild("Tracer_Beam")
						if not Beam then
							Beam = Instance.new("Beam")
							Beam.Name = "Tracer_Beam"

							Beam.LightEmission = 1
							Beam.LightInfluence = 0

							Beam.Width0 = 0.25
							Beam.Width1 = 0.25

							Beam.FaceCamera = true

							Beam.Color = ColorSequence.new{
								ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),
								ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0))
							}

							Beam.Parent = EnemyRootPart
						end

						if not (Beam.Attachment0 == Attachment0) then
							Beam.Attachment0 = Attachment0
						end

						if not (Beam.Attachment1 == Attachment1) then
							Beam.Attachment1 = Attachment1
						end
					else
						Tracer:Delete(Enemy.Name)
					end
				end
				
				task.wait()
			end
		end

		task.wait()
	end
end

function Tracer:Delete(Target)
	local function CleanTarget(Target)
		local TargetCharacter = Target.Character or Target.CharacterAdded:Wait()
		local TargetRootPart = TargetCharacter:FindFirstChild("HumanoidRootPart")

		local Attachment = TargetRootPart:FindFirstChild("Tracer_Attachment")
		if Attachment then Attachment:Destroy() end

		local Beam = TargetRootPart:FindFirstChild("Tracer_Beam")
		if Beam then Beam:Destroy() end
	end

	if not Target then
		for _, Target in pairs(Players:GetPlayers()) do
			CleanTarget(Target)

			task.wait()
		end
	else
		Target = Players:FindFirstChild(Target)
		if Target then
			CleanTarget(Target)
		end
	end
end

_G.Tracer = Tracer

Player:GetPropertyChangedSignal("Team"):Connect(function()
	Tracer:Delete()
end)

RunService.Heartbeat:Connect(function()
	if _G.Exploit.Activated then
		Tracer:Create()
	end
end)
