-- Constants
local ID = "nyff.start"

-- Dependencies
local Node = require 'node'
local Choice = require 'choice'

-- Create node
local node = Node:new(ID) ---@type Node
node.title = "Montanhas de Nyff"
node.description = "Está frio, a neve está por todo o lugar, e o silêncio é ensurdecedor. Para melhorar a situação, você percebe que esqueceu sua mochila em casa, e a única comida que lhe resta é uma batata do dia anterior."
node.header = [[
      /\
     /**\
    /****\   /\
   /      \ /**\
  /  /\    /    \        /\    /\  /\      /\            /\/\/\  /\
 /  /  \  /      \      /  \/\/  \/  \  /\/  \/\  /\  /\/ / /  \/  \
/  /    \/ /\     \    /    \ \  /    \/ /   /  \/  \/  \  /    \   \
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