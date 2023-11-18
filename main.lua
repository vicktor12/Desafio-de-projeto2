---Dependecies
local utils = require("utils")
local attributes = require("characters.attributesCharacter")
local creature = require("characters.creature")
local crusader = require("characters.crusader")
local champion = require("characters.champion")
local cleric = require("characters.cleric")
local sealmaster = require("characters.sealmaster")
local sharpshooter = require("characters.sharpshooter")

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
        print("⚔️  " .. crusader.className .. "⚔️")
        print()
        print(crusader.description)
        print("===================================================")
        print()
        print("🗡️  " .. champion.className .. "🗡️")
        print()
        print(champion.description)
        print("===================================================")
        print()
        print("🪄  " .. cleric.className .. "🪄")
        print()
        print(cleric.description)
        print("===================================================")
        print()
        print("🪄  " .. sealmaster.className .. "🪄")
        print()
        print(sealmaster.description)
        print("===================================================")
        print()
        print("🔫  " .. sharpshooter.className .. "🔫")
        print()
        print(sharpshooter.description)
        print("===================================================")
        print()
    end
    print("Deseja ver os atributos de cada classe?")
    local responseAttributes = io.read()
    if responseAttributes == "sim" or "Sim" or "SIM" then
        print("Escolha a classe que deseja ver os atributos")
        local responseClassAttributes = io.read()
        if responseClassAttributes == crusader.className then
            print(string.format("Os atributos de um %s são: ", crusader.className))
            print("Vida máxima ❤️: " .. crusader.maxLife)
            print("Ataque ⚔️: " .. crusader.attack)
            print("Defesa 🛡️: " .. crusader.def)
        end
    end
else

end