
local fp = require("my")
fp.Greeting()

print(string.byte("abc", 1, 3))
print(string.char(97, 96, 98))
print(string.byte(string.char(97, 96, 98), 1, 3))
print(string.char())

print(string.upper("Hello Lua"))
print(string.lower("Hello Lua"))
print(string.len("Hello lua"))  -- 不推荐使用，使用#代替
print(#"Hello lua") -- # 后面跟字符串标示获取字符串长度，推荐


print(string.find("abc cba", "ab"))
print(string.find("abc cba", "ab", 2))
print(string.find("abc cba", "ba", -1))
print(string.find("abc cba", "ba", -3))
print(string.find("abc cba", "(%a+)", 1))
print(string.find("abc cba", "(%a+)", 1, true))

print(string.format("%.4f", 3.1415926))
print(string.format("%d %x %o", 31, 31, 31))
local d = 4
local m = 1
local y = 2016
print(string.format("%s %02d/%02d/%d", "Today is ", d, m, y))

print(string.rep("abc", 3))
local filename = "Hello, world.txt"
local start_index, _ = string.find(filename, ".", 1, true)
print(string.sub(filename, start_index)) 

print(string.reverse("Hello world"))
