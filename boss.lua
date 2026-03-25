local loadstrings = {
    'loadstring(game:HttpGet(('https://raw.githubusercontent.com/itsyouranya/free/main/Anya%20Stands%20Awakening%20Helper.lua'),true))()',
    'loadstring(game:HttpGet("https://raw.githubusercontent.com/sunexn/standsawakening/main/uncanny.lua",true))()'
} -- table closed properly

for i = 1, 2 do
    spawn(function()
        local f, err = loadstring(loadstrings[i])
        if not f then
            warn("Compile error #" .. i .. ": " .. err)
            return
        end
        pcall(f)
    end)
end
