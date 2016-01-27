
local res, err = xpcall(function()
    error("string expected", 2)
end, debug.traceback)

print (err)
