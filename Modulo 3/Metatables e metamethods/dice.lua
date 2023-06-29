local utils = require 'utils'
utils.enableUtf8()

-- Create Dice
local dice = {
    sides = 6,
    result = 1, 
    characteres = {"⚀", "⚁", "⚂", "⚃", "⚄", "⚅"}
}

function dice:throw()
    self.result = math.random(1, self.sides)
    return self.result
end

function dice:tostring()
    return string.format("Dado de %d lados: %s (%d)", self.sides, self.characteres[self.result], self.result)
end

-- Create metatable

local meta = {}

function meta.__call()
    return dice:throw()
end
-- meta.__call = dice.throw

function meta.__tostring()
    return dice:tostring()
end

setmetatable(dice, meta)

print(dice())
print(dice)