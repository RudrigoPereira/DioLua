--dependencies
local utils = require("utils")
local player = require("definitions.player")
local colossus = require("definitions.colossus")

-- Habilitar UTF-8 no terminal
utils.enableUtf8()

-- Header
utils.printHeader()

-- Obter definição do jogador
-- print(string.format("A vida do jogador é %d/%d", player.health, player.maxHealth))

-- Obter definição do monstro
local boss = colossus

-- Apresentar o monstro
utils.printCreature(boss)

-- Começar o loop de batalha