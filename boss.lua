local loadstrings = {
    "loadstring(game:HttpGet(('https://raw.githubusercontent.com/itsyouranya/free/main/Anya%20Stands%20Awakening%20Helper.lua'),true))()",
    "loadstring(game:HttpGet("https://raw.githubusercontent.com/sunexn/standsawakening/main/uncanny.lua",true))()"
}

for i = 1, 2 do
    task.spawn(function()
        local func = loadstring(loadstrings[i])
        if func then
            pcall(func)
        else
            warn("Failed to load string #" .. i)
        end
    end)
end
