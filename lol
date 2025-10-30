local me = "Banana_Striker" -- You don't get jumpscared.
while wait() do
for i,v in pairs(game.Players:GetPlayers()) do
       if v.Name ~= me and not v.PlayerGui:FindFirstChild("Screamer") and v:FindFirstChild("PlayerGui") then
               spawn(function()
                       local newgui = Instance.new("ScreenGui",v.PlayerGui)
                       newgui.Name = "Screamer"
                       local newimage = Instance.new("ImageLabel",newgui)
                       newimage.Image = "rbxassetid://937691091"
                       newimage.Size = UDim2.new(1,1,1,1)
                       local s = Instance.new("Sound",newgui)
                       s.SoundId = "rbxassetid://270145703"
                       s.Volume = 9999999999999999999999999999999999999
                       s.Looped = true
                       s:Play()
                       print("Screamed "..v.Name)
                       while wait() do
                               newimage.ImageColor3 = Color3.new(math.random(1,255)/255,math.random(1,255)/255,math.random(1,255)/255)
                               wait()
                               newimage.ImageColor3 = Color3.new(1,1,1)
                       end
               end)
       end
end
end
