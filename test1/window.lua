
function Window (options)
    -- check mandatory options
    if type(options.title) ~= "string" then
        error("no title")
    elseif type(options.width) ~= "number" then
        error("no width")
    elseif type(options.height) ~= "number" then
        error("no height")
    end

    print ("title: " .. options.title)
    print ("width: " .. options.width)
    print ("height: " .. options.height)
    print ("x: " .. (options.x or 0))
    print ("y: " .. (options.y or 0))
end


Window({
    title = "Hello",
    width = 15,
    height = 20,
    x = 10
})

