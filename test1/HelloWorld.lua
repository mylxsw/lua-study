function main()
    print("Hello World")
    print("Hello " .. " Tom, You are the " .. " Best")
    print( 0 .. 1)
    print( string.format("%s-%s", "hello", "world"))
    print(string.format("%d-%s-%.2f", 123, "world", 1.21))
end

main()

print(type("hello, world"))
print(type(print))
print(type(main))
print(type(true))
print(type(305.5))
print(type(nil))

local order = 3.0
local score = 98.4

print(math.floor(order))
print(math.ceil(score))

local a = {x= 1, y =2}
local b = {x= 2, y = 3}

if a == b then
    print ("a==b")
else 
    print ("a~=b")
end


