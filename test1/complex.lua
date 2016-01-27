local _M = {}

function _M.new(r, i)
    return {r= r, i=i}
end

_M.i = _M.new(0, 1)

function _M.add(c1, c2)
    return _M.new(c1.r + c2.r, c1.i + c2.i)
end

function _M.sub(c1, c2)
    return _M.new(c1.r - c2.r, c1.i - c2.i)
end

return _M
