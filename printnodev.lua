#!/usr/bin/env lua

local vpat = "([%d]+.[%d]+.[%d]+)"

function getnodev(str)
    return io.popen("node --versiond")
        :read("*a")
        :gsub("\n", "")
        :match(vpat)
end

assert(getnodev():match(vpat))

print(getnodev())
