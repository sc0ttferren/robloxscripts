-- This script will stop recieving any attention on version 3.0

local Player = game:GetService("Players").LocalPlayer
local isRunning = false
local walkSpeedValue = 16
local isAlive = true
local versionNumber = "1.5"

local function setWalkSpeed(value)
    walkSpeedValue = value
    Player.Character.Humanoid.WalkSpeed = value
end

local function onCharacterAdded(character)
    Player.Character.Humanoid.Died:Connect(function()
        isAlive = false
        onResetButtonClick()
    end)
end

Player.CharacterAdded:Connect(onCharacterAdded)
if Player.Character then
    onCharacterAdded(Player.Character)
end

local gui = Instance.new("ScreenGui")
gui.Name = "WalkSpeedGUI"
gui.ResetOnSpawn = false
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Name = "MainFrame"
frame.Size = UDim2.new(0, 200, 0, 160)
frame.Position = UDim2.new(0.5, -100, 0.5, -80)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true 
frame.Parent = gui

local cornerRadius = UDim.new(0, 10)
local corner = Instance.new("UICorner")
corner.CornerRadius = cornerRadius
corner.Parent = frame

local versionLabel = Instance.new("TextLabel")
versionLabel.Name = "VersionLabel"
versionLabel.Size = UDim2.new(0, 50, 0, 20)
versionLabel.Position = UDim2.new(0, 5, 0, 5)
versionLabel.Text = "Version: " .. versionNumber
versionLabel.Font = Enum.Font.SourceSans
versionLabel.TextSize = 12
versionLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
versionLabel.BackgroundTransparency = 1
versionLabel.Parent = frame

local title = Instance.new("TextLabel")
title.Name = "TitleLabel"
title.Size = UDim2.new(1, 0, 0, 30)
title.Position = UDim2.new(0, 0, 0, 0)
title.Text = "WalkSpeed Spoofer"
title.Font = Enum.Font.SourceSansBold
title.TextSize = 16
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
title.BorderSizePixel = 0
title.Parent = frame

local inputLabel = Instance.new("TextLabel")
inputLabel.Name = "InputLabel"
inputLabel.Size = UDim2.new(0.5, -10, 0, 20)
inputLabel.Position = UDim2.new(0, 5, 0, 40)
inputLabel.Text = "Speed:"
inputLabel.Font = Enum.Font.SourceSans
inputLabel.TextSize = 14
inputLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
inputLabel.BackgroundTransparency = 1
inputLabel.Parent = frame

local speedTextBox = Instance.new("TextBox")
speedTextBox.Name = "SpeedTextBox"
speedTextBox.Size = UDim2.new(0.5, -10, 0, 20)
speedTextBox.Position = UDim2.new(0.5, 5, 0, 40)
speedTextBox.Text = tostring(walkSpeedValue)
speedTextBox.Font = Enum.Font.SourceSans
speedTextBox.TextSize = 14
speedTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
speedTextBox.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
speedTextBox.BorderSizePixel = 0
speedTextBox.Parent = frame

local startButton = Instance.new("TextButton")
startButton.Name = "StartButton"
startButton.Size = UDim2.new(0.5, -10, 0, 30)
startButton.Position = UDim2.new(0, 5, 0, 90)
startButton.Text = "Spoof it!"
startButton.Font = Enum.Font.SourceSansBold
startButton.TextSize = 14
startButton.TextColor3 = Color3.fromRGB(255, 255, 255)
startButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
startButton.BorderColor3 = Color3.fromRGB(255, 0, 0)
startButton.BorderSizePixel = 1
startButton.Parent = frame

local resetButton = Instance.new("TextButton")
resetButton.Name = "ResetButton"
resetButton.Size = UDim2.new(0.5, -10, 0, 30)
resetButton.Position = UDim2.new(0.5, 5, 0, 90)
resetButton.Text = "Reset"
resetButton.Font = Enum.Font.SourceSansBold
resetButton.TextSize = 14
resetButton.TextColor3 = Color3.fromRGB(255, 255, 255)
resetButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
resetButton.BorderColor3 = Color3.fromRGB(255, 0, 0)
resetButton.BorderSizePixel = 1
resetButton.Parent = frame

