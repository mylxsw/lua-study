#!/usr/bin/env lua

local days = {"Sunday", "Monday", "Thesday", "Wednesday", "Thursday", "Friday", "Saturday"}

local revDays = {}
for k, v in pairs(days) do
    revDays[v] = k
end

local x = "Thesday"
print(x .. " : " .. revDays[x])

