--[[

 Nome da Criatura
 Descrição
 Som que faz
 Atributos
    Ataque
    Defesa
    Vitalidade
    Velocidade
    Inteligência
 Habilidades
    Furtividade
    Explosão

===================================================
|
| CREEPER
| Um monstro muito sagaz que explode na sua cara.
|
| Som: Tsssssss
|
| Atributos:
|   Ataque: ########00
|   Defesa: ###0000000
|   ...
|
===================================================


]]

-- Habilitar UTF-8 no terminal 
os.execute("chcp 65001")

-- Criatura
local monsterName = "CREEPER"
local description = "Um monstro furtivo com um temperamento explosivo"
local emoji = "💥"
local sound = "Tsssssss"
local favoriteTime = "Noturno"
local item = "Pólvora"

-- Atributos
local attackAttribute = 10
local defenseAttribute = 1
local lifeAttribute = 5
local speedAttribute = 7
local inteligenceAttribute = 2

-- função que recebe um atributo e nos retorna uma barra de progreso em string / texto
local function getProgressBar(attribute)
    local fullChar = "⬜"
    local emptyChar = "⬛"
    local result = ""
    for i = 1, 10, 1 do
        if i <= attribute then
            -- Quadradinho cheio
            result = result ..fullChar
        else
            -- Quadradinho vazio
            result = result ..emptyChar
        end
    end

    return result
end

-- função para fazer a parte de cima e a de baixo do cartão
local function topBottomCard(char, numberChar)
    local result = ""

    for i = 1, numberChar, 1 do
        result = result ..char
    end

    return result
end

--função para criar as linhas do cartão
local function cardLine(char, numberSpace, text)
    local result = char ..' ' ..text

    for i = 1, numberSpace, 1 do
        if i > string.len(text) then
            result = result ..' '
        end
    end

    return result ..char
end

-- Cartão
print(topBottomCard('=', 52))
print(cardLine('|', 49, ''))
print(cardLine('|', 49, monsterName))
print(cardLine('|', 49, description))
print(cardLine('|', 49, ''))
print(cardLine('|', 50, 'Item: ' ..item))
print(cardLine('|', 49, 'Som: ' ..sound))
print(cardLine('|', 51, 'Emoji Favorito: ' ..emoji))
print(cardLine('|', 50, 'Horário Favorito: ' ..favoriteTime))
print(cardLine('|', 49, ''))
print(cardLine('|', 49, 'Atributos'))
print(cardLine('|', 59, '    Ataque:       ' ..getProgressBar(attackAttribute)))
print(cardLine('|', 59, '    Defesa:       ' ..getProgressBar(defenseAttribute)))
print(cardLine('|', 59, '    Vida:         ' ..getProgressBar(lifeAttribute)))
print(cardLine('|', 59, '    Velocidade:   ' ..getProgressBar(speedAttribute)))
print(cardLine('|', 60, '    Inteligência: ' ..getProgressBar(inteligenceAttribute)))
print(cardLine('|', 49, ''))
print(topBottomCard('=', 52))
