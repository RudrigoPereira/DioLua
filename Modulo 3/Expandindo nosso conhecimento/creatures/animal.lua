local Creature = require 'creatures.creature'

local Animal = Creature:subclass("Animal")

function Animal:initialize(name)
    Creature.initialize(self, name)
end

function Animal:isHostile()
    return false
end

return Animal