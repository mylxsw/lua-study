
local network = {
    {name = "grauna", IP = "210.199.10.33"},
    {name = "arraial", IP = "201.199.122.33"},
    {name = "lua", IP = "111.123.23.120"},
    {name = "derain", IP = "201.121.11.24"}
}

table.sort(network, function (a, b) return (a.name > b.name) end)

function derivative(f, delta)
    delta = delta or 1e-4
    return function(x)
        return (f(x + delta) - f(x)) / delta
    end
end


local c = derivative(math.sin)
print(c(10))
