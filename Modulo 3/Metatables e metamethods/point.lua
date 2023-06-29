local utils = require 'utils'
utils.enableUtf8()

function isTable(value)
    return type(value) == "table"
end

--Create Metatable

local meta = {}

meta.__add = function (a, b)
    local result = {}
    setmetatable(result, meta)
    result.x = (isTable(a) and a.x or a) + (isTable(b) and b.x or b)
    result.y = (isTable(a) and a.y or a) + (isTable(b) and b.y or b)
    return result
end

meta.__sub = function (a, b)
    local result = {}
    setmetatable(result, meta)
    result.x = (isTable(a) and a.x or a) - (isTable(b) and b.x or b)
    result.y = (isTable(a) and a.y or a) - (isTable(b) and b.y or b)
    return result
end

meta.__mul = function (a, b)
    local result = {}
    setmetatable(result, meta)
    result.x = (isTable(a) and a.x or a) * (isTable(b) and b.x or b)
    result.y = (isTable(a) and a.y or a) * (isTable(b) and b.y or b)
    return result
end

meta.__div = function (a, b)
    local result = {}
    setmetatable(result, meta)
    local BIsZero = b == 0
    if BIsZero then
        result.x = nil
        result.y = nil
        print("Operação inválida, impossivel dividir por zero.")
    else
        result.x = (isTable(a) and a.x or a) / (isTable(b) and b.x or b)
        result.y = (isTable(a) and a.y or a) / (isTable(b) and b.y or b)
    end
    return result
end

meta.__mod = function (a, b)
    local result = {}
    setmetatable(result, meta)
    result.x = (isTable(a) and a.x or a) % (isTable(b) and b.x or b)
    result.y = (isTable(a) and a.y or a) % (isTable(b) and b.y or b)
    return result
end

meta.__pow = function (a, b)
    local result = {}
    setmetatable(result, meta)
    result.x = (isTable(a) and a.x or a) ^ (isTable(b) and b.x or b)
    result.y = (isTable(a) and a.y or a) ^ (isTable(b) and b.y or b)
    return result
end


--Create Points

local mousePoint = {
    x = 400,
    y = 200
}
setmetatable(mousePoint, meta)

local webcamPoint = {
    x = 1800,
    y = 900
}
setmetatable(webcamPoint, meta)

--Test

local result = mousePoint + webcamPoint
print(string.format("x: %d, y: %d", result.x, result.y))
result = webcamPoint - mousePoint
print(string.format("x: %d, y: %d", result.x, result.y))
result = result + result
print(string.format("x: %d, y: %d", result.x, result.y))
result = mousePoint + 4
print(string.format("x: %d, y: %d", result.x, result.y))
result = 8 - mousePoint
print(string.format("x: %d, y: %d", result.x, result.y))
result = mousePoint * 2
print(string.format("x: %d, y: %d", result.x, result.y))
result = mousePoint / 0
if result.x ~= nil then
    print(string.format("x: %.2f, y: %.2f", result.x, result.y))
end
result = mousePoint % 90
print(string.format("x: %.2f, y: %.2f", result.x, result.y))
result = mousePoint ^ 2
print(string.format("x: %.2f, y: %.2f", result.x, result.y))