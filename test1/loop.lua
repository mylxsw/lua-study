
local x = 10
while x > 0 do
    x = x - 1
    if x > 5 and x < 7 then goto continue end
    
    local var  = "hello" .. x
    print(var)

    ::continue::
end

