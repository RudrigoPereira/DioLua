-- local Banana = require 'banana'

-- local b1 = Banana:new(true)
-- local b2 = Banana:new(true)
-- local b3 = Banana:new(false)

-- b1.madura = false

-- print(b1:isGood())
-- print(b2:isGood())
-- print(b3:isGood())

os.execute("chcp 65001 > NUL")

local Creeper = require 'creatures.creeper'
local Sheep = require 'creatures.sheep'

local myCreeper = Creeper:new()
local mySheep = Sheep:new()

local creatures = {
    myCreeper,
    mySheep
}

myCreeper.health = 0

for _, creature in pairs(creatures) do
    local hostileString = creature:isHostile() and "hostil" or "dócil"
    local aliveString = creature:isAlive() and "viva" or "morta"
    print(string.format("Nossa criatura %s é %s, e ela está %s.", creature:getName(), hostileString, aliveString))
end

-- myCreeper.health = 0
-- print(string.format("name: %s", myCreeper:getName()))
-- print(string.format("isHealthFull: %s", myCreeper:isHealthFull()))
-- print(string.format("isAlive: %s", myCreeper:isAlive()))
-- print(string.format("isDead: %s", myCreeper:isDead()))