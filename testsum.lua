#!/usr/bin/env lua

function sum(a, b)
    return tonumber(io.popen("./sum.lua " .. a .. " " .. b)
        :read("*a")
        :gsub("\n", ""), 10)
end

-- Test #1
assert(sum(10, 20) == 30, "Test #1 failed")

-- Test #2
assert(sum(3, 12) == 15, "Test #2 failed")
