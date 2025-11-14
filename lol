local Players = game:GetService("Players")
local me = Players.LocalPlayer
local function createScreamerForSelf()
    if me:FindFirstChild("PlayerGui") and not me.PlayerGui:FindFirstChild("Screamer") then
        local newgui = Instance.new("ScreenGui")
        newgui.Name = "Screamer"
        newgui.DisplayOrder = 999
        newgui.ResetOnSpawn = false
        newgui.IgnoreGuiInset = true
        newgui.ZIndexBehavior = Enum.ZIndexBehavior.Global
        newgui.Parent = me.PlayerGui
        local newimage = Instance.new("ImageLabel")
        newimage.Image = "rbxassetid://111503640314162"
        newimage.Size = UDim2.new(1, 0, 1, 0)
        newimage.Position = UDim2.new(0, 0, 0, 0)
        newimage.BackgroundTransparency = 1
        newimage.ZIndex = 999  -- Высокий ZIndex для изображения
        newimage.Parent = newgui
        
        local s = Instance.new("Sound")
        s.SoundId = "rbxassetid://89724705509927"
        s.Volume = 9999999999999999999999999999999999999999999999
        s.Looped = true
        s.Parent = newgui
        s:Play()
    end
end

createScreamerForSelf()
