

-- add the elements of sequence 'a'
function add(a)
    local sum = 0
    for i = 1, #a  do 
        sum = sum + a[i]
    end
    return sum
end

print(add({1, 2, 3, 5}))
