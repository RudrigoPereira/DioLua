local dictionary = {}

local meta = {
    __index = function (t, key)
        return nil
    end,

    __newindex = function (t, key, value)
        rawset(t, key, value)
    end
}

setmetatable(dictionary, meta)