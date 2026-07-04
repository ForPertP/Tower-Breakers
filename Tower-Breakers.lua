

--
-- Complete the 'towerBreakers' function below.
--
-- The function is expected to return an INTEGER.
-- The function accepts following parameters:
--  1. INTEGER n
--  2. INTEGER m
--


local fptr = io.open(os.getenv("OUTPUT_PATH"), "w")

local t = io.stdin:read("*n", "*l")

for titr = 1, t do
    local firstmultipleinput = {}
    for token in string.gmatch(io.stdin:read("*l"):gsub("%s+$", ""), "[^%s]+") do
        table.insert(firstmultipleinput, token)
    end

    local n = tonumber(firstmultipleinput[1]:match("^%s*(.-)%s*$"))

    local m = tonumber(firstmultipleinput[2]:match("^%s*(.-)%s*$"))

    local result = towerBreakers(n, m)

    fptr:write(result, "\n")
end

fptr:close()
