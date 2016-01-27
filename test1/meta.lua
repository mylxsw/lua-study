
local set1 = {10, 20, 30}
local set2 = {20, 40, 50}

local union = function(self, another)
    local set = {}
    local result = {}

    -- 利用数组确保集合互异性
    for i, j in pairs(self) do set[j] = true end
    for i, j in pairs(another) do set[j] = true end

    -- 加入结果集合
    for i, j in pairs(set) do table.insert(result, i) end
    return result
end

setmetatable(set1, {__add = union})

local set3 = set1 + set2
for _, j in pairs(set3) do 
    io.write(j .. " ")
end

mytable = setmetatable({key1 = "value1"},{
    __index = function(self, key)
        if key == "key2" then
            return "metatablevalue"
        end
    end
})

print(mytable.key1, mytable.key2)


arr = {1, 2, 3, 4}
arr = setmetatable(arr, {__tostring = function(self) 
    local result = '{'
    local sep = ''
    for _, i in pairs(self) do 
        result = result .. sep .. i
        sep = ', '
    end
    result = result .. '}'
    return result
end
})
print(arr)

functor = {}
function func1(self, arg)
    print("called from", arg)
end

setmetatable(functor, {__call = func1})

functor("functor")
print(functor)


object = setmetatable({}, {__metatable = "You cannot access here"})
print(getmetatable(object))

