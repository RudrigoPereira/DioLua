--[[
    Olá NOME

    A previsão para hoje é um dia PREVISÃO
    A temperatura irá variar entre MIN C (MIN F) e MAX (MAX F)
]]

local name = "Rodrigo"
local forecast = "ensolarado"
local min = 22
local max = 35

local function convertCelsiusToFahrenheit(c)
    -- F = (C * 9/5) + 32
    local f = (c * 9/5) + 32
    return f
end

local minF = convertCelsiusToFahrenheit(min)
local maxF = convertCelsiusToFahrenheit(max)

print(string.format("Olá %s.", name))
print()
print(string.format("A previsão para hoje é um dia %s.", forecast))
print(string.format("A temperatura irá variar entre %d e %d graus Celsius (%.1f e %.1f Fahrenheit).", min, max, minF, maxF))