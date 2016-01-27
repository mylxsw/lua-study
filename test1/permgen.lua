
local function printResult(a)
	for i = 1, #a do
		io.write(a[i], " ")
	end
	io.write("\n")
end

local function permgen(a, n)
	n = n or #a
    if n <= 1 then
        printResult(a)
    else
        for i = 1, n do
            a[n], a[i] = a[i], a[n]
            permgen(a, n - 1)
            a[n], a[i] = a[i], a[n]
        end
    end
end

permgen({1, 2, 4})

print("--------")

local function permgen2(a, n)
    n = n or #a
    if n <= 1 then
        coroutine.yield(a)
    else
        for i = 1, n do
            a[n], a[i] = a[i], a[n]
            permgen2(a, n - 1)
            a[n], a[i] = a[i], a[n]
        end
    end
end

local function permutations(a)
    -- local co = coroutine.create(function() permgen2(a) end)
    -- return function() 
    --     local code, res = coroutine.resume(co)
    --     return res
    -- end
    -- 与coroutine.create不同的是，coroutine.wrap会返回一个函数
    return coroutine.wrap(function() permgen2(a) end)
end


for p in permutations{"a", "b", "c"} do
    printResult(p)
end

