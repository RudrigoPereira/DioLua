local utils = {}

function utils.getProgressBar(attribute)
    local fullChar = "%{cyan}▰"
    local emptyChar = "%{black}▱"

    local result = ""

    for i = 1, 10, 1 do
        if i <= attribute then
            result = result ..fullChar
        else
            result = result ..emptyChar
        end
    end

    return result
end

return utils