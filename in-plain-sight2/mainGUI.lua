-- List of blacklisted usernames
local blacklistUsernames = {
    "KonixxKade",
    "Hydrogen",
    -- END OF THE USERNAMES FOR NOW
}

-- Check if the player is blacklisted
local isBlacklisted = false
local localPlayerName = game.Players.LocalPlayer.Name

for _, username in ipairs(blacklistUsernames) do
    if localPlayerName == username then
        isBlacklisted = true
        break
    end
end

if isBlacklisted then
    local blacklistGui = Instance.new("ScreenGui")
    blacklistGui.Name = "BlacklistGui"
    blacklistGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    local blacklistFrame = Instance.new("Frame")
    blacklistFrame.Name = "BlacklistFrame"
    blacklistFrame.Size = UDim2.new(0, 250, 0, 100)
    blacklistFrame.Position = UDim2.new(0.5, -125, 0.5, -50)
    blacklistFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    blacklistFrame.BorderSizePixel = 0
    blacklistFrame.Active = true
    blacklistFrame.Draggable = true
    blacklistFrame.Parent = blacklistGui

    local blacklistTitle = Instance.new("TextLabel")
    blacklistTitle.Name = "TitleLabel"
    blacklistTitle.Size = UDim2.new(1, 0, 0, 30)
    blacklistTitle.Position = UDim2.new(0, 0, 0, 0)
    blacklistTitle.Text = "You Have Been Blacklisted"
    blacklistTitle.Font = Enum.Font.SourceSansBold
    blacklistTitle.TextSize = 15
    blacklistTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
    blacklistTitle.BackgroundTransparency = 1
    blacklistTitle.Parent = blacklistFrame

    local blacklistReason = Instance.new("TextLabel")
    blacklistReason.Name = "ReasonLabel"
    blacklistReason.Size = UDim2.new(1, 0, 0, 40)
    blacklistReason.Position = UDim2.new(0, 0, 0, 30)
    blacklistReason.Text = "Breaking the rules in our Discord server."
    blacklistReason.Font = Enum.Font.SourceSans
    blacklistReason.TextSize = 16
    blacklistReason.TextColor3 = Color3.fromRGB(255, 255, 255)
    blacklistReason.BackgroundTransparency = 1
    blacklistReason.Parent = blacklistFrame

    local closeButton1 = Instance.new("TextButton")
    closeButton1.Name = "closeButton1"
    closeButton1.Size = UDim2.new(0, 20, 0, 20)
    closeButton1.Position = UDim2.new(1, -25, 0, 5)
    closeButton1.Text = "X"
    closeButton1.Font = Enum.Font.SourceSansBold
    closeButton1.TextSize = 14
    closeButton1.TextColor3 = Color3.fromRGB(255, 255, 255)
    closeButton1.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    closeButton1.BorderSizePixel = 0
    closeButton1.Parent = blacklistFrame

    local function oncloseButton1Click()
        blacklistGui:Destroy()
    end

    closeButton1.MouseButton1Click:Connect(oncloseButton1Click)

else
    
local guiBackgroundColor = Color3.fromRGB(30, 30, 30)
local cornerRadius = UDim.new(0, 10)
local guiSize = UDim2.new(0, 200, 0, 320)

local gui = Instance.new("ScreenGui")
gui.Name = "ScottSight"
gui.ResetOnSpawn = false
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Name = "MainFrame"
frame.Size = guiSize
frame.Position = UDim2.new(0.5, -guiSize.X.Offset / 2, 0.5, -guiSize.Y.Offset / 2)
frame.BackgroundColor3 = guiBackgroundColor
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true
frame.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = cornerRadius
corner.Parent = frame

local title = Instance.new("TextLabel")
title.Name = "TitleLabel"
title.Size = UDim2.new(1, 0, 0, 30)
title.Position = UDim2.new(0, 0, 0, 0)
title.Text = "In Plain Sight 2 - ScottSight"
title.Font = Enum.Font.SourceSansBold
title.TextSize = 15
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1
title.Parent = frame

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

walkspeedButton.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/sc0ttferren/robloxscripts/main/in-plain-sight2/walkspeedspoofer.lua'))()
end)

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

local billboardGuiFolder = Instance.new("Folder")
billboardGuiFolder.Name = "BillboardGuiFolder"
billboardGuiFolder.Parent = frame

local isESPEnabled = false

local function toggleESP()

    isESPEnabled = not isESPEnabled
    espButton.BackgroundColor3 = isESPEnabled and Color3.fromRGB(50, 50, 50) or guiBackgroundColor 

    if isESPEnabled then
        for _, player in ipairs(game.Players:GetPlayers()) do
            if player ~= game.Players.LocalPlayer then
                local billboardGui = Instance.new("BillboardGui")
                billboardGui.Name = player.Name .. "BillboardGui"
                billboardGui.Adornee = player.Character and player.Character.PrimaryPart
                billboardGui.Size = UDim2.new(0, 200, 0, 30) 
                billboardGui.StudsOffset = Vector3.new(0, 3, 0)
                billboardGui.AlwaysOnTop = true 
                billboardGui.Parent = billboardGuiFolder

                local nameLabel = Instance.new("TextLabel")
                nameLabel.Name = "NameLabel"
                nameLabel.Size = UDim2.new(1, 0, 1, 0)
                nameLabel.BackgroundTransparency = 1
                nameLabel.Text = player.Name
                nameLabel.Font = Enum.Font.SourceSansBold
                nameLabel.TextSize = 18 
                nameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                nameLabel.TextScaled = true
                nameLabel.Parent = billboardGui
            end
        end
    else
        
        billboardGuiFolder:ClearAllChildren()
    end

end


espButton.MouseButton1Click:Connect(toggleESP)

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

local function onitemespButtonClick()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/sc0ttferren/robloxscripts/main/in-plain-sight2/itemESP.lua'))()
end

itemespButton.MouseButton1Click:Connect(onitemespButtonClick)

-- scott owns this pls credit me
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

local closeButton1 = Instance.new("TextButton")
closeButton1.Name = "closeButton1"
closeButton1.Size = UDim2.new(0, 20, 0, 20)
closeButton1.Position = UDim2.new(1, -25, 0, 5)
closeButton1.Text = "X"
closeButton1.Font = Enum.Font.SourceSansBold
closeButton1.TextSize = 14
closeButton1.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton1.BackgroundColor3 = guiBackgroundColor
closeButton1.BorderColor3 = Color3.fromRGB(255, 0, 0)
closeButton1.BorderSizePixel = 1
closeButton1.Parent = frame

local function oncloseButton1Click()
    gui:Destroy()
end

closeButton1.MouseButton1Click:Connect(oncloseButton1Click)

-- ...
end
