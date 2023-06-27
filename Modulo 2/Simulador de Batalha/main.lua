--dependencies
local utils = require("utils")
local player = require("player.player")
local playerActions = require("player.actions")
local colossus = require("colossus.colossus")
local colossusActions = require("colossus.actions")

-- Habilitar UTF-8 no terminal
utils.enableUtf8()

-- Header
utils.printHeader()

-- Obter definição do jogador
-- print(string.format("A vida do jogador é %d/%d", player.health, player.maxHealth))

-- Obter definição do monstro
local boss = colossus
local bossActions = colossusActions

-- Apresentar o monstro
utils.printCreature(boss)

-- Builds actions
playerActions.build()
bossActions.build()

-- Começar o loop de batalha
while true do
    -- Mostrar ações ao Jogador
    print()
    print(string.format("Qual será a próxima ação de %s?", player.name))
    local validPlayerActions = playerActions.getValidActions(player, boss)
    for i, action in pairs(validPlayerActions) do
        print(string.format("%s. %s", i, action.description))
    end
    local chosenIndex = utils.ask()
    local chosenAction = validPlayerActions[chosenIndex]
    local isActionValid = chosenAction ~= nil

    -- Simular turno do Jogador
    print()
    if isActionValid then
        chosenAction.execute(player, boss)
    else
        print(string.format("Sua escolha é inválida. %s perdeu a vez.", player.name))
    end

    -- Ponto de saida: Criatura ficou sem vida
    if boss.health <= 0 then
        break
    end

    -- Simular turno da Criatura
    print()
    local validBossActions = bossActions.getValidActions(player, boss)
    local bossAction = validBossActions[math.random(#validBossActions)]
    bossAction.execute(player, boss)
    
    -- Ponto de saida: Jogador ficou sem vida
    if player.health <= 0 then
        break
    end
end

-- Processar condições de vitória e derrota
-- Ponto de saida: Jogador ficou sem vida
if player.health <= 0 then
    print()
    print("====================================================================")
    print()
    print(string.format("%s não foi capaz de vencer %s", player.name, boss.name))
    print("Quem sabe na próxima vez...")
    print()
elseif boss.health <= 0 then
    print()
    print("====================================================================")
    print()
    print(string.format("%s prevaleceu e venceu %s", player.name, boss.name))
    print("Parabéns!!!")
    print()
end
