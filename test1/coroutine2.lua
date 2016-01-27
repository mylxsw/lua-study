
co = coroutine.create(function()
    for i = 1, 10 do
        print("co", i)
        coroutine.yield()
    end
end)

print(coroutine.status(co))
coroutine.resume(co)
print(coroutine.status(co))
coroutine.resume(co)
coroutine.resume(co)

co = coroutine.create(function(a, b, c)
    print("co", a, b, c + 2)
    coroutine.yield(a + b, a - b)
end)

print(coroutine.resume(co, 20, 10, 14))
