local OpenUI = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")
OpenUI.Name = "OpenUI"
OpenUI.Parent = game.CoreGui
OpenUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ImageButton.Parent = OpenUI
ImageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BackgroundTransparency = 0.500
ImageButton.Position = UDim2.new(0.81, 0, 0, 0)
ImageButton.Size = UDim2.new(0, 100, 0, 100)
ImageButton.Image = "rbxassetid://135839331944731"
ImageButton.Draggable = true
UICorner.CornerRadius = UDim.new(0, 200)
UICorner.Parent = ImageButton
ImageButton.MouseButton1Down:connect(function()
    if ToggleUI == false then
        game.CoreGui.ui.Main:TweenSize(UDim2.new(0, 0, 0, 0), "In", "Quad", 0.4, true)
        ToggleUI = true
    else
        game.CoreGui.ui.Main:TweenSize(UDim2.new(0, 560, 0, 320), "Out", "Quad", 0.4, true)
        ToggleUI = false
    end
end)
