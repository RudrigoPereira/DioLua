-- habilitar UTF-8 no terminal
os.execute("chcp 65001")

local letters = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"}
local numbers = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "0"}
local specials = {"#", "@", ">", "=", "<"}
local charactersLists = {
    letters,
    numbers,
    specials
}

print("Quantos caracteres deseja na senha?")
local length = io.read("*n")

local password = ""
for i = 1, length, 1 do

    -- Get list
    local listIndex = math.random(#charactersLists)
    local list = charactersLists[listIndex]

    -- Get character
    local characterIndex = math.random(#list)
    local char = list[characterIndex]

    -- Append character
    password = password ..char
end

-- Show password
print("Sua senha:")
print(password)