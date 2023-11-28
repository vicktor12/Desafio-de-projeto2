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

if response == "sim" then
    print("Primeiro você deve escolher com qual Classe irá jogar!")
    print()
    print("Deseja ver todas as classes disponiveis e seus atributos?")
    local responseClass = io.read()
    ---Mostra as Classes e suas descrições
    if responseClass == "sim" then
        print("Certo, as classes disponiveis são as seguintes: ")
        print()
        print("⚔️  " .. crusader.getClassName() .. "⚔️")
        print()
        print(crusader.getDescription())
        print("===================================================")
        print()
        print("🗡️  " .. champion.getClassName() .. "🗡️")
        print()
        print(champion.getDescription())
        print("===================================================")
        print()
        print("Deseja ver os atributos de cada classe?")
        local responseAttributes = io.read()
        if responseAttributes == "sim" then
            print("Escolha a classe que deseja ver os atributos")
            local responseClassAttributes = io.read()
            if responseClassAttributes == crusader.getClassName() then
                crusader.getAttributes()
                print()
                print("Deseja ver os atributos da outras classe?")
                local responseOtherClass = io.read()
                if responseOtherClass == "sim" then
                    champion.getAttributes()
                    utils.awnserNo()
                elseif responseOtherClass == "nao" then
                    utils.awnserNo()
                end
            elseif responseClassAttributes == champion.getClassName() then
                champion.getAttributes()
                print("Deseja ver os atributos da outras classe?")
                local responseOtherClass = io.read()
                if responseOtherClass == "sim" then
                    crusader.getAttributes()
                elseif responseOtherClass == "nao" then
                    utils.awnserNo()
                end
            end
        elseif responseAttributes == "nao" then
            utils.awnserNo()
        end
    elseif responseClass == "nao" then
        utils.awnserNo()
    end
    
    
else 
    print("Certo! irei te esperar aqui para quando quiser jogar!!!")
end