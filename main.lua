---Dependecies
local utils = require("utils")
local attributes = require("characters.attributesCharacter")
local creature = require("characters.creature")
local crusader = require("characters.crusader")
local champion = require("characters.champion")

--UTF-8 no terminal
utils.enableUTF8()

--Header
utils.printHeader()

print([[
    Deseja iniciar o jogo?
    ----------------------
    Sim      ou        Não
]])
local response = io.read()

if response == "sim" or "Sim" or "SIM" then
    print("Primeiro você deve escolher com qual Classe irá jogar!")
    print()
    print("Deseja ver todas as classes disponiveis e seus atributos?")
    local responseClass = io.read()
    ---Mostra as Classes e suas descrições
    if responseClass == "sim" or "Sim" or "SIM" then
        print("Certo, as classes disponiveis são as seguintes: ")
        print()
        print("⚔️  " .. crusader.getClassName() .. "⚔️")
        print()
        print(crusader.getDescription())
        print("===================================================")
        print()
        print("🗡️  " .. champion.className .. "🗡️")
        print()
        print(champion.description)
        print("===================================================")
        
    end
    print("Deseja ver os atributos de cada classe?")
    local responseAttributes = io.read()
    if responseAttributes == "sim" or "Sim" or "SIM" then
        print("Escolha a classe que deseja ver os atributos")
        local responseClassAttributes = io.read()
        if responseClassAttributes == "crusader" or "Crusader" then
            print(string.format("Os atributos de um %s são: ", crusader.getClassName()))
            print()
            print("Vida máxima ❤️: " .. crusader.getMaxLife())
            print("Ataque ⚔️: " .. crusader.getAttack())
            print("Defesa 🛡️: " .. crusader.getDef())
        elseif responseClassAttributes == "champion" or "Champion" then
            print(string.format("Os atributos de um %s são: ", champion.getClassName()))
            print()
            print("Vida máxima ❤️: " .. champion.getMaxLife())
            print("Ataque ⚔️: " .. champion.getAttack())
            print("Defesa 🛡️: " .. champion.getDef())
        end
    elseif responseAttributes == "nao" or "Não" or "não" then
        print("Certo, pode digitar abaixo com qual classe deseja jogar")
        attributes.setClass(io.read())
        print("Agora escolha o nome do seu persnagem")
        attributes.setName(io.read())
        print("Segue as informações do seu char")
        print("=======================================")
        print("Guerreiro 🤺 ")
        print("Nome -->          " .. attributes.getName())
        print("Classe -->        " .. attributes.getClass())
        print("Vida máxima -->   " .. attributes.getMaxLife())
        print("Ataque -->        " .. attributes.getAttack())
        print("Defesa -->        " .. attributes.getDef())
        print("EXP -->           " .. attributes.getExp())
    end
else

end