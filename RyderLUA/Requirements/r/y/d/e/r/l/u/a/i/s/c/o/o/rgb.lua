--[[

this file was coded by chase the puppy

discord : https://discord.gg/DQThMRDTGU
https://discord.gg/DQThMRDTGU
https://discord.gg/DQThMRDTGU

join up for the fun!!!
]]--


function clearScreen()
    if os.name == "Windows" then
        os.execute("cls")
    else
        os.execute("clear")
    end
end

-- Function to change text color
function changeColor(color)
    io.write(string.format("\27[%dm", color))
end

-- List of ANSI escape codes for different colors
local colors = {31, 32, 33, 34, 35, 36}

-- Loop to change text color every second
while true do
    clearScreen()
    for _, color in ipairs(colors) do
        changeColor(color)
        print("Changing Text Color Every Second")
        os.execute("sleep 1")  -- Wait for 1 second
    end
end
