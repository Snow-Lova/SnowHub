local CZxqB9Ft6WpYoLmE1rAV = {
    TextColor = Color3.fromRGB(25, 25, 25),

    Background = Color3.fromRGB(200, 215, 230),
    Topbar = Color3.fromRGB(180, 200, 215),
    Shadow = Color3.fromRGB(160, 175, 190),

    NotificationBackground = Color3.fromRGB(185, 200, 215),
    NotificationActionsBackground = Color3.fromRGB(240, 240, 240),

    TabBackground = Color3.fromRGB(170, 190, 210),
    TabStroke = Color3.fromRGB(150, 170, 190),
    TabBackgroundSelected = Color3.fromRGB(235, 240, 245),
    TabTextColor = Color3.fromRGB(30, 30, 30),
    SelectedTabTextColor = Color3.fromRGB(20, 100, 160),

    ElementBackground = Color3.fromRGB(190, 205, 220),
    ElementBackgroundHover = Color3.fromRGB(200, 215, 230),
    SecondaryElementBackground = Color3.fromRGB(175, 190, 205),
    ElementStroke = Color3.fromRGB(145, 160, 175),
    SecondaryElementStroke = Color3.fromRGB(130, 145, 160),

    SliderBackground = Color3.fromRGB(80, 140, 200),
    SliderProgress = Color3.fromRGB(60, 120, 190),
    SliderStroke = Color3.fromRGB(70, 130, 200),

    ToggleBackground = Color3.fromRGB(175, 190, 205),
    ToggleEnabled = Color3.fromRGB(60, 130, 190),
    ToggleDisabled = Color3.fromRGB(130, 145, 160),
    ToggleEnabledStroke = Color3.fromRGB(70, 140, 200),
    ToggleDisabledStroke = Color3.fromRGB(140, 155, 170),
    ToggleEnabledOuterStroke = Color3.fromRGB(80, 150, 210),
    ToggleDisabledOuterStroke = Color3.fromRGB(160, 170, 180),

    DropdownSelected = Color3.fromRGB(200, 215, 230),
    DropdownUnselected = Color3.fromRGB(185, 200, 215),

    InputBackground = Color3.fromRGB(215, 225, 235),
    InputStroke = Color3.fromRGB(160, 175, 190),
    PlaceholderColor = Color3.fromRGB(100, 115, 130)
}

local function R8kzB1nDqV4YwXmE7Hp3()
  local Players = game:GetService("Players")
  local StarterGui = game:GetService("StarterGui")
  local TweenService = game:GetService("TweenService")
  local player = Players.LocalPlayer
end

local function aG7xM2pLq9TfWvK1zYdE()
  R8kzB1nDqV4YwXmE7Hp3()
  local Section = Tab5:CreateSection("Founder")
  local Label = Tab5:CreateLabel("SnowLover", "crown")
  local Section = Tab5:CreateSection("Tester")
  local Label = Tab5:CreateLabel("Thanks to 0o7m4 for testing and the mental support he gave me!", "key")
  local Section = Tab5:CreateSection("Other")
  local Label = Tab5:CreateLabel("And you! " .. player.Name .. " for using this script", "users")
end

local function Z9pLdX3qAeK7YvMtR1Cf()
  R8kzB1nDqV4YwXmE7Hp3()
  local runtimeItems = workspace:FindFirstChild("RuntimeItems")
  if not runtimeItems then return end
  local ch = player.Character or player.CharacterAdded:Wait()
  local HumanoidRootPart = ch:WaitForChild("HumanoidRootPart")
end

local function Xq7PfMLBvA3KzW9YtnRc()
  R8kzB1nDqV4YwXmE7Hp3()
  for _, item in ipairs(runtimeItems:GetDescendants()) do
    if item:IsA("Model") then
      if item.PrimaryPart then
        local distance = (item.PrimaryPart.Position - HumanoidRootPart.Position).Magnitude
        if distance <= 5 then
          local offset = HumanoidRootPart.CFrame.LookVector * 5
          item:SetPrimaryPartCFrame(HumanoidRootPart.CFrame + offset)
        end
      end
    end
  end
end

local ESPHandles = {}
local oF8KZq3NRjWYamPXvCbl = false

local function N8eKwYaX4ZD1mrpFqVoT(object, color)
    if not object or not object.PrimaryPart then return end
    local highlight = Instance.new("Highlight")
    highlight.Name = "ESP_Highlight"
    highlight.Adornee = object
    highlight.FillColor = color
    highlight.OutlineColor = color
    highlight.Parent = object
    local billboard = Instance.new("BillboardGui")
    billboard.Name = "ESP_Billboard"
    billboard.Adornee = object.PrimaryPart
    billboard.Size = UDim2.new(0, 200, 0, 50)
    billboard.StudsOffset = Vector3.new(0, 5, 0)
    billboard.AlwaysOnTop = true
    billboard.Parent = object
    local textLabel = Instance.new("TextLabel")
    textLabel.Text = object.Name
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.TextColor3 = color
    textLabel.BackgroundTransparency = 1
    textLabel.TextSize = 7
    textLabel.Parent = billboard
    ESPHandles[object] = {Highlight = highlight, Billboard = billboard}
