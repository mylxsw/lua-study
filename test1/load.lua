
print "enter your expression:"

local l = io.read()
local func = assert(load("return " .. l))

-- print("the value of your expression is " .. func())

for i = 1, 20 do 
    x = i -- 注意，这里的x必须是全局的在f函数中才能调用
    print(string.rep("*", func()))
end

