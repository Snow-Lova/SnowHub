local BuildABoat = 537413528
local BlendingSim2 = 6170705260
if game.PlaceId == BuildABoat then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Snow-Lova/SnowHub/refs/heads/main/1.lua"))()
elseif game.PlaceId == BlendingSim2 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Snow-Lova/SnowHub/refs/heads/main/2.lua"))()
else
    warn("Game not supported")
end
