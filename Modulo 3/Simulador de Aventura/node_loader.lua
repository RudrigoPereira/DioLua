local nodeLoader = {}

local nodeDictionary = {} ---@type table<string, Node>
local initialNode = nil ---@type Node

local function loadNode(path)
    local success, nodeOrErr = pcall(function ()
        return require(path)
    end)
    if not success then
        warn("Falha ao carregar o node " ..path ..". O node não existe.")
        return
    end
    local node = nodeOrErr ---@type Node
    if nodeDictionary[node.id] ~= nil then
        warn("Falha ao carregar o node " ..path ..". O ID " ..node.id .." já está registrado")
        return
    end
    nodeDictionary[node.id] = node
end

---Carrega todos os nodes internamente
function nodeLoader.loadNodes()
    nodeDictionary = {}

    -- Load initial node
    initialNode = require 'nodes.start'
    nodeDictionary[initialNode.id] = initialNode

    --load other nodes
    loadNode("nodes.nyff.start")
    loadNode("nodes.kalandra.start")
end

---Retorna todos os nodes criados por esse script.
---@return table<string, Node>
function nodeLoader.getNodes()
    return nodeDictionary
end

---Retorna o node associado com o ID.
---@param nodeId string
---@return Node
function nodeLoader.getNode(nodeId)
    return nodeDictionary[nodeId]
end

---Retorna o node inicial do simulador.
---@return Node
function nodeLoader.getInitialNode()
    return initialNode
end

return nodeLoader