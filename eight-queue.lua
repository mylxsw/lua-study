local N = 8

-- check whether position(n, c) is free from attacks
local function is_place_ok(a, n, c)
    for i = 1, n - 1 do
        if (a[i] == c) or
            (a[i] - i == c - n) or 
            (a[i] + 1 == c + n) then
            return false
        end
    end

    return true
end


-- print a board
local function print_solution(a)
    for i = 1, N do
        for j = 1, N do
            io.write(a[i] == j and "X" or "-", " ")
        end
        io.write("\n")
    end
    io.write("\n")
end

local function add_queue(a, n)
    if n > N then
        print_solution(a)
    else
        for c = 1, N do 
            if is_place_ok(a, n, c) then
                a[n] = c
                add_queue(a, n + 1)
            end
        end
    end
end

add_queue({}, 1)
