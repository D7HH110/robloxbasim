-- CreateRemoteEvent.lua
local ReplicatedStorage = game:GetService("ReplicatedStorage")

if not ReplicatedStorage:FindFirstChild("SpawnPetEvent") then
    local event = Instance.new("RemoteEvent")
    event.Name = "SpawnPetEvent"
    event.Parent = ReplicatedStorage
end