local closeButton = Instance.new("TextButton")
closeButton.Name = "CloseButton"
closeButton.Size = UDim2.new(0, 20, 0, 20)
closeButton.Position = UDim2.new(1, -25, 0, 5)
closeButton.Text = "X"
closeButton.Font = Enum.Font.SourceSansBold
closeButton.TextSize = 14
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
closeButton.BorderColor3 = Color3.fromRGB(255, 0, 0)
closeButton.BorderSizePixel = 1
closeButton.Parent = frame

local notificationGui = Instance.new("ScreenGui")
notificationGui.Name = "NotificationGUI"
notificationGui.Parent = gui

local notificationFrame = Instance.new("Frame")
notificationFrame.Name = "NotificationFrame"
notificationFrame.Size = UDim2.new(0, 200, 0, 100)
notificationFrame.Position = UDim2.new(0.5, -100, 0.5, -50)
notificationFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
notificationFrame.BorderSizePixel = 0
notificationFrame.Active = true 
notificationFrame.Draggable = true 
notificationFrame.Visible = false
notificationFrame.Parent = notificationGui

local notificationLabel = Instance.new("TextLabel")
notificationLabel.Name = "NotificationLabel"
notificationLabel.Size = UDim2.new(1, 0, 0, 70)
notificationLabel.Position = UDim2.new(0, 0, 0, 0)
notificationLabel.Text = "Close This Script?"
notificationLabel.Font = Enum.Font.SourceSansBold
notificationLabel.TextSize = 18
notificationLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
notificationLabel.BackgroundTransparency = 1
notificationLabel.Parent = notificationFrame

local yesButton = Instance.new("TextButton")
yesButton.Name = "YesButton"
yesButton.Size = UDim2.new(0.5, -5, 0, 30)
yesButton.Position = UDim2.new(0, 5, 0, 70)
yesButton.Text = "Yes"
yesButton.Font = Enum.Font.SourceSansBold
yesButton.TextSize = 14
yesButton.TextColor3 = Color3.fromRGB(255, 255, 255)
yesButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
yesButton.BorderColor3 = Color3.fromRGB(255, 0, 0)
yesButton.BorderSizePixel = 1
yesButton.Parent = notificationFrame

local noButton = Instance.new("TextButton")
noButton.Name = "NoButton"
noButton.Size = UDim2.new(0.5, -5, 0, 30)
noButton.Position = UDim2.new(0.5, 5, 0, 70)
noButton.Text = "No"
noButton.Font = Enum.Font.SourceSansBold
noButton.TextSize = 14
noButton.TextColor3 = Color3.fromRGB(255, 255, 255)
noButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
noButton.BorderColor3 = Color3.fromRGB(255, 0, 0)
noButton.BorderSizePixel = 1
noButton.Parent = notificationFrame

local function onStartButtonClick()
    if isRunning then
        return
    end
    
    local speed = tonumber(speedTextBox.Text)
    if speed then
        isRunning = true
        while isRunning do
            setWalkSpeed(speed)
            wait()
        end
    else
        print("Invalid speed input!")
    end
end

local function onResetButtonClick()
    setWalkSpeed(16)
    isRunning = false
end

local function onCloseButtonClick()
    notificationFrame.Visible = true
end

local function onYesButtonClick()
    onResetButtonClick()n
    gui:Destroy() 
    notificationGui:Destroy() 
end

local function onNoButtonClick()
    notificationFrame.Visible = false
end

startButton.MouseButton1Click:Connect(onStartButtonClick)
resetButton.MouseButton1Click:Connect(onResetButtonClick)
closeButton.MouseButton1Click:Connect(onCloseButtonClick)
yesButton.MouseButton1Click:Connect(onYesButtonClick)
noButton.MouseButton1Click:Connect(onNoButtonClick)
