-- okk.lua
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")

-- ربط RemoteEvent
local SpawnEvent = ReplicatedStorage:WaitForChild("SpawnPetEvent")

-- واجهة GUI
local player = Players.LocalPlayer
local PlayerGui = player:WaitForChild("PlayerGui")

local ScreenGui = Instance.new("ScreenGui", PlayerGui)
ScreenGui.Name = "PetSpawnerGUI"

local Frame = Instance.new("Frame", ScreenGui)
Frame.Size = UDim2.new(0, 300, 0, 200)
Frame.Position = UDim2.new(0.5, -150, 0.5, -100)
Frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)

-- إدخال اسم الحيوان
local TextBox = Instance.new("TextBox", Frame)
TextBox.PlaceholderText = "اسم الحيوان"
TextBox.Size = UDim2.new(0, 280, 0, 40)
TextBox.Position = UDim2.new(0, 10, 0, 10)

-- إدخال الوزن
local WeightBox = Instance.new("TextBox", Frame)
WeightBox.PlaceholderText = "الوزن"
WeightBox.Size = UDim2.new(0, 280, 0, 40)
WeightBox.Position = UDim2.new(0, 10, 0, 60)

-- إدخال العمر
local AgeBox = Instance.new("TextBox", Frame)
AgeBox.PlaceholderText = "العمر"
AgeBox.Size = UDim2.new(0, 280, 0, 40)
AgeBox.Position = UDim2.new(0, 10, 0, 110)

-- زر الرسبن
local Button = Instance.new("TextButton", Frame)
Button.Text = "Spawn"
Button.Size = UDim2.new(0, 280, 0, 40)
Button.Position = UDim2.new(0, 10, 0, 160)

Button.MouseButton1Click:Connect(function()
    local name = TextBox.Text
    local weight = tonumber(WeightBox.Text)
    local age = tonumber(AgeBox.Text)
    if name ~= "" and weight and age then
        SpawnEvent:FireServer(name, weight, age)
    end
end)
