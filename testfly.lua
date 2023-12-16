for _,v in pairs(game.CoreGui:getDescendants()) do
    if v.Name == "main" then
        v:Destroy()
    end
end
task.wait()
game.StarterGui:SetCore("SendNotification",{
    Title = "Error 09";
    Text = "Error 09";
})
local main = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local up = Instance.new("TextButton")
local down = Instance.new("TextButton")
local onof = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local plus = Instance.new("TextButton")
local speed = Instance.new("TextLabel")
local mine = Instance.new("TextButton")
 
--Properties:
 
main.Name = "main"
main.Parent = game.CoreGui
main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
 
Frame.Parent = main
Frame.BackgroundColor3 = Color3.fromRGB(163, 255, 137)
Frame.BorderColor3 = Color3.fromRGB(103, 221, 213)
Frame.Position = UDim2.new(0.100320168, 0, 0.379746825, 0)
Frame.Size = UDim2.new(0, 190, 0, 57)
 
up.Name = "up"
up.Parent = Frame
up.BackgroundColor3 = Color3.fromRGB(79, 255, 152)
up.Size = UDim2.new(0, 44, 0, 28)
up.Font = Enum.Font.SourceSans
up.Text = "UP"
up.TextColor3 = Color3.fromRGB(0, 0, 0)
up.TextSize = 14.000
 
down.Name = "down"
down.Parent = Frame
down.BackgroundColor3 = Color3.fromRGB(215, 255, 121)
down.Position = UDim2.new(0, 0, 0.491228074, 0)
down.Size = UDim2.new(0, 44, 0, 28)
down.Font = Enum.Font.SourceSans
down.Text = "DOWN"
down.TextColor3 = Color3.fromRGB(0, 0, 0)
down.TextSize = 14.000
 
onof.Name = "onof"
onof.Parent = Frame
onof.BackgroundColor3 = Color3.fromRGB(255, 249, 74)
onof.Position = UDim2.new(0.702823281, 0, 0.491228074, 0)
onof.Size = UDim2.new(0, 56, 0, 28)
onof.Font = Enum.Font.SourceSans
onof.Text = "fly"
onof.TextColor3 = Color3.fromRGB(0, 0, 0)
onof.TextSize = 14.000
 
TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(242, 60, 255)
TextLabel.Position = UDim2.new(0.469327301, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 100, 0, 28)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Deobf by tiktok.com/@idkncc"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true
 
plus.Name = "plus"
plus.Parent = Frame
plus.BackgroundColor3 = Color3.fromRGB(133, 145, 255)
plus.Position = UDim2.new(0.231578946, 0, 0, 0)
plus.Size = UDim2.new(0, 45, 0, 28)
plus.Font = Enum.Font.SourceSans
plus.Text = "+"
plus.TextColor3 = Color3.fromRGB(0, 0, 0)
plus.TextScaled = true
plus.TextSize = 14.000
plus.TextWrapped = true
 
speed.Name = "speed"
speed.Parent = Frame
speed.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
speed.Position = UDim2.new(0.468421042, 0, 0.491228074, 0)
speed.Size = UDim2.new(0, 44, 0, 28)
speed.Font = Enum.Font.SourceSans
speed.Text = "1"
speed.TextColor3 = Color3.fromRGB(0, 0, 0)
speed.TextScaled = true
speed.TextSize = 14.000
speed.TextWrapped = true
 
mine.Name = "mine"
mine.Parent = Frame
mine.BackgroundColor3 = Color3.fromRGB(123, 255, 247)
mine.Position = UDim2.new(0.231578946, 0, 0.491228074, 0)
mine.Size = UDim2.new(0, 45, 0, 29)
mine.Font = Enum.Font.SourceSans
mine.Text = "-"
mine.TextColor3 = Color3.fromRGB(0, 0, 0)
mine.TextScaled = true
mine.TextSize = 14.000
mine.TextWrapped = true
local UserInputService = game:GetService("UserInputService")

local function Direction()
    local touchStartPosition = nil
    local touchEndedPosition = nil

    local function onTouchBegan(input, gameProcessedEvent)
        if not gameProcessedEvent then
            touchStartPosition = input.Position
        end
    end

    local function onTouchChanged(input, gameProcessedEvent)
        if not gameProcessedEvent then
            touchEndedPosition = input.Position
        end
    end

    local function onTouchEnded(input, gameProcessedEvent)
        if not gameProcessedEvent then
            touchEndedPosition = input.Position

            local movementVector = touchEndedPosition - touchStartPosition

            local threshold = 50
            local moveDirection = ""

            if movementVector.Magnitude > threshold then
                local x = math.abs(movementVector.X)
                local y = math.abs(movementVector.Y)

                if x > y then
                    if movementVector.X > 0 then
                        moveDirection = "Right"
                    else
                        moveDirection = "Left"
                    end
                else
                    if movementVector.Y > 0 then
                        moveDirection = "Backward"
                    else
                        moveDirection = "Forward"
                    end
                end
            end

            return moveDirection
        end
    end

    UserInputService.TouchStarted:Connect(onTouchBegan)
    UserInputService.TouchMoved:Connect(onTouchChanged)
    UserInputService.TouchEnded:Connect(onTouchEnded)

    return "NoMovement"
end

local FLYING = false
local speedofthefly = 50
local speedofthevfly = 100
local vfly = false
                local function FLYYY()
                    FLYING = not FLYING
					while not cmdlp or not cmdlp.Character or not cmdlp.Character:FindFirstChild('HumanoidRootPart') or not cmdlp.Character:FindFirstChild('Humanoid') or not cmdm do
							wait()
					end 
					local T = cmdlp.Character.HumanoidRootPart
					local CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
					local lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
					local SPEED = 0
					function FLY()
						local BG = Instance.new('BodyGyro', T)
						local BV = Instance.new('BodyVelocity', T)
						BG.P = 9e4
						BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
						BG.cframe = T.CFrame
						BV.velocity = Vector3.new(0, 0, 0)
						BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
						spawn(function()
							while FLYING do
								if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
									SPEED = 50
								elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
									SPEED = 0
								end
								if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
									BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
									lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
								elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and (CONTROL.Q + CONTROL.E) == 0 and SPEED ~= 0 then
									BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
								else
									BV.velocity = Vector3.new(0, 0, 0)
								end
								BG.cframe = workspace.CurrentCamera.CoordinateFrame
								wait()
							end
							CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
							lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
							SPEED = 0
							BG:destroy()
							BV:destroy()
							cmdlp.Character.Humanoid.PlatformStand = false
						end)
					end
                end
                onof.MouseButton1Click:Connect(FLYYY)
UserInputService.TouchEnded:Connect(function(input, gameProcessedEvent)
    if not gameProcessedEvent then
        local movementDirection = Direction()
        print("Detected movement: " .. movementDirection)

        if movementDirection == "Left" then
            CONTROL.L = speedofthevfly
        elseif movementDirection == "Right" then
            CONTROL.R = speedofthevfly
        elseif movementDirection == "Forward" then
            CONTROL.F = speedofthevfly
        elseif movementDirection == "Backward" then
            CONTROL.B = speedofthevfly
        elseif movementDirection == "NoMovement" then
            CONTROL.L = 0
            CONTROL.B = 0
            CONTROL.R = 0
            CONTROL.L = 0
        end
    end
end)
