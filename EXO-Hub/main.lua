-- EXO-HUB allows you to use this as a template, please replace the links inside of the loadstring with your own.

local ids = {
    189707, --Natural Disaster Survival
    192800, --Work at a pizza place
    8888615802, --Rainbow friends chapter 1  
    13622981808, --Rainbow friends chapter 2
    815405518, --The floor is lava
    11474660364, --Natural Disaster Survival With Free Items
    2901172949, --In Plain Sight 2
    142823291 -- MM2
}

if game.PlaceId == ids[1] then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxHackingProject/CHHub/main/games/Natural%20Disaster%20Survival.lua"))()
elseif game.PlaceId == ids[2] then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxHackingProject/CHHub/main/games/Work%20at%20a%20pizza%20place.lua"))()
elseif game.PlaceId == ids[3] then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxHackingProject/CHHub/main/games/rainbow%20friends%20chapter%201.lua"))()
elseif game.PlaceId == ids[4] then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxHackingProject/CHHub/main/games/rainbow%20friends%20chapter%202.lua"))()
elseif game.PlaceId == ids[5] then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxHackingProject/CHHub/main/games/The%20floor%20is%20lava.lua"))()
elseif game.PlaceId == ids[6] then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxHackingProject/CHHub/main/games/Natural%20Disaster%20Survival.lua"))()
elseif game.PlaceId == ids[7] then
    loadstring(game:HttpGet('https://raw.githubusercontent.com/sc0ttferren/robloxscripts/main/in-plain-sight2/mainGUI.lua'))()
elseif game.PlaceId == ids[8] then
    loadstring(game:HttpGet(('https://pastebin.com/raw/ZkbuUacr'),true))()
else
	loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxHackingProject/CHHub/main/games/Universal.lua"))()
end
