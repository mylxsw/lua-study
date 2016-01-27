
local foo = {}

local function getName()
    return "Lucy"
end

function foo.Greeting()
    print("hello " .. getName())
end

return foo
