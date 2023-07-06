-- Requires
local colorModule = require("color")

-- função simples

local function printAttribute(key: string, value: number)
    if value <= 0 then
        print(key ..": Zero")
    else
        print(key ..": " ..value)
    end
end

printAttribute("Bananas", 12)


-- Structs

local myStruct: {callBack: (n: number) -> boolean} = {
    callBack = function(n: number): boolean
        return n>=0
    end
}

print(myStruct.callBack(-1))
print(myStruct.callBack(1))

local color: colorModule.Color = {r=0, g=0, b=0, a=0}
color.r = 255
color.a = 60

-- Listas
local nameList: {[number] : string} = {}
table.insert(nameList, "Creeper")
table.insert(nameList, "Zombie")
table.insert(nameList, "Skeleton")


-- Dicionarios
local creatureEncounters: {[string] : number} = {}
creatureEncounters.Creeper = 1
creatureEncounters["Zombie"] = 5
print(creatureEncounters["Creeper"])
print(creatureEncounters.Zombie)