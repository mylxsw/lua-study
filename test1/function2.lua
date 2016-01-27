

function foo1(...)
    print("calling foo: ", ...)
    return foo(...)
end

function foo(...)
    print("args: ", ...)
end


foo1("a", "b", "c")
