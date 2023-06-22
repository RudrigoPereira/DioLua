-- função comum
local function hi()
    print("Hi")
end

-- outra forma de declarar uma função (guardando ela numa variável)
local hello = function ()
    print("Hello")
end

-- passando a função hi para a variável hello
hello = hi

-- chamando as funções
hi()
hello()

-- imprimindo os tipos das variáveis
print(type(hello))
print(type(hi))

-- guardando a função do sistema print() para a variável banana
local banana = print
-- usando a variável banana para imprimir algo na tela
banana("Bananas Amarelas")