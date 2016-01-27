
local _M = {}

local mt = {__index = _M}

function _M.deposit(self, v)
    self.balance = self.balance + v
end

function _M.withdraw(self, v)
    if self.balance > v then
        self.balance = self.balance - v
    else
        error("insufficient funds")
    end
end

function _M.new(self, balance)
    balance = balance or 0
    setmetatable({balance = balance}, mt)
    return o
end

return _M
