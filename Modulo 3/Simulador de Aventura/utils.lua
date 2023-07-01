local utils = {}

---Essa função habilita o UTF-8 no terminal.
function utils.enableUtf8()
    os.execute("chcp 65001 > NUL")
end

return utils