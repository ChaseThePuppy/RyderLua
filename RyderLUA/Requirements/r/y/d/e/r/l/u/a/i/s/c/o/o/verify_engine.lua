--[[

this file was coded by chase the puppy

discord : https://discord.gg/DQThMRDTGU
https://discord.gg/DQThMRDTGU
https://discord.gg/DQThMRDTGU

join up for the fun!!!
]]--

local md5 = require("md5")

-- Function to calculate the MD5 checksum of a file
function calculateChecksum(filename)
    local file = io.open(filename, "rb")
    if file then
        local content = file:read("*a")
        file:close()
        return md5.sum(content)
    else
        return nil
    end
end

-- Function to verify the integrity of a file
function verifyFile(filename, expectedChecksum)
    local actualChecksum = calculateChecksum(filename)
    if actualChecksum and actualChecksum == expectedChecksum then
        print(string.format("File '%s' has passed verification.", filename))
    else
        print(string.format("File '%s' has failed verification.", filename))
    end
end

-- Example verification
local filename = "example.txt"
local expectedChecksum = "5eb63bbbe01eeed093cb22bb8f5acdc3"  -- Replace with the expected checksum

verifyFile(filename, expectedChecksum)
