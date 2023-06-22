--[[
    Funções
]]

-- Habilitar UTF-8 no terminal
os.execute("chcp 65001")

-- Função sem param e sem retorno
local function sayHello()
    print("Olá usuário, seja bem vindo!")
end

-- Função com param opcional
local function sayHello2(name)
    name = name or "desconhecido" -- atribuindo um valor caso o mesmo seja nil (nulo)
    print("Olá " ..name ..", seja bem vindo!")
end

-- Função sem param e com retorno
local function getDate()
    return os.date('%d/%m/%Y %H:%M:%S') -- formatando a data e hora
end

-- Função com param e com retorno
local function convertKilometersToMiles(km)
    km = km or 0
    local miles = km / 1.609
    return math.floor(miles + 0.5)
end

-- Função com varios params e com varios retornos
local function convertMany(km1, km2, km3)
    local m1 = convertKilometersToMiles(km1)
    local m2 = convertKilometersToMiles(km2)
    local m3 = convertKilometersToMiles(km3)
    return m1, m2, m3
end


print()
sayHello()
sayHello2()
sayHello2("Rodrigo")
print("A data de hoje é " ..getDate())
local km = 50
local mph = convertKilometersToMiles(km)
print("O vento está com uma velocidade de " ..mph .." MPH")
print("Conversões: ", convertMany(60, 80, 120))
print()