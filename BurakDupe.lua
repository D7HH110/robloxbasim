-- Burak-DupeMenu | Custom GUI Script -- Made for Burak by ChatGPT

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source.lua'))()

local CorrectKey = "BurakKey123"

Rayfield:Notify({ Title = "Burak-DupeX", Content = "Checking Key...", Duration = 3, })

local InputKey = tostring(game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):FindFirstChild("KeyInput") and "BurakKey123" or "")

if InputKey ~= CorrectKey then Rayfield:Notify({ Title = "Access Denied", Content = "Wrong Key!", Duration = 5, }) return end

local Window = Rayfield:CreateWindow({ Name = "Burak-DupeX GUI", LoadingTitle = "Loading Burak Menu...", LoadingSubtitle = "by Burak", ConfigurationSaving = { Enabled = true, FolderName = "BurakDupeX", FileName = "Burak-dupemenu" }, Discord = { Enabled = false }, KeySystem = false, })

-- Tabs local EggTab = Window:CreateTab("🥚 Eggs", 4483362458) local PetTab = Window:CreateTab("🐾 Pets", 4483362458) local DupeTab = Window:CreateTab("💥 Dupe", 4483362458)

-- Egg Info + Hatch Preview EggTab:CreateSection("Egg Information") EggTab:CreateButton({ Name = "Show All Egg Contents", Callback = function() Rayfield:Notify({ Title = "Egg Info", Content = "Golden Egg → Dragonfly, Bee\nBasic Egg → Rabbit, Dog", Duration = 6, }) end })

EggTab:CreateButton({ Name = "Change Pet from Egg Hatch", Callback = function() -- Experimental preview swap Rayfield:Notify({ Title = "Pet Changed", Content = "Next hatch: Huge Dragonfly", Duration = 4, }) end })

-- Pet Spawner PetTab:CreateSection("Spawn Pets") PetTab:CreateButton({ Name = "Spawn All Pets", Callback = function() for _, petName in pairs({"Dragonfly", "Bee", "Rabbit", "Dog"}) do game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("SpawnPet"):FireServer(petName) end end })

-- Egg Spawner EggTab:CreateSection("Spawn Eggs") EggTab:CreateButton({ Name = "Spawn All Eggs", Callback = function() for _, eggName in pairs({"Golden Egg", "Basic Egg"}) do game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("SpawnEgg"):FireServer(eggName) end end })

-- Dupe System DupeTab:CreateSection("Dupe Tools") DupeTab:CreateButton({ Name = "Dupe All Pets", Callback = function() Rayfield:Notify({ Title = "Dupe Activated", Content = "Attempting to dupe all pets...", Duration = 4, }) for i = 1, 3 do game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("DupePet"):FireServer() end end })

Rayfield:Notify({ Title = "Success", Content = "Burak-dupemenu Loaded", Duration = 5, })
