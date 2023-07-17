-- Variables
local guiBackgroundColor = Color3.fromRGB(30, 30, 30)
local cornerRadius = UDim.new(0, 10)
local guiSize = UDim2.new(0, 200, 0, 320)

-- Create the GUI
local gui = Instance.new("ScreenGui")
gui.Name = "ScottSight"
gui.ResetOnSpawn = false
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create the main frame
local frame = Instance.new("Frame")
frame.Name = "MainFrame"
frame.Size = guiSize
frame.Position = UDim2.new(0.5, -guiSize.X.Offset / 2, 0.5, -guiSize.Y.Offset / 2)
frame.BackgroundColor3 = guiBackgroundColor
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true
frame.Parent = gui

-- Apply rounded edges
local corner = Instance.new("UICorner")
corner.CornerRadius = cornerRadius
corner.Parent = frame

-- Create the title
local title = Instance.new("TextLabel")
title.Name = "TitleLabel"
title.Size = UDim2.new(1, 0, 0, 30)
title.Position = UDim2.new(0, 0, 0, 0)
title.Text = "In Plain Sight 2 - ScottSight"
title.Font = Enum.Font.SourceSansBold
title.TextSize = 18
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1
title.Parent = frame

-- Create the Walkspeed Spoofer button
local walkspeedButton = Instance.new("TextButton")
walkspeedButton.Name = "WalkspeedButton"
walkspeedButton.Size = UDim2.new(0, 180, 0, 30)
walkspeedButton.Position = UDim2.new(0, 10, 0, 50)
walkspeedButton.Text = "Walkspeed Spoofer"
walkspeedButton.Font = Enum.Font.SourceSansBold
walkspeedButton.TextSize = 14
walkspeedButton.TextColor3 = Color3.fromRGB(255, 255, 255)
walkspeedButton.BackgroundColor3 = guiBackgroundColor
walkspeedButton.BorderColor3 = Color3.fromRGB(255, 0, 0)
walkspeedButton.BorderSizePixel = 1
walkspeedButton.Parent = frame

-- Function to handle the Walkspeed Spoofer button click
walkspeedButton.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/sc0ttferren/robloxscripts/main/in-plain-sight2/walkspeedspoofer.lua'))()
end)

-- Create the ESP toggle button
local espButton = Instance.new("TextButton")
espButton.Name = "ESPButton"
espButton.Size = UDim2.new(0, 180, 0, 30)
espButton.Position = UDim2.new(0, 10, 0, 90)
espButton.Text = "ESP"
espButton.Font = Enum.Font.SourceSansBold
espButton.TextSize = 14
espButton.TextColor3 = Color3.fromRGB(255, 255, 255)
espButton.BackgroundColor3 = guiBackgroundColor
espButton.BorderColor3 = Color3.fromRGB(255, 0, 0)
espButton.BorderSizePixel = 1
espButton.Parent = frame

-- Create the ESP folder
local billboardGuiFolder = Instance.new("Folder")
billboardGuiFolder.Name = "BillboardGuiFolder"
billboardGuiFolder.Parent = frame

-- Function to handle the ESP button click
local isESPEnabled = false

local function toggleESP()
    -- Enable or disable ESP logic here

    isESPEnabled = not isESPEnabled
    espButton.BackgroundColor3 = isESPEnabled and Color3.fromRGB(50, 50, 50) or guiBackgroundColor -- Toggle button color

    if isESPEnabled then
        -- Enable ESP highlighting
        for _, player in ipairs(game.Players:GetPlayers()) do
            if player ~= game.Players.LocalPlayer then
                -- Create billboard GUI for each player
                local billboardGui = Instance.new("BillboardGui")
                billboardGui.Name = player.Name .. "BillboardGui"
                billboardGui.Adornee = player.Character and player.Character.PrimaryPart
                billboardGui.Size = UDim2.new(0, 200, 0, 30) -- Modify the size of the billboard GUI
                billboardGui.StudsOffset = Vector3.new(0, 3, 0)
                billboardGui.AlwaysOnTop = true -- Set AlwaysOnTop property to true
                billboardGui.Parent = billboardGuiFolder

                -- Create text label for player's name
                local nameLabel = Instance.new("TextLabel")
                nameLabel.Name = "NameLabel"
                nameLabel.Size = UDim2.new(1, 0, 1, 0)
                nameLabel.BackgroundTransparency = 1
                nameLabel.Text = player.Name
                nameLabel.Font = Enum.Font.SourceSansBold
                nameLabel.TextSize = 18 -- Modify the size of the nametag
                nameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                nameLabel.TextScaled = true
                nameLabel.Parent = billboardGui
            end
        end
    else
        -- Disable ESP highlighting
        billboardGuiFolder:ClearAllChildren()
    end

end

-- Connect the ESP button click event
espButton.MouseButton1Click:Connect(toggleESP)

-- Create the item esp button cause yeaaaah
local itemespButton = Instance.new("TextButton")
itemespButton.Name = "itemespButton"
itemespButton.Size = UDim2.new(0, 180, 0, 30)
itemespButton.Position = UDim2.new(0, 10, 0, 130)
itemespButton.Text = "Items ESP"
itemespButton.Font = Enum.Font.SourceSansBold
itemespButton.TextSize = 14
itemespButton.TextColor3 = Color3.fromRGB(255, 255, 255)
itemespButton.BackgroundColor3 = guiBackgroundColor
itemespButton.BorderColor3 = Color3.fromRGB(255, 0, 0)
itemespButton.BorderSizePixel = 1
itemespButton.Parent = frame

-- Function to handle the new button click
local function onitemespButtonClick()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/sc0ttferren/robloxscripts/main/in-plain-sight2/itemESP.lua'))()
end

-- Connect the new button click event
itemespButton.MouseButton1Click:Connect(onitemespButtonClick)

-- Footer Text - scott owns this pls credit me
local footerText = Instance.new("TextLabel")
footerText.Name = "FooterText"
footerText.Size = UDim2.new(1, 0, 0, 20)
footerText.Position = UDim2.new(0, 0, 1, -20)
footerText.Text = "Made by ScottScripts | scottlol#9971"
footerText.Font = Enum.Font.SourceSansBold
footerText.TextSize = 14
footerText.TextColor3 = Color3.fromRGB(255, 255, 255)
footerText.BackgroundTransparency = 1
footerText.TextTransparency = 0.9
footerText.Parent = frame

-- Create the close button
local closeButton = Instance.new("TextButton")
closeButton.Name = "CloseButton"
closeButton.Size = UDim2.new(0, 20, 0, 20)
closeButton.Position = UDim2.new(1, -25, 0, 5)
closeButton.Text = "X"
closeButton.Font = Enum.Font.SourceSansBold
closeButton.TextSize = 14
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.BackgroundColor3 = guiBackgroundColor
closeButton.BorderColor3 = Color3.fromRGB(255, 0, 0)
closeButton.BorderSizePixel = 1
closeButton.Parent = frame

-- Function to handle the close button click
local function onCloseButtonClick()
    gui:Destroy()
end

-- Connect the close button click event
closeButton.MouseButton1Click:Connect(onCloseButtonClick)

-- ...
