local RankID = 79833425
local RankNumeric = 0
local GroupID = 14007434
local RankName = "Premium"
local data = game:service"HttpService":JSONDecode(game:HttpGet("https://groups.roblox.com/v1/groups/"..tostring(GroupID).."/roles"))
for i,v in pairs(data.roles) do
    if tonumber(v.id) == RankID and v.name == RankName then
        RankNumeric = tonumber(v.rank)
    end
end
return RankNumeric