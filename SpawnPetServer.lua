-- SpawnPetServer.lua
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local PetsFolder = ReplicatedStorage:WaitForChild("Pets")
local SpawnEvent = ReplicatedStorage:WaitForChild("SpawnPetEvent")

SpawnEvent.OnServerEvent:Connect(function(player, petName, weight, age)
    local petModel = PetsFolder:FindFirstChild(petName)
    if petModel then
        local petClone = petModel:Clone()
        petClone.Parent = workspace
        petClone:SetPrimaryPartCFrame(player.Character.PrimaryPart.CFrame + Vector3.new(5,0,0))
        
        -- حفظ البيانات داخل النموذج
        local Attributes = {"Weight", "Age", "Owner"}
        petClone:SetAttribute("Weight", weight)
        petClone:SetAttribute("Age", age)
        petClone:SetAttribute("Owner", player.Name)
    end
end)
