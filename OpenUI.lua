local OpenUI = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")
OpenUI.Name = "Fake Block"
OpenUI.Parent = game.Players.LocalPlayer.PlayerGui.MainUI.AbilityContainer
OpenUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ImageButton.Parent = OpenUI
ImageButton.ImageColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BackgroundTransparency = 1
ImageButton.Position = UDim2.new(0.81, -105, 0, 275)
ImageButton.Size = UDim2.new(0, 70, 0, 70)
ImageButton.Image = "rbxassetid://137576632569674"
ImageButton.BorderSizePixel = 0
ImageButton.LayoutOrder = 1
UICorner.Parent = ImageButton
ImageButton.MouseButton1Down:connect(function()
    if ToggleUI == false then
        game.CoreGui.VapeUI.Main:TweenSize(UDim2.new(0, 0, 0, 0), "In", "Quad", 0.4, true)
        ToggleUI = true
    else
        game.CoreGui.VapeUI.Main:TweenSize(UDim2.new(0, 560, 0, 320), "Out", "Quad", 0.4, true)
        ToggleUI = false
    end
end)