local OpenUI = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")
OpenUI.Name = "OpenUI"
OpenUI.Parent = game.CoreGui
OpenUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ImageButton.Parent = OpenUI
ImageButton.BorderSizePixel = 0
ImageButton.LayoutOrder = 1
ImageButton.ImageColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BackgroundTransparency = 1
ImageButton.Position = UDim2.new(0.8, 0, 0, 0)
ImageButton.Size = UDim2.new(0, 100, 0, 100)
ImageButton.Image = "rbxassetid://3570695787"
ImageButton.Draggable = true
UICorner.Parent = ImageButton
UICorner.CornerRadius = UDim.new(0, 0)
ImageButton.MouseButton1Down:Connect(function()
    if ToggleUI == false then
        game.CoreGui.VapeUI.Main:TweenSize(UDim2.new(0, 0, 0, 0), "In", "Quad", 0.4, true)
        ToggleUI = true
    else
        game.CoreGui.VapeUI.Main:TweenSize(UDim2.new(0, 560, 0, 320), "Out", "Quad", 0.4, true)
        ToggleUI = false
    end
end)