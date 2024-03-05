-- Variables
local guiBackgroundColor = Color3.fromRGB(30, 30, 30)
local cornerRadius = UDim.new(0, 10)
local guiSize = UDim2.new(0, 200, 0, 320)

-- Create the GUI
local gui = Instance.new("ScreenGui")
gui.Name = "ItemsESP"
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
title.Text = "ItemsESP"
title.Font = Enum.Font.SourceSansBold
title.TextSize = 18
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1
title.Parent = frame

-- Create the value dropdown
local valueDropdown = Instance.new("TextButton")
valueDropdown.Name = "ValueDropdown"
valueDropdown.Size = UDim2.new(0, 180, 0, 30)
valueDropdown.Position = UDim2.new(0, 10, 0, 50)
valueDropdown.Text = "Select Type"
valueDropdown.Font = Enum.Font.SourceSansBold
valueDropdown.TextSize = 14
valueDropdown.TextColor3 = Color3.fromRGB(255, 255, 255)
valueDropdown.BackgroundColor3 = guiBackgroundColor
valueDropdown.BorderColor3 = Color3.fromRGB(255, 0, 0)
valueDropdown.BorderSizePixel = 1
valueDropdown.Parent = frame

-- Create the dropdown list
local dropdownList = Instance.new("ScrollingFrame")
dropdownList.Name = "DropdownList"
dropdownList.Size = UDim2.new(1, 0, 0, 120)
dropdownList.Position = UDim2.new(0, 0, 0, 80)
dropdownList.BackgroundTransparency = 1
dropdownList.Visible = false
dropdownList.ScrollBarThickness = 8
dropdownList.ScrollBarImageTransparency = 0.6
dropdownList.ScrollBarImageColor3 = guiBackgroundColor
dropdownList.Parent = frame

-- Create the highlight button
local highlightButton = Instance.new("TextButton")
highlightButton.Name = "HighlightButton"
highlightButton.Size = UDim2.new(0, 90, 0, 30)
highlightButton.Position = UDim2.new(0, 10, 0, 175)
highlightButton.Text = "Highlight"
highlightButton.Font = Enum.Font.SourceSansBold
highlightButton.TextSize = 14
highlightButton.TextColor3 = Color3.fromRGB(255, 255, 255)
highlightButton.BackgroundColor3 = guiBackgroundColor
highlightButton.BorderColor3 = Color3.fromRGB(255, 0, 0)
highlightButton.BorderSizePixel = 1
highlightButton.Parent = frame

-- Create the unhighlight button
local unhighlightButton = Instance.new("TextButton")
unhighlightButton.Name = "UnhighlightButton"
unhighlightButton.Size = UDim2.new(0, 90, 0, 30)
unhighlightButton.Position = UDim2.new(0, 100, 0, 175)
unhighlightButton.Text = "Unhighlight"
unhighlightButton.Font = Enum.Font.SourceSansBold
unhighlightButton.TextSize = 14
unhighlightButton.TextColor3 = Color3.fromRGB(255, 255, 255)
unhighlightButton.BackgroundColor3 = guiBackgroundColor
unhighlightButton.BorderColor3 = Color3.fromRGB(255, 0, 0)
unhighlightButton.BorderSizePixel = 1
unhighlightButton.Parent = frame

-- Function to handle the highlight button click
local function highlightSelected()
    local selectedValue = valueDropdown.Text
    -- Highlight logic here based on the selected value
    local models = game.Workspace:GetDescendants()
    local highlightColor = Color3.fromRGB(255, 0, 0) -- Red color
    local modelsToHighlight = {
        ["Best Price"] = {
            "Gemstone",
            "Paper",
            "Chair",
            "Flower",
            "Extinguisher",
            "Comfy Chair",
            "Rug",
            "Laptop",
            "Salt",
            "Monitor",
            "Flask",
            "Map",
            "Magazine",
            "Trophy",
            "Coins",
            "Bat",
            "Baton",
            "Cash",
            "Menu",
            "Wrench",
            "Tiny Plant",
            "Black Sparkle Time",
            "Green Sparkle Time",
            "Midnight Blue Sparkle Time",
            "Orange Sparkle Time",
            "Original Sparkle Time",
            "Pink Sparkle Time",
            "Purple Sparkle Time",
            "Red Sparkle Time",
            "Sky Blue Sparkle Time",
            "Teal Sparkle Time",
            "White Sparkle Time",
            "Thermos",
            "Truffle",
            "Secret Formula",
            "Movie",
            "Newton's Cradle",
            "Tray",
            "Cooking Pot",
            "Wedding Ring",
            "Telephone",
            "Keyboard",
            "Info Card",
            "Mannequin",
            "Checkered Lava",
            "Dominus Astra",
            "Dominus Aureus",
            "Dominus Claves",
            "Dominus Empyreus",
            "Dominus Frigidus",
            "Dominus Infernus",
            "Dominus Messor",
            "Dominus Pittacium",
            "Dominus Rex",
            "Dominus Venari",
            "Dominus Vespertilio",
            "Robux",
            "Jacket",
            "Hourglass",
            "Fresh Fish",
            "Chemicals",
            "Caviar",
            "Blueberry Cheesecake",
            "Blueberry Smoothie",
            "Baked Pork Buns",
            "Certificate",
            "Dragonfruit",
            "Ring Sculpture",
            "Shaker",
            "Spring Rolls",
            "Safe",
            "Cookie",
            "Can",
            "Telescope",
            "Sushi",
            "Mini Fridge",
            "The Captain's Favorite Doubloon",
            "Mop",
            "Mop Bin",
            "Moon Juice",
            "Mochi",
            "Lobster",
            "Knife",
            "Big Trophy",
            "Backpack",
            "Keys",
            "File Box",
            "Shirt",
            "Box",
            "Eraser",
            "Marker",
            "Coffee Brewer",
            "Fax Machine",
            "Dodgeball",
            "Microphone",
            "Honey",
            "Honeycomb",
            "JÄTTEMÄTT"
            "Pepper"
        },
        ["Least Weight"] = {
            "Book",
            "Paper",
            "Feather",
            "Bubble",
            "Air",
            "Foam",
            "Balloon"
        },
        ["Most Expensive"] = {
            "Gold",
            "Printer",
            "Triangle Sculpture",
            "Soda Tank",
            "Refridgerator",
            "Rabbit Statue",
            "Toilet",
            "Friendship Badge",
            "Water Cooler",
        }
    }

    local modelsToHighlightSelected = modelsToHighlight[selectedValue]
    if modelsToHighlightSelected then
        for _, model in ipairs(models) do
            if model:IsA("Model") and table.find(modelsToHighlightSelected, model.Name) then
                for _, part in ipairs(model:GetDescendants()) do
                    if part:IsA("BasePart") then
                        local highlight = Instance.new("BoxHandleAdornment")
                        highlight.Name = "Highlight"
                        highlight.Adornee = part
                        highlight.Size = part.Size + Vector3.new(0.1, 0.1, 0.1)

                        if selectedValue == "Most Expensive" then
                            highlight.Color3 = Color3.fromRGB(255, 255, 0) -- Yellow
                        elseif selectedValue == "Best Price" then
                            highlight.Color3 = Color3.fromRGB(0, 255, 0) -- Green
                        else
                            highlight.Color3 = Color3.fromRGB(255, 0, 0) -- Red (default)
                        end

                        highlight.Transparency = 0.5
                        highlight.AlwaysOnTop = true
                        highlight.ZIndex = 1
                        highlight.Parent = part

                        local transparency = Instance.new("NumberValue")
                        transparency.Name = "Transparency"
                        transparency.Value = 0.5
                        transparency.Parent = highlight
                    end
                end
            end
        end
    end
