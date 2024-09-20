local normal = loadstring(game:HttpGet(('https://raw.githubusercontent.com/huyluuu/Library/refs/heads/main/King.lua')))()

_G.Color = Color3.fromRGB(0, 0, 255) -- Color UI
_G.Logo = 13990972098 -- ID Logo Your Hub
local Win = library:Evil("Banana Hub","",_G.Logo )

local Tab = Win:CraftTab('Main') -- Name
local Page = Tab:CraftPage('',1) -- Name,1 or 2

Page:Toggle('Auto Food Delivery', function(state) -- Toggle,Def,callback
    getfenv().money = (state)
    while getfenv().money do
    task.wait()
        repeat task.wait()
            local prox = game:GetService("Workspace").Jobs.DeliverySystem.Clicker:FindFirstChildOfClass("ProximityPrompt")
            if prox.Enabled == true then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=prox.Parent.CFrame*CFrame.new(0,0,5)
            prox.RequiresLineOfSight = false
            prox.HoldDuration = 0
            wait(0.1)
            prox:InputHoldBegin()
            wait()
            prox:InputHoldEnd()
            end
        until game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool") or getfenv().money == false
            for i,v in pairs(workspace:GetDescendants()) do
                  if v.ClassName == "ProximityPrompt" and string.find(tostring(v.Parent.Name),"Prox") and v.Parent.Parent.Parent == workspace then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=v.Parent.CFrame
              v.Parent.CanCollide = false
              v.MaxActivationDistance = math.huge
              v.RequiresLineOfSight = false
              wait()
              repeat task.wait()
				if game.Players.LocalPlayer:DistanceFromCharacter(v.Parent.Position) < 10 then
                    v.HoldDuration = 0
                    v:InputHoldBegin()
                    wait()
                    v:InputHoldEnd()
				end
              until v.Parent == nil or v.Enabled == false or game.Players.LocalPlayer:DistanceFromCharacter(v.Parent.Position) > 10 or getfenv().money == false
                  end
                  end
                end
    end)

Page:Toggle('Auto Farm', function(state)
    getfenv().test = (state and true or false)
    game.Players.LocalPlayer.Character.Head.Anchored = false
    spawn(function()
    while getfenv().test do
        pcall(function()
    task.wait()
    if getfenv().money ~= true then
    if game.Players.LocalPlayer.Character.Humanoid.SeatPart ~= nil then
    game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent.PrimaryPart.Velocity = game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent.PrimaryPart.CFrame.LookVector*400
    end
end
    end)
    end
    end)
    while getfenv().test do
       task.wait()
        pcall(function()
            if getfenv().money ~= true then
            if not game:GetService("Players").LocalPlayer.OwnedCars:FindFirstChild("HondeEX5") then
                game:GetService("ReplicatedStorage").KeteLoL.Beli:FireServer("HondeEX5")
                wait()
            end
    if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
    local hum = game.Players.LocalPlayer.Character.Humanoid
    if not workspace:FindFirstChild("justapart") then
        local new = Instance.new("Part",workspace)
        new.Name = "justapart"
        new.Size = Vector3.new(10000,20,10000)
        new.Anchored = true
        new.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position+Vector3.new(0,5000,0)
    end
    hum.SeatPart.Parent.PrimaryPart = hum.SeatPart
    hum.SeatPart.Throttle = 1
    hum.SeatPart.Parent:PivotTo(workspace.justapart.CFrame+Vector3.new(0,13,0))
    task.wait(1)
    game.Players.LocalPlayer.Character.Head.Anchored = getfenv().test
    
    elseif game.Players.LocalPlayer.Character.Humanoid.Sit == false and game:GetService("Players").LocalPlayer.OwnedCars:FindFirstChild("HondeEX5") then
        wait(1)
    game:GetService("ReplicatedStorage").KeteLoL.Letak:FireServer(game:GetService("Players").LocalPlayer.OwnedCars:FindFirstChild("HondeEX5").Name, "Civillian")
    wait(5)
    game:GetService("Workspace")["Folder"..game.Players.LocalPlayer.Name]:FindFirstChildOfClass("Model").DriveSeat:Sit(game.Players.LocalPlayer.Character.Humanoid)
    wait(1)
    end
end
    end)
    end
    end)
