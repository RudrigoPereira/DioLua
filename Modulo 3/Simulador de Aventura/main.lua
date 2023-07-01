-- Dependencies
local GameData = require 'game_data'
local Engine = require 'engine'
local nodeLoader = require 'node_loader'
local utils = require 'utils'

-- Enable warnings
warn("@on")

-- Enable UTF-8
utils.enableUtf8()

-- Create GameData
local gameData = GameData:new() ---@type GameData
_G.game = gameData

--Load nodes
nodeLoader.loadNodes()
game.activeNode = nodeLoader.getInitialNode()

local engine = Engine:new() ---@type Engine
engine:runMainLoop()