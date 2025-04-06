local TeleportService = game:GetService("TeleportService")

local PLACE_ID1 = 537413528 
local PLACE_ID2 = 6170705260 

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "SnowHub",
   Icon = "heart", 
   LoadingTitle = "Loading Supported Games",
   LoadingSubtitle = "By SnowLover",
   Theme = {
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
})

local Tab1 = Window:CreateTab("Games", "arrow-down-to-line")
local Tab5 = Window:CreateTab("Credits", "user")

local Button = Tab1:CreateButton({
    Name = "Build A Boat",
    Callback = function()
        local player = game.Players.LocalPlayer
        TeleportService:Teleport(PLACE_ID1, player)
    end,
})

local Button = Tab1:CreateButton({
    Name = "Blending Simulator 2",
    Callback = function()
        local player = game.Players.LocalPlayer
        TeleportService:Teleport(PLACE_ID2, player)
    end,
})

local Label = Tab1:CreateLabel("And more to come!", "fast-forward")

local Section = Tab5:CreateSection("Founder")

local Label = Tab5:CreateLabel("SnowLover", "crown")

local Section = Tab5:CreateSection("Tester")

local Label = Tab5:CreateLabel("Thanks to 0o7m4 for testing and the mental support he gave me!", "key")

local Section = Tab5:CreateSection("Other")

local Label = Tab5:CreateLabel("And you! " .. player.Name .. " for using this script", "users")

task.wait(3)

Rayfield:Notify({
   Title = "Unsupported Game!",
   Content = "Hey here are the ones that work!",
   Duration = 10,
   Image = "file-search",
})
