local class = require 'libs.middleclass'

--- @class Choice
local Choice = class("Choice")

function Choice:initialize(destination, description, condition)
    self.destination = destination ---@type string
    self.description = description ---@type string
    self.condition = condition
end

---Retorna se a escolha tem uma condição a ser executada
---@return boolean
function Choice:hasCondition()
    return self.condition ~= nil
end

---executa a função de condição e retorna se ela foi autorizada
---@return boolean
function Choice:runCondition()
    -- TODO
    return true
end

return Choice