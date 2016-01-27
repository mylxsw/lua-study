
function send(x)
    coroutine.yield(x)
end

function receive(producer)
    local status, res = coroutine.resume(producer)
    return res
end

function producer()
    return coroutine.create(function()
        while true do 
            io.write("$ ")
            local x = io.read()
            send(x)
        end
    end)
end

function filter(producer)
    return coroutine.create(function()
        for line = 1, math.huge do
            local x = receive(producer)
            print(string.format("执行第%5d个命令: %s", line, x))
            send(x)
        end
    end)
end

function consumer(producer)
    while true do 
        local x = receive(producer)
        if x == 'exit' then
            os.exit()
        end

        os.execute(x)
    end
end


consumer(filter(producer()))
