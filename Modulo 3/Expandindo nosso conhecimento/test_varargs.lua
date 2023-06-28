-- varargs
-- Variable Arguments
-- Argumentos Variáveis

local function calculateAverage(x, y, z, ...)
    local list = {x, y, z, ...}
    local sum = 0
    for key, value in pairs(list) do
        sum = sum + value
    end
    local count = #list
    return count ~= 0 and (sum / count) or 0
end

-- prints
print(calculateAverage()) -- 0
print(calculateAverage(1)) -- 1
print(calculateAverage(1, 2, 3)) -- 2
print(calculateAverage(2, 2, 10)) -- 4.66
print(calculateAverage(1, 2, 3, 500, 404, 1920)) -- 471.66