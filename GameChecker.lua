local link = "https://raw.githubusercontent.com/Snow-Lova/SnowHub/refs/heads/main/"

local games = {
    [537413528] = "1.lua", -- Build A Boat
    [6170705260] = "2.lua", -- Blending Simulator 2
    [87700573492940] = "4.lua", -- Untitled Drill Game
}

local file = games[game.PlaceId]

if file then
    loadstring(game:HttpGet(link .. file))()
else
    warn("Game not supported")
    loadstring(game:HttpGet(link .. "Unsupported.lua"))()
end
