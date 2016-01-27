
--local table = require("table")

local tblTest1 = {1, a = 2, 3}
print(table.concat(tblTest1, "|"))

local a = {1, 3, 5, "a. ", "usc"}
print(table.concat(a, "--"))

local b = {1, 8}
table.insert(b, 1, 3)
print(b[1], b[2], b[3])
print(table.remove(b, 1))
print(b[1], b[2], b[3], b[4])


