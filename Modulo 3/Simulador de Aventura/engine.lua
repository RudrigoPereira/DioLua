local class = require 'libs.middleclass'
local nodeLoader = require 'node_loader'

---@class Engine
local Engine = class("Engine")

function Engine:initialize()
    
end

function Engine:runMainLoop()
    
    -- Loop principal
    while not game.isOver do
        -- Get active node
        local node = game.activeNode

        -- Limpar o terminal
        -- TODO

        -- Printar Node
        self:printNode(node)

        -- Obter escolhas válidas
        local validChoices = self:getValidChoices(node)

        -- Mostrar escolhas
        self:showChoices(validChoices)

        -- Perguntar para o usuário
        local choiceIndex = self:askForInput(#validChoices)
        local choice = validChoices[choiceIndex]

        -- Avançar pro proximo node
        local destinationId = choice.destination
        local destinationNode = nodeLoader.getNode(destinationId)
        game.activeNode = destinationNode

        -- game.isOver = true -- DEBUG aqui a gente encerra o simulador
    end
end

---comment
---@param node Node
function Engine:printNode(node)
    if node.header then
        print(node.header)
    end
    print("===== " ..node.title)
    print(node.description)
    print("=============================================")
end

---comment
---@param node Node
---@return Choice[]
function Engine:getValidChoices(node)
    local result = {} ---@type Choice[]
    for _, choice in pairs(node.choices) do
        if (not choice:hasCondition()) or (choice:hasCondition() and choice:runCondition()) then
            table.insert(result, choice)
        end
    end
    return result
end

---comment
---@param choices Choice[]
function Engine:showChoices(choices)
    for i, choice in pairs(choices) do
        print(string.format("%d) %s", i, choice.description))
    end
end

function Engine:askForInput(amount)
    while true do
        io.write("> ")
        local answerString = io.read()
        local answer = tonumber(answerString)
        local isAnswervalid = answer ~= nil and answer >= 1 and answer <= amount
        if isAnswervalid then
            return answer
        end
        print("Resposta inválida, tente novamente.")
    end
end

return Engine