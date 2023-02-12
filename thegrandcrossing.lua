--[[
Thanks for using The Grand Fucking
--]]


getgenv().SecureMode = true
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/UI-Interface/CustomFIeld/main/RayField.lua'))()

local Window = Rayfield:CreateWindow({
   Name = "The Grand Fucking",
   LoadingTitle = "The Grand Fucking",
   LoadingSubtitle = "by Reptiled",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil,
      FileName = "Big Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "SIRIUS",
      RememberJoins = true
   },
   KeySystem = false
})

local GameTab = Window:CreateTab("Home", 4384396147)
local AutoFarm = Window:CreateTab("AutoFarm", 4400700543)
local LocalPlayerTab = Window:CreateTab("LocalPlayer", 6961018899)
local Teleport = Window:CreateTab("Teleport", 4515645499)
local Misc = Window:CreateTab("Misc", 4503342962)


local dmgremote = game:GetService("ReplicatedStorage"):WaitForChild("RemotesFolder"):WaitForChild("GunDamage")
local jobremote = game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("JobFunction")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local LocalPlayerChar = LocalPlayer.Character
local workspace = game:GetService("Workspace")
local doorremote = game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Doors"):WaitForChild("DoorEvent")


-- Functions
local function doorfunc()
    for _,v in pairs(workspace.Systems.Legacy.Doors:GetChildren()) do
        if v.Name == "HackDoor" or v.Name == "HackableDoor" or v.Name == "BreachableGroupDoor" or v.Name == "IPCDoorLevel5" or v.Name == "C4Door" or v.Name == "HackableVaultLasers" or v.Name == "IPCDoor" then
            local doorargs = {[1] = "activate", [2] = v}
            doorremote:FireServer(unpack(doorargs))
        end
    end
end

local function robsafe()
    -- game:GetService("ReplicatedStorage"):WaitForChild("Systems"):WaitForChild("Raid System"):WaitForChild("Events"):WaitForChild("OnRaidStart"):FireServer("Safe")

    -- game:GetService("ReplicatedStorage"):WaitForChild("Systems"):WaitForChild("Raid System"):WaitForChild("Events"):WaitForChild("OnRaidInteract"):FireServer("Safe")

end

