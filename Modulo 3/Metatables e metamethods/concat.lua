local animals1 = {
    Cats = 4,
    Dogs = 2
}

local animals2 = {
    Cats = 6,
    Sheep = 1
}

local meta = {}

function meta.__concat(a, b)
    local result = {}
    setmetatable(result, meta)
    for key, value in pairs(a) do
        result[key] = value
    end
    for key, value in pairs(b) do
        result[key] = value
    end
    return result
end

setmetatable(animals1, meta)
setmetatable(animals2, meta)

local result = animals1 ..animals2

for key, value in pairs(result) do
    print(key ..": " ..value)
end