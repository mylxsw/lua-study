function max(a, b)
    local temp = nil
    if a > b then
        temp = a
    else 
        temp = b
    end
    return temp
end


print("最大值为: " .. max(5, 22))
