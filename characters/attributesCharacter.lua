local crusader = require("characters.crusader")
local champion = require("characters.champion")

---Cria um modulo dos atributos dos chars
local attributes = {}

local name = ""
local class = ""
local maxLife = 0
local life = 0
local attack = 0
local def = 0
local exp = 0

function attributes.setName(name)
    name = name
end

function attributes.setClass(class)
    class = class
end

function attributes.getClass()
    return class
end

function attributes.setLife(life)
   life = life
end

function attributes.setAttack()
    if attributes.getClass() == crusader.getClassName() then
       attack = 10000
    end
    if attributes.getClass() == champion.getClassName() then
        attack = 6000
    end
end

function attributes.setDef(def)
    if attributes.getClass() == crusader.getClassName() then
       def = 4000
    end
    if attributes.getClass() == champion.getClassName() then
        def = 8000
    end
end

function attributes.setMaxLife()
    if attributes.getClass() == crusader.getClassName() then
        maxLife = 2500
        attributes.setLife(maxLife)
    end
    if attributes.getClass() == champion.getClassName() then
        maxLife = 6000
        attributes.setLife(maxLife)
    end
end

function attributes.setExp(exp)
    attributes.exp = exp
end

-- Inicio dos Getters

function attributes.getName()
    return name
end

function attributes.getMaxLife()
    return maxLife
end

function attributes.getLife()
    return life
end

function attributes.getAttack()
    return attack
end

function attributes.getDef()
    return def
end

function attributes.getExp()
    return exp
end

function attributes.printCard(class)
    if class == crusader.getClassName() then
        print("Segue as informações do seu char")
        print("=======================================")
        print("Guerreiro 🤺 ")
        print("Nome -->          " .. name)
        print("Classe -->        " .. crusader.getClassName())
        print("Vida máxima -->   " .. crusader.getMaxLife())
        print("Ataque -->        " .. crusader.getAttack())
        print("Defesa -->        " .. crusader.getDef())
        print("EXP -->           " .. attributes.getExp())
    elseif class == champion.getClassName() then
        print("Segue as informações do seu char")
        print("=======================================")
        print("Guerreiro 🤺 ")
        print("Nome -->          " .. name)
        print("Classe -->        " .. champion.getClassName())
        print("Vida máxima -->   " .. champion.getMaxLife())
        print("Ataque -->        " .. champion.getAttack())
        print("Defesa -->        " .. champion.getDef())
        print("EXP -->           " .. attributes.getExp())
    end
    
end

return attributes