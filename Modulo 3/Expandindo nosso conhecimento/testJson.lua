os.execute("chcp 65001 > NUL")
local json = require 'libs.json'
local inspect = require 'libs.inspect'

local file = io.open("resources/exemple.json", "r") --Read
local fileContent = file and file:read("a") --All
local fileDecoded = fileContent and json.decode(fileContent) or {}

print(inspect(fileDecoded))
print(fileDecoded.Dictionary.Dolphin)

-- print(json.encode({ 1, 2, 3, { x = 10 } })) -- Returns '[1,2,3,{"x":10}]'

-- print(json.decode('[1,2,3,{"x":10}]')) -- Returns { 1, 2, 3, { x = 10 } }