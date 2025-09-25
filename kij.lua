--// GUI Chọn Ngôn Ngữ với nút Close + Drag
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local player = Players.LocalPlayer

-- ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player:WaitForChild("PlayerGui")

-- Frame chính
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 200)
frame.Position = UDim2.new(0.5, -150, 0.5, -100)
frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
frame.Parent = screenGui

-- Nút Close [X]
local closeBtn = Instance.new("TextButton")
closeBtn.Size = UDim2.new(0, 30, 0, 30)
closeBtn.Position = UDim2.new(1, -35, 0, 5)
closeBtn.Text = "X"
closeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
closeBtn.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
closeBtn.Parent = frame

-- Nút Tiếng Việt
local btnVN = Instance.new("TextButton")
btnVN.Size = UDim2.new(0, 120, 0, 50)
btnVN.Position = UDim2.new(0.1, 0, 0.3, 0)
btnVN.Text = "Tiếng Việt"
btnVN.Parent = frame

-- Nút English
local btnEN = Instance.new("TextButton")
btnEN.Size = UDim2.new(0, 120, 0, 50)
btnEN.Position = UDim2.new(0.55, 0, 0.3, 0)
btnEN.Text = "English"
btnEN.Parent = frame

-- Label thông báo
local label = Instance.new("TextLabel")
label.Size = UDim2.new(0, 260, 0, 50)
label.Position = UDim2.new(0.07, 0, 0.7, 0)
label.Text = "Chọn ngôn ngữ"
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.BackgroundTransparency = 1
label.Parent = frame

-- Xử lý chọn ngôn ngữ
btnVN.MouseButton1Click:Connect(function()
    label.Text = "Đang tải bản Tiếng Việt..."
    loadstring(game:HttpGet("https://raw.githubusercontent.com/daucobonhi/Ui-Redz-V2/main/UiREDzV2.lua"))()
    screenGui:Destroy()
end)

btnEN.MouseButton1Click:Connect(function()
    label.Text = "Loading English version..."
    loadstring(game:HttpGet("https://example.com/english-ui.lua"))()
    screenGui:Destroy()
end)

-- Sự kiện nút Close [X]
closeBtn.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

-- Cho phép kéo thả Frame
local dragging = false
local dragInput, dragStart, startPos

local function update(input)
    local delta = input.Position - dragStart
    frame.Position = UDim2.new(
        startPos.X.Scale, startPos.X.Offset + delta.X,
        startPos.Y.Scale, startPos.Y.Offset + delta.Y
    )
end

frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = frame.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

frame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or 
       input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        update(input)
    end
end)