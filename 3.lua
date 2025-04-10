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
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "NOT MINE",
   Icon = "heart", 
   LoadingTitle = "Dead Rails",
   LoadingSubtitle = "By CyberSeall",
   Theme = CZxqB9Ft6WpYoLmE1rAV
})
local Tab = Window:CreateTab("Crazy", 4483362458) -- Title, Image
local Label = Tab:CreateLabel("Would you like to use the script from CyberSeall", 4483362458, Color3.fromRGB(255, 255, 255), false)

local Label = Tab:CreateLabel("https://discord.gg/KQMzeSpNbY", 4483362458, Color3.fromRGB(255, 255, 255), false)
local Button = Tab:CreateButton({
   Name = "Load script",
   Callback = function()
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/aca362a74eb2f7c5f383969177c26b6b.lua"))()
   end,
})
local Button = Tab:CreateButton({
   Name = "Copy script",
   Callback = function()
    setclipboard('loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/aca362a74eb2f7c5f383969177c26b6b.lua"))()')
   end,
})
local Button = Tab:CreateButton({
   Name = "Discord",
   Callback = function()
   setclipboard("https://discord.gg/KQMzeSpNbY")
   end,
})

Rayfield:Notify({
   Title = "This is the best script for dead rails",
   Content = "Go support CyberSeall he made this and I don't want to take credit! This is just the best script for dead rails because this is so I won't make one myself.",
   Duration = 6.5,
   Image = 4483362458,
})
