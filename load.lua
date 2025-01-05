getgenv().AuthTime = tick()

local game_list = {
    -- ninja legends
    ["1335695570"] = "https://raw.githubusercontent.com/Pri4c1lla/roblox-projects/main/Source/Ninja%20Legends.lua",

    -- Zombie Merge Tycoon
    ["3997370929"] = "https://raw.githubusercontent.com/Pri4c1lla/roblox-projects/main/Source/Zombie%20Merge%20Tycoon.lua",

    -- Merge Toy
    ["6483696355"] = "https://raw.githubusercontent.com/Pri4c1lla/roblox-projects/main/Source/Merge%20Toy.lua",

    -- GEF
    ["5216419122"] = "https://raw.githubusercontent.com/Pri4c1lla/roblox-projects/main/Source/gef.lua"
}

PlaceId, JobId, GameId = game.PlaceId, game.JobId, game.gameId

for ID, url in next, (game_list) do
    if string.find(ID,tostring(GameId)) or string.match(ID,tostring(GameId)) then
        if url ~= nil then
            local s,e = pcall(function() loadstring(game:HttpGet(url,true))(); end)
            if s then
                warn("Shion✨ Success to load!")
            end
            if e then
                warn("Shion✨ Failed to load!")
                game.StarterGui:SetCore("SendNotification", {Icon = "rbxassetid://9419562118";Title = "Failed To Load, Error Below Here.", Text = e,})
            	break;
            end
        end
    end
end
