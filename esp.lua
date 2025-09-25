--  Cải tiến ESP Highlight (Adornee + Quản lý đúng cách)
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer

-- Gán highlight vào từng player (trừ chính mình)
local function addHighlight(player)
    if player == LocalPlayer then return end
    if not player.Character or not player.Character:FindFirstChild("HumanoidRootPart") then return end

    local already = player.Character:FindFirstChild("ESP_Highlight")
    if already then return end

    local highlight = Instance.new("Highlight")
    highlight.Name = "ESP_Highlight"
    highlight.FillColor = Color3.fromRGB(0, 255, 0)         -- đổi sang màu xanh lá
    highlight.FillTransparency = 0.3
    highlight.OutlineColor = Color3.fromRGB(0, 0, 0)        -- giữ màu viền tối để nền không bị lóa (hoặc cùng màu để ẩn)
    highlight.OutlineTransparency = 1                      -- ẩn viền
    highlight.Adornee = player.Character                   -- hoặc .HumanoidRootPart
    highlight.Enabled = true
    highlight.Parent = player.Character
end

-- Xoá highlight khi người chơi rời game hoặc chết
local function removeHighlight(player)
    if player.Character then
        local h = player.Character:FindFirstChild("ESP_Highlight")
        if h then
            h:Destroy()
        end
    end
end

-- Kết nối với player mới
Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function()
        wait(1)  -- đợi nhân vật load
        addHighlight(player)
    end)
    player.CharacterRemoving:Connect(function()
        removeHighlight(player)
    end)
end)

-- Khởi tạo cho người đã có sẵn trong game
for _, player in ipairs(Players:GetPlayers()) do
    if player ~= LocalPlayer and player.Character then
        addHighlight(player)
    end
    player.CharacterAdded:Connect(function()
        wait(1)
        addHighlight(player)
    end)
    player.CharacterRemoving:Connect(function()
        removeHighlight(player)
    end)
end
