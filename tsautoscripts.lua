local UILibrary = loadstring(game:HttpGet("https://pastebin.com/raw/V1ca2q9s"))()
local MainUI = UILibrary.Load("Tsunami Game")
local Player = MainUI.AddPage("Player",false)
local AutoFarm = MainUI.AddPage("AutoFarm",false)
local Teleport = MainUI.AddPage("Teleport",false)
getgenv().Farm = false
getgenv().W = 16
getgenv().J = 50
getgenv().Mas = 16
getgenv().PickUp = false
getgenv().ShouldRagdoll = false

--Auto Functions

local cor = coroutine.create(function ()
    while true do
        wait(0.2)
        pcall(function ()
            game.Players.LocalPlayer.Character:FindFirstChildOfClass("ForceField"):Destroy()
        end)
    end
end)
--coroutine.resume(cor)
--WalkSpeed FUnction
Player.AddSlider("WalkSpeed", {Min = 16, Max = 300, Def = 16},function(v)
    game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = v
    wait(0.1)
end)

--JumpPower Function
Player.AddSlider("JumpPower", {Min = 50, Max = 250, Def = 250},function(v)
    game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").JumpPower = v
    wait(0.1)
end)
Player.AddButton("Max ALL",function ()
game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = 300
wait(0.1)
game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").JumpPower = 250
wait(0.1)
getgenv().PickUp = v
    repeat
        wait(0.1)
        pcall(function ()
            firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"),game:GetService("Workspace").CurrentPointCoins.CoinFolder.CoinCollision,0)

        end)
    until 
    getgenv().PickUp == false
end)

Player.AddButton("Min ALL",function ()
game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = 20
wait(0.1)
game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").JumpPower = 75
end)
--Anti Ragdoll
Player.AddToggle("Anti Ragdoll",false,function(v)
    getgenv().ShouldRagdoll = v
    local ragdoll = game.Players.LocalPlayer.Character:FindFirstChild("RagdollToggled")
    repeat
        wait(0.2)
        if ragdoll then
            ragdoll:FireServer(false)
        end
    until 
    getgenv().ShouldRagdoll == false
end)

--AutoFarm Function
AutoFarm.AddToggle("AutoFarm",false,function (v)
    getgenv().Farm = v
    repeat
        if getgenv().Farm == true then
local tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"),TweenInfo.new(7),{CFrame =CFrame.new(-9.4971323, 39.9823875, -1051.51807, 0.985789657, -0.00746125402, -0.16781877, -0.00396866864, 0.997699857, -0.0676704049, 0.167937666, 0.0673748031, 0.983492553)})
tween:Play()
tween.Completed:Wait()
wait(1)
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(0.88348788, 230.699554, 982.310242, -0.999389589, -0.000123913429, 0.0349354483, -0.000140547054, 0.999999881, -0.000473669439, -0.034935385, -0.000478290371, -0.99938947)
game.StarterGui:SetCore("SendNotification",{
    Title = "Waiting..",
    Text = "Waiting Couple Of Seconds..",
    Duration = 3,
})
wait(26)
        end
    until 
    getgenv().Farm == false
end)
--AutoPickup Function
AutoFarm.AddToggle("Auto PickUp Coins",false,function (v)
    getgenv().PickUp = v
    repeat
        wait(0.1)
        pcall(function ()
            firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"),game:GetService("Workspace").CurrentPointCoins.CoinFolder.CoinCollision,0)

        end)
    until 
    getgenv().PickUp == false
end)
--Teleport Function
Teleport.AddButton("Teleport SPAWN",function ()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(10.932003, 123.015984, 941.786926, 0.996041, 1.07739364e-08, 0.0888950378, -1.14782379e-08, 1, 7.41164774e-09, -0.0888950378, -8.40266345e-09, 0.996041)
end)
Teleport.AddButton("Teleport ENDING",function ()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11 , 39, -1015, 0.999979734, 0.000236369015, -0.00635830685, 8.67214549e-05, 0.998710573, 0.0507657081, 0.00636210758, -0.0507652313, 0.998690367)
end)
Teleport.AddButton("Teleport BUTTON",function ()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-23.9377632, 121.999977, 976.817078, -0.996561646, -5.40651399e-08, -0.0828543752, -5.41555636e-08, 1, -1.15601395e-09, 0.0828543752, 3.33498651e-09, -0.996561646)
end)
Teleport.AddButton("Teleport SHOP",function ()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-109.189941, 121.999977, 964.618896, -0.999879658, 8.12031864e-09, 0.0155128092, 9.12313691e-09, 1, 6.4573797e-08, -0.0155128092, 6.47075566e-08, -0.999879658)
end)
Teleport.AddButton("Teleport Researcher",function ()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-109.189941, 121.999977, 964.618896, -0.999879658, 8.12031864e-09, 0.0155128092, 9.12313691e-09, 1, 6.4573797e-08, -0.0155128092, 6.47075566e-08, -0.999879658)
end)
