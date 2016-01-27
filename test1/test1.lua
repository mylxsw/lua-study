local a={"a", "b", "c", "d"}
for i, v in ipairs(a) do
    print("index: " .. i .. " value: " .. v)
end

local days = {
    "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"
}

local revDays = {}
for k, v in pairs(days) do 
    revDays[v] = k
end

for k, v in pairs(revDays) do
    print("k: " .. k .. " v:" .. v)
end