local function spamgas()
    local args = {
        [1] = Vector3.new(0.16950833797454834, 0.15180383622646332, -0.9737671613693237),
        [2] = "Tear Gas Nade",
        [3] = 10
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Grenades"):WaitForChild("Remotes"):WaitForChild("ThrowGrenade"):FireServer(unpack(args))
    
end

local function damageall()
    for _,v in pairs(Players:GetChildren()) do
        if v.Team == LocalPlayer.Team or v.Character.Humanoid.Health < _G.SafetyHP then continue end
        local dmgargs = {[1] = v, [2] = v.Character.Head, [3] = v.Character.Head.CFrame.Position}
        dmgremote:InvokeServer(unpack(dmgargs))
    end
end

local function damagechosenplayer()
    FoundPlayer = Players:FindFirstChild(_G.ChosenPlayer)
    if not FoundPlayer then
        print("Error!")
        return
    else
        if FoundPlayer.Character.Humanoid.Health < _G.SafetyHP then return end
        local dmgplrargs = {[1] = FoundPlayer, [2] = FoundPlayer.Character.Head, [3] = FoundPlayer.Character.Head.CFrame.Position}
        dmgremote:InvokeServer(unpack(dmgplrargs))
    end
end

local function gettools()
    local currentpos = LocalPlayerChar.HumanoidRootPart.CFrame
    for _,v in pairs(game:GetService("Workspace").Systems.Legacy.Pickups.Debris:GetChildren()) do
        LocalPlayerChar.HumanoidRootPart.CFrame = CFrame.new(v.Handle.Position) + Vector3.new(0,5,0)
        task.wait(0.2)
        fireclickdetector(v.ClickBox.ClickDetector)
    end
    LocalPlayerChar.HumanoidRootPart.CFrame = currentpos
end

--[[
local function infectall()
    game:GetService("Players"):WaitForChild("G870N70L85HHParker12"):WaitForChild("Backpack"):WaitForChild("Infect"):WaitForChild("Infect_Melee"):FireServer()
end
--]]

local function spamreactor()
    game:GetService("ReplicatedStorage"):WaitForChild("Systems"):WaitForChild("Raid System"):WaitForChild("Events"):WaitForChild("OnRaidStart"):FireServer("Reactor")
end

local function teleportfunc(arg1)
    local shop = CFrame.new(-406.422119, 533.623718, -1354.87512, -0.0568554662, 8.26431403e-08, -0.998382449, -7.40752482e-09, 1, 8.31988771e-08, 0.998382449, 1.21258532e-08, -0.0568554662)
    local shop2 = CFrame.new(-504.5, 561.198914, -1439.99988, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    local throneroom = CFrame.new(-585.325867, 571.597534, -2440.73218, 0.498342872, 2.95483691e-08, 0.866980016, 4.89702234e-09, 1, -3.68967719e-08, -0.866980016, 2.26328645e-08, 0.498342872)
    local caves = CFrame.new(-121.928749, 488.280396, -926.967957, 0.316432655, -7.26773308e-08, -0.948614955, -1.9959121e-09, 1, -7.72799353e-08, 0.948614955, 2.63472479e-08, 0.316432655)
    local outsidevault = CFrame.new(28.4844933, 551.946777, -2273.56494, -0.0470856018, 7.85893093e-08, -0.998890877, -3.94985236e-08, 1, 8.05384488e-08, 0.998890877, 4.32469172e-08, -0.0470856018)
    local insidevault = CFrame.new(250.507874, 571.682495, -2280.50928, 0.0918598026, 2.36872744e-08, -0.995771945, 2.42061482e-08, 1, 2.60208637e-08, 0.995771945, -2.64940745e-08, 0.0918598026)
    local armory = CFrame.new(-895.888, 599.637024, -1852.93994, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    local insidesafe = CFrame.new(-888.467834, 549.661377, -1528.91028, -0.742913961, 1.61432343e-08, 0.669386923, -2.86718271e-09, 1, -2.72985687e-08, -0.669386923, -2.21997425e-08, -0.742913961)
    local outsidesafe = CFrame.new(-818.994385, 555.861633, -1639.64404, -0.970121384, 5.23958903e-08, -0.242620066, 4.81629847e-08, 1, 2.33779094e-08, 0.242620066, 1.09941025e-08, -0.970121384)
    local lab = CFrame.new(-848.090698, 523.47821, -2238.84253, -0.827565849, 1.03737179e-07, 0.561368704, 1.15925275e-07, 1, -1.38970799e-08, -0.561368704, 5.35760698e-08, -0.827565849)
    local cargobay = CFrame.new(-673.5578, 516.546509, -1482.37109, 0.875194073, -9.09022404e-08, 0.48377201, 1.01533331e-07, 1, 4.21866408e-09, -0.48377201, 4.54268339e-08, 0.875194073)
    local reactor = CFrame.new(-637.130432, 555.71167, -1796.61914, -0.0041229832, 7.19806224e-08, 0.999991477, -4.45476331e-08, 1, -7.21649087e-08, -0.999991477, -4.48447892e-08, -0.0041229832)
    local cafe = CFrame.new(-75.3605118, 549.695068, -1907.49438, -0.0337259062, -1.08152072e-07, -0.999431133, 1.94805985e-08, 1, -1.08871006e-07, 0.999431133, -2.31412898e-08, -0.0337259062)
    local ipc = CFrame.new(-305.529846, 640.305176, -1838.51904, 0.300737113, -7.90633603e-09, 0.953707099, 5.73148951e-09, 1, 6.48277076e-09, -0.953707099, 3.51655238e-09, 0.300737113)

    local current = nil
    if arg1 == "shop" then current = shop elseif arg1 == "shop2" then current = shop2 elseif arg1 == "throneroom" then current = throneroom elseif arg1 == "caves" then current = caves elseif arg1 == "vaultout" then current = outsidevault elseif arg1 == "vaultin" then current = insidevault elseif arg1 == "armory" then
    current = armory elseif arg1 == "safein" then current = insidesafe elseif arg1 == "safeout" then current = outsidesafe elseif arg1 == "lab" then current = lab elseif arg1 == "cargobay" then current = cargobay elseif arg1 == "reactor" then current = reactor elseif arg1=="cafe" then current = cafe elseif arg1== "ipc" then current=ipc end
    LocalPlayerChar.HumanoidRootPart.CFrame = current
end

local function removelasers()
    local lasers = workspace.Systems.Legacy.Doors.Lasers.Lasers
    if lasers then lasers:Destroy() end
end

local function autofarmfunc()
    if not LocalPlayerChar:FindFirstChild("Pickaxe") then
        local args = {[1] = "RequestStartJob", [2] = "Miner"}
        jobremote:InvokeServer(unpack(args))
        jobremote:InvokeServer("Arrived")
        local pickaxe = LocalPlayer.Backpack:WaitForChild("Pickaxe")
        pickaxe.Parent = LocalPlayerChar
        pickaxe:Activate()
    end

    local mineremote = game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Functions"):WaitForChild("MineOre")
    local droppedores = workspace.Systems.Legacy.DroppedOres
    local collectremote = game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Events"):WaitForChild("CollectOre")

    for _,v in pairs(workspace:WaitForChild("Systems"):WaitForChild("Legacy"):WaitForChild("MinerOres"):GetChildren()) do
        if v.BrickColor == BrickColor.new("Lime green") or v.BrickColor == BrickColor.new("Really red") then
            LocalPlayerChar.HumanoidRootPart.CFrame = CFrame.new(v.Position) + Vector3.new(0,0.25, 0)
            LocalPlayerChar.HumanoidRootPart.Anchored = false
            wait()
            LocalPlayerChar.HumanoidRootPart.CFrame = CFrame.lookAt(LocalPlayerChar.HumanoidRootPart.Position, v.Position)
            LocalPlayerChar.HumanoidRootPart.Anchored = true
            for i=1,25 do
                mineremote:InvokeServer(v)
            end
            for _,b in pairs(droppedores:GetChildren()) do
                if not b.OreOwner.Value == LocalPlayer.Name then continue end
                LocalPlayerChar.HumanoidRootPart.CFrame = CFrame.new(b.Position)
                task.wait(0.1)
                collectremote:FireServer(b)
            end
            LocalPlayerChar.HumanoidRootPart.Anchored = false
            LocalPlayerChar.HumanoidRootPart.CFrame = CFrame.new(-94.376564, 474.408325, -939.224243, -0.347005993, -4.16788595e-08, -0.937862933, 2.02421795e-08, 1, -5.19297814e-08, 0.937862933, -3.70043374e-08, -0.347005993)
        end
        if not _G.AutoFarm then
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Functions"):WaitForChild("SellAllOres"):InvokeServer()
            jobremote:InvokeServer("Leave", "Miner")
            return
        end
    end
end

local function serverhop()
    local server = {}
    local serverlist = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/885450884/servers/Public?sortOrder=Asc&limit=100"))
    for _, v in pairs(serverlist.data) do
        if not (v.id == game.JobId) and not (tonumber(v.playing) == tonumber(v.maxPlayers)) then
            server[tostring(v.id)] = tonumber(v.playing)
        end
    end
    local currentid
    local currentplr = 0
    for i,v in pairs(server) do
        if v > currentplr then
            currentplr = v
            currentid = i
        end
    end
    if currentid == nil then return end
    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, currentid, LocalPlayer)
end

local function servercheck(plr)
    local plrgroups = game:GetService("GroupService"):GetGroupsAsync(plr.UserId)
    for _,v in pairs(plrgroups) do
        if ((v.Id == 1174414) and (v.Rank >= 14)) or ((v.Id == 3880488) and (v.Rank >= 245)) or ((v.Id == 3497030) and (v.Rank >= 150)) or ((v.Id == 3496996) and (v.Rank >= 235)) or ((v.Id == 4809530) and (v.Rank >= 120)) or ((v.Id == 4734688) and (v.Rank >= 90)) or ((v.Id == 3497000) and (v.Rank >= 8)) then
            return true
        end
    end
    return false
end


local PlayerList = {}
local ServerAdmins = {}


-- Game Tab
_G.ToggleDoor = false
local Doors = GameTab:CreateToggle({
    Name = "Open Doors",
    Info = "Need C4 and/or Hack Device. Or just be Nighthawk.",
    CurrentValue = false,
    Flag = "OpenDoors",
    Callback = function(DoorToggle)
        _G.ToggleDoor = DoorToggle
        if _G.ToggleDoor then
            coroutine.resume(coroutine.create(function()
                while _G.ToggleDoor do
                    doorfunc()
                    task.wait(0.5)
                end
                coroutine.yield()
            end))
        end
    end
})

_G.ToggleDamage = false
local DamageAll = GameTab:CreateToggle({
    Name = "Damage All",
    Info = "Damages everyone. Hold a gun.",
    CurrentValue = false,
    Flag = "DamageAll",
    Callback = function(DamageToggle)
        _G.ToggleDamage = DamageToggle
        if _G.ToggleDamage then
            coroutine.resume(coroutine.create(function()
                while _G.ToggleDamage do
                    pcall(damageall)
                    task.wait()
                end
                coroutine.yield()
            end))
        end
    end
})

_G.ChosenPlayer = ""
local PlayerDropdown = GameTab:CreateDropdown({
    Name = "Player to damage",
    Info = "Choose player to damage.",
    Options = PlayerList,
    CurrentOption = "",
    Flag = "PlayerDropdown", 
    Callback = function(Option)
        _G.ChosenPlayer = tostring(Option)
    end
})

_G.ChosenPDamage = false
local DamageChosen = GameTab:CreateToggle({
    Name = "Damage Player",
    Info = "Damages the player that you choose on dropdown. Hold a gun.",
    CurrentValue = false,
    Flag = "DamagePlayer",
    Callback = function(ChosenDamage)
        _G.ChosenPDamage = ChosenDamage
        if _G.ChosenPDamage then
            coroutine.resume(coroutine.create(function()
                while _G.ChosenPDamage do
                    pcall(damagechosenplayer)
                    task.wait()
                end
                coroutine.yield()
            end))
        end
    end
    })

_G.SafetyHP = 25
local SafetyHP = GameTab:CreateSlider({
    Name = "SafetyHP",
    Info = "SafetyHP will prevent you from killing and getting exposed.",
    Range = {0, 125},
    Increment = 1,
    Suffix = "HP",
    CurrentValue = 25,
    Flag = "SafetyHP",
    Callback = function(SafetyHPValue)
        _G.SafetyHP = SafetyHPValue
    end
})

_G.SpamRob = false
local RobSpam = GameTab:CreateToggle({
    Name = "Spam Rob Reactor",
    Info = "This will spam the chat with robbing the reactor.",
    CurrentValue = false,
    Flag = "SpamRob",
    Callback = function(robtoggle)
        _G.SpamRob = robtoggle
        coroutine.resume(coroutine.create(function()
            while _G.SpamRob do
                pcall(spamreactor)
                task.wait()
            end
            coroutine.yield()
        end))
    end
})


-- LocalPlayer Tab
_G.Speed = 25
_G.SpeedEnabled = false
local Walkspeed = LocalPlayerTab:CreateToggle({
    Name = "Enable Walkspeed",
    Info = "go brr",
    CurrentValue = false,
    Flag = "Walkspeed", 
    Callback = function(EnableWalkspeed)
        _G.SpeedEnabled = EnableWalkspeed
        if _G.SpeedEnabled then
            LocalPlayerChar.Humanoid.WalkSpeed = _G.Speed
        else
            LocalPlayerChar.Humanoid.WalkSpeed = 16
        end
    end
})

local WalkspeedSlider = LocalPlayerTab:CreateSlider({
    Name = "Walkspeed",
    Range = {0, 200},
    Increment = 1,
    Suffix = "Walkspeed",
    CurrentValue = 25,
    Flag = "Walkspeedslider",
    Callback = function(speed)
        _G.Speed = speed
        if _G.SpeedEnabled then
            LocalPlayerChar.Humanoid.WalkSpeed = _G.Speed
        end
    end
})

_G.Jump = 50
_G.JumpEnabled = false
local Walkspeed = LocalPlayerTab:CreateToggle({
    Name = "Enable JumpPower",
    CurrentValue = false,
    Flag = "Jumppower", 
    Callback = function(Jump)
        _G.JumpEnabled = Jump
        if _G.JumpEnabled then
            LocalPlayerChar.Humanoid.JumpPower = _G.Jump
        else
            LocalPlayerChar.Humanoid.JumpPower = 50
        end
    end
})

local WalkspeedSlider = LocalPlayerTab:CreateSlider({
    Name = "JumpPower",
    Range = {0, 300},
    Increment = 1,
    Suffix = "JumpPower",
    CurrentValue = 50,
    Flag = "Jumppowerslider",
    Callback = function(jumppower)
        _G.Jump = jumppower
        if _G.JumpEnabled then
            LocalPlayerChar.Humanoid.JumpPower = _G.Jump
        end
    end
})



-- AutoFarm Tab
_G.AutoFarm = false
local AutoMine = AutoFarm:CreateToggle({
    Name = "AutoMine",
    Info = "Auto-Mines Emerald and Rubys at Caves.",
    CurrentValue = false,
    Flag = "AutoMine",
    Callback = function(FarmToggle)
        _G.AutoFarm = FarmToggle
        coroutine.resume(coroutine.create(function()
            while _G.AutoFarm do
                autofarmfunc()
                task.wait()
            end
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Functions"):WaitForChild("SellAllOres"):InvokeServer()
            jobremote:InvokeServer("Leave", "Miner")
            coroutine.yield()
        end))
    end
})

local AutoFarmLabel = AutoFarm:CreateLabel("Autofarm is a bit glitchy.")


-- Teleport Tab
local TpShop = Teleport:CreateButton({
    Name = "Teleport to Shop",
    Callback = function()
        teleportfunc("shop")
    end
})
local TpShop2 = Teleport:CreateButton({
    Name = "Teleport to Shop 2",
    Callback = function()
        teleportfunc("shop2")
    end
})
local TpThroneRoom = Teleport:CreateButton({
    Name = "Teleport to Throne Room",
    Callback = function()
        teleportfunc("throneroom")
    end
})
local TpInVault = Teleport:CreateButton({
    Name = "Teleport to Vault Inside",
    Callback = function()
        teleportfunc("vaultin")
    end
})
local TpOutVault = Teleport:CreateButton({
    Name = "Teleport to Vault Outside",
    Callback = function()
        teleportfunc("vaultout")
    end
})
local TpInSafe = Teleport:CreateButton({
    Name = "Teleport to Safe Inside",
    Callback = function()
        teleportfunc("safein")
    end
})
local TpOutSafe = Teleport:CreateButton({
    Name = "Teleport to Safe Outside",
    Callback = function()
        teleportfunc("safeout")
    end
})
local TpArmory = Teleport:CreateButton({
    Name = "Teleport to Armory",
    Callback = function()
        teleportfunc("armory")
    end
})
local TpLab = Teleport:CreateButton({
    Name = "Teleport to Lab",
    Callback = function()
        teleportfunc("lab")
    end
})
local TpCafe = Teleport:CreateButton({
    Name = "Teleport to Cafe",
    Callback = function()
        teleportfunc("cafe")
    end
})
local TpCargo = Teleport:CreateButton({
    Name = "Teleport to Cargo Bay",
    Callback = function()
        teleportfunc("cargobay")
    end
})
local TpReactor = Teleport:CreateButton({
    Name = "Teleport to Reactor",
    Callback = function()
        teleportfunc("reactor")
    end
})
local TpIpc = Teleport:CreateButton({
    Name = "Teleport to IPC Enclave",
    Callback = function()
        teleportfunc("ipc")
    end
})
local TpCaves = Teleport:CreateButton({
    Name = "Teleport to Caves",
    Callback = function()
        teleportfunc("caves")
    end
})


-- Misc Tab
local GetGuns = Misc:CreateButton({
    Name = "Get Guns",
    Info = "Teleports and gets guns from Armory, Lab and other places.",
    Callback = function()
        gettools()
    end
})

local laserbtn = Misc:CreateButton({
    Name = "Remove Lasers",
    Info = "Removes vault lasers.",
    Callback = function()
        removelasers()
    end
})

_G.notify = true
local AdminNotify = Misc:CreateToggle({
    Name = "Admin Notifier",
    CurrentValue = true,
    Flag = "notify",
    Callback = function(value)
        _G.notify = value
    end
})

local GetAdmins = Misc:CreateButton({
    Name = "Check Admins",
    Info = "Returns the current admin names in the server",
    Callback = function()
        local count = 0
        local adminnames = ""
        for i,v in pairs(ServerAdmins) do
            count = i
            adminnames = adminnames .. " " .. tostring(v)
            if i == #ServerAdmins then continue end
            adminnames = adminnames .. ","
        end
        if count == 0 then adminnames = "There is no admins in this server!"
        else adminnames = "There are " .. tostring(count) .. " admins in the server. Their names: " .. tostring(adminnames) end
        Window:Prompt({
            Title = "Admin Notify",
            SubTitle = "Server Info",
            Content = adminnames,
            Actions = {
                SHOP = {
                  Name = "Switch Servers",
                  Callback = function() serverhop() end
                },
                Ignore = {
                    Name = "Okay!",
                    Callback = function() end
                }
            }
        })
    end
})


-- Init
coroutine.resume(coroutine.create(function ()
    for _,v in pairs(Players:GetChildren()) do
        table.insert(PlayerList, v.Name)
        if servercheck(v) then
            table.insert(ServerAdmins, v.Name)
        end
    end
    PlayerDropdown:Refresh(PlayerList, _G.ChosenPlayer)

    local notifystring = ""
    local serveradmincount = 0
    for i,v in pairs(ServerAdmins) do
        notifystring = notifystring .. v
        serveradmincount = i
        if i == #ServerAdmins then continue end
        notifystring = notifystring .. ", "
    end
    if serveradmincount == 0 then
        notifystring = "This server has no admins in it!"
    else
        notifystring = serveradmincount .. " admins found in this server. Their names: " .. notifystring
    end
    Window:Prompt({
        Title = "Admin Notify",
        SubTitle = "Server Info",
        Content = notifystring,
        Actions = {
            SwitchServer = {
              Name = "Switch Servers",
              Callback = function() serverhop() end
            },
            Ignore = {
                Name = "Okay!",
                Callback = function() end
            }
        }
    })
    coroutine.yield()
end))


Players.PlayerAdded:Connect(function(plr)
    table.insert(PlayerList, plr.Name)
    PlayerDropdown:Refresh(PlayerList, _G.ChosenPlayer)

    if servercheck(plr) then
        table.insert(ServerAdmins, plr.Name)
        if _G.notify then
            Rayfield:Notify({
                Title = "Admin Notify",
                Content = "An admin joined the game. Name: " .. tostring(plr.Name),
                Duration = 6.5,
                Image = 4483362458,
                Actions = {
                    SHOP = {
                        Name = "Switch Servers",
                        Callback = function() serverhop() end
                   },
                   Ignore = {
                        Name = "Okay!",
                        Callback = function() end
                    }
                }
            })
        end
    end
end)

Players.PlayerRemoving:Connect(function(plr)
    for i,v in pairs(PlayerList) do
        if v == plr.Name then
            table.remove(PlayerList, i)
            PlayerDropdown:Refresh(PlayerList, _G.ChosenPlayer)
            break
        end
    end
    for i,v in pairs(ServerAdmins) do
        if v ==  plr.Name then
            table.remove(ServerAdmins, i)

            if _G.notify then
                Rayfield:Notify({
                    Title = "Admin Notify",
                    Content = "An admin left the game! Name: ".. tostring(plr.Name),
                    Duration = 6.5,
                    Image = 4483362458,
                    Actions = {
                       Ignore = {
                          Name = "Okay!",
                          Callback = function() end
                        }
                    }
                })
            end
            break
        end
    end
end)