end

highlightButton.MouseButton1Click:Connect(highlightSelected)

-- Function to handle the unhighlight button click
local function unhighlightSelected()
    -- Unhighlight logic here
    local adorns = game.Workspace:GetDescendants()
    for _, adornee in ipairs(adorns) do
        if adornee:IsA("BasePart") and adornee:FindFirstChild("Highlight") then
            adornee.Highlight:Destroy()
        end
    end
end

unhighlightButton.MouseButton1Click:Connect(unhighlightSelected)

-- Function to handle the dropdown button click
local isDropdownOpen = false

local function toggleDropdown()
    isDropdownOpen = not isDropdownOpen
    dropdownList.Visible = isDropdownOpen
end

valueDropdown.MouseButton1Click:Connect(toggleDropdown)

-- Function to handle the item selection
local function selectItem(item)
    valueDropdown.Text = item
    toggleDropdown()
end

-- Create the items in the dropdown list
local items = {
    "Best Price",
    "Least Weight",
    "Most Expensive",
}

local yOffset = 0

for _, item in ipairs(items) do
    local dropdownItem = Instance.new("TextButton")
    dropdownItem.Name = item
    dropdownItem.Size = UDim2.new(1, 0, 0, 30)
    dropdownItem.Position = UDim2.new(0, 0, 0, yOffset)
    dropdownItem.Text = item
    dropdownItem.Font = Enum.Font.SourceSansBold
    dropdownItem.TextSize = 14
    dropdownItem.TextColor3 = Color3.fromRGB(255, 255, 255)
    dropdownItem.BackgroundColor3 = guiBackgroundColor
    dropdownItem.BorderColor3 = Color3.fromRGB(255, 0, 0)
    dropdownItem.BorderSizePixel = 1
    dropdownItem.Parent = dropdownList

    dropdownItem.MouseButton1Click:Connect(function()
        selectItem(item)
    end)

    yOffset = yOffset + 30
end

-- Extra Info Title
local extrainfotitle = Instance.new("TextLabel")
extrainfotitle.Size = UDim2.new(1, 0, 0, 20)  -- Updated size to fit at the bottom
extrainfotitle.Position = UDim2.new(0, 0, 1, -69)  -- Updated position to fit at the bottom
extrainfotitle.BackgroundTransparency = 1
extrainfotitle.TextSize = 25
extrainfotitle.Text = "<font color=\"rgb(0, 0, 255)\">ESP Colors</font>"
extrainfotitle.Font = Enum.Font.SourceSansBold
extrainfotitle.RichText = true
extrainfotitle.Parent = frame

-- Extra Info Text
local extrainfo = Instance.new("TextLabel")
extrainfo.Size = UDim2.new(1, 0, 0, 20)  -- Updated size to fit at the bottom
extrainfo.Position = UDim2.new(0, 0, 1, -40)  -- Updated position to fit at the bottom
extrainfo.BackgroundTransparency = 1
extrainfo.TextSize = 6.9
extrainfo.Text = "<font color=\"rgb(0, 255, 0)\">Best Price</font>, <font color=\"rgb(255, 0, 0)\">Least Weight</font>, <font color=\"rgb(255, 255, 0)\">Most Expensive</font>."
extrainfo.RichText = true
extrainfo.Parent = frame

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

closeButton.MouseButton1Click:Connect(onCloseButtonClick)
