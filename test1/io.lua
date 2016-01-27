
file = io.input("test1.txt")

repeat
    line = io.read()
    if nil == line then
        break
    end

    print(line)
until(false)

io.close(file)

file = io.open("test1.txt", "a+")
io.output(file)
io.write("\nHello world")
io.close(file)
