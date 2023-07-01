-- Constants
local ID = "kalandra.start"

-- Dependencies
local Node = require 'node'
local Choice = require 'choice'

-- Create node
local node = Node:new(ID) ---@type Node
node.title = "Praia de Kalandra"
node.description = "As ondas dançam, a brisa voa, enquanto o sol te acolhe com um calor agradável, este lugar é tão belo como dizem as lendas. Mas para a sua surpresa não tem mais ninguém aqui. Sua intuição diz que algo está errado."
node.header = [[
_\/_                 |                _\/_
/o\\             \       /            //o\
 |                 .---.                |
_|_______     --  /     \  --     ______|__
         `~^~^~^~^~^~^~^~^~^~^~^~`
]]

--Create choices
--TODO

-- table.insert(node.choices, Choice:new(
--     "kalandra.start",
--     "Para a praia ensolarada de Kalandra",
--     nil
-- ))

-- table.insert(node.choices, Choice:new(
--     "nyff.start",
--     "Para aa montanhas geladas de Nyff",
--     nil
-- ))

return node