end

local function GpZVt5xBRkW1CaoEyLq9()
    for obj, handles in pairs(ESPHandles) do
        if handles.Highlight then handles.Highlight:Destroy() end
        if handles.Billboard then handles.Billboard:Destroy() end
    end
    ESPHandles = {}
end

local function TqL4XjKNeFZRAwv8oMY9()
    R8kzB1nDqV4YwXmE7Hp3()
    GpZVt5xBRkW1CaoEyLq9()

    -- ESP for Items 
    local runtimeItems = workspace:FindFirstChild("RuntimeItems")
    if runtimeItems then
        for _, item in ipairs(runtimeItems:GetDescendants()) do
            if item:IsA("Model") then
                N8eKwYaX4ZD1mrpFqVoT(item, Color3.new(1, 0, 0)) 
            end
        end
    end

    -- ESP mobs
    local baseplates = workspace:FindFirstChild("Baseplates")
    if baseplates and #baseplates:GetChildren() >= 2 then
        local secondBaseplate = baseplates:GetChildren()[2]
        local centerBaseplate = secondBaseplate and secondBaseplate:FindFirstChild("CenterBaseplate")
        local animals = centerBaseplate and centerBaseplate:FindFirstChild("Animals")
        if animals then
            for _, animal in ipairs(animals:GetDescendants()) do
                if animal:IsA("Model") then
                    N8eKwYaX4ZD1mrpFqVoT(animal, Color3.new(1, 0, 1))
                end
            end
        end
    end

    local nightEnemies = workspace:FindFirstChild("NightEnemies")
    if nightEnemies then
        for _, enemy in ipairs(nightEnemies:GetDescendants()) do
            if enemy:IsA("Model") then
                N8eKwYaX4ZD1mrpFqVoT(enemy, Color3.new(0, 0, 1))
            end
        end
    end

    local destroyedHouse = workspace:FindFirstChild("RandomBuildings") and workspace.RandomBuildings:FindFirstChild("DestroyedHouse")
    local zombiePart = destroyedHouse and destroyedHouse:FindFirstChild("StandaloneZombiePart")
    local zombies = zombiePart and zombiePart:FindFirstChild("Zombies")
    if zombies then
        for _, zombie in ipairs(zombies:GetChildren()) do
            if zombie:IsA("Model") then
                N8eKwYaX4ZD1mrpFqVoT(zombie, Color3.new(0, 1, 0))
            end
        end
    end
end

local function mVR6KytPdWJqXoZBA19f()
    while oF8KZq3NRjWYamPXvCbl do
        TqL4XjKNeFZRAwv8oMY9()
        wait() 
    end
end

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "SnowHub",
   Icon = "heart", 
   LoadingTitle = "Dead Rails",
   LoadingSubtitle = "By SnowLover",
   Theme = CZxqB9Ft6WpYoLmE1rAV
})
local Tab1 = Window:CreateTab("Game", "ellipsis")
local Tab5 = Window:CreateTab("Credits", "user")
R8kzB1nDqV4YwXmE7Hp3()
local Section = Tab5:CreateSection("Founder")
local Label = Tab5:CreateLabel("SnowLover", "crown")
local Section = Tab5:CreateSection("Tester")
local Label = Tab5:CreateLabel("Thanks to 0o7m4 for testing and the mental support he gave me!", "key")
local Section = Tab5:CreateSection("Other")
local Label = Tab5:CreateLabel("And you! " .. player.Name .. " for using this script", "users")
local Toggle = Tab1:CreateToggle({
    Name = "Bring Nearby",
    CurrentValue = false,
    Flag = "ToggleMoveNearbyItems",
    Callback = function(Value)
        if Value then
            Z9pLdX3qAeK7YvMtR1Cf()
            Xq7PfMLBvA3KzW9YtnRc()
        end
    end,
})
local espToggle = Tab1:CreateToggle({
    Name = "ESP Items and Mobs",
    CurrentValue = false,
    Flag = "ESPAllToggle",
    Callback = function(Value)
        oF8KZq3NRjWYamPXvCbl = Value
        if Value then
            TqL4XjKNeFZRAwv8oMY9()
            coroutine.wrap(mVR6KytPdWJqXoZBA19f)()
        else
            GpZVt5xBRkW1CaoEyLq9()
        end
    end
})
