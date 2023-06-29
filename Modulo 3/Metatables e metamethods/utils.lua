local utils = {}

---Essa função habita o modo UTF-8 no terminal.
function utils.enableUtf8()
    os.execute("chcp 65001 > NUL")
end

return utils