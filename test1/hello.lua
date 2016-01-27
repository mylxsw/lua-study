-- defines a factorial function 
function fact(n)
    if n == 0 then
        return 1
    else 
        return n * fact(n - 1)
    end
end

print("enter a number:")
a = io.read("*n")
print(fact(a))

--[[
This is comment area and all message in here are comments
Hello, world program is verfy simple, but we can not learn 
too much things from here.
--]]

