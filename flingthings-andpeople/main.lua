local function displayNotification(title, text)
    local notification = Instance.new("ScreenGui")
    notification.Name = "Notification"

    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 300, 0, 150)
    frame.Position = UDim2.new(0.5, -150, 1, -180) -- Adjusted position
    frame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
    frame.BorderSizePixel = 0
    frame.Parent = notification

    local titleLabel = Instance.new("TextLabel")
    titleLabel.Size = UDim2.new(1, 0, 0.4, 0)
    titleLabel.Position = UDim2.new(0, 0, 0, 0)
    titleLabel.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
    titleLabel.BorderSizePixel = 0
    titleLabel.Text = title
    titleLabel.Font = Enum.Font.SourceSansBold
    titleLabel.TextSize = 18
    titleLabel.TextColor3 = Color3.new(1, 1, 1)
    titleLabel.Parent = frame

    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(1, 0, 0.4, 0) -- Adjusted size
    textLabel.Position = UDim2.new(0, 0, 0.4, 0)
    textLabel.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
    textLabel.BorderSizePixel = 0
    textLabel.Text = text
    textLabel.Font = Enum.Font.SourceSans
    textLabel.TextSize = 16
    textLabel.TextColor3 = Color3.new(1, 1, 1)
    textLabel.Parent = frame

    notification.Parent = game.Players.LocalPlayer.PlayerGui

    local okButton = Instance.new("TextButton")
    okButton.Size = UDim2.new(1, 0, 0, 40)
    okButton.Position = UDim2.new(0, 0, 1, -40)
    okButton.BackgroundColor3 = Color3.new(0.2, 0.6, 0.2)
    okButton.BorderSizePixel = 0
    okButton.Text = "OK (R)"
    okButton.Font = Enum.Font.SourceSansBold
    okButton.TextSize = 18
    okButton.TextColor3 = Color3.new(1, 1, 1)
    okButton.MouseButton1Click:Connect(function()
        notification:Destroy()
    end)
    okButton.Parent = frame

    -- Function to handle removal on pressing "R"
    local function removeNotificationOnKeyPress(input)
        if input.KeyCode == Enum.KeyCode.R then
            notification:Destroy()
        end
    end

    game:GetService("UserInputService").InputBegan:Connect(removeNotificationOnKeyPress)
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/BlizTBr/scripts/main/FTAP.lua"))()
displayNotification("Loaded!", "Key: GoroIsVagabundo")
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
