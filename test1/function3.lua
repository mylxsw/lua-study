

function fwrite(fmt, ...)
    return io.write(string.format(fmt, ...))
end


fwrite("%d%d%s\n", 5, 6, "hello")
