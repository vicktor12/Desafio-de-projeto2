---Cria um modulo dos atributos dos chars
local attributes = {}

attributes.name = ""
attributes.class = ""
attributes.maxLife = 0
attributes.life = 0
attributes.attack = 0
attributes.def = 0
attributes.exp = 0

local function setName(name)
    attributes.name = name
end

local function setClass(class)
    attributes.class = class
end

local function getClass()
    return attributes.class
end

local function setLife(life)
    attributes.life = life
end

local function setAttack(attack)
    if getClass() == "Crusader" then
        attributes.attack = 10000
    end
    if getClass() == "champion" then
        attributes.attack = 6000
    end
    if getClass() == "sealmaster" then
        attributes.attack = 3800
    end
    if getClass() == "cleric" then
        attributes.attack = 3800
    end
    if getClass() == "sharpshooter" then
        attributes.attack = 4230
    end
end

local function setDef(def)
    if getClass() == "crusader" then
        attributes.def = 4000
    end
    if getClass() == "champion" then
        attributes.def = 8000
    end
    if getClass() == "sealmaster" then
        attributes.def = 2600
    end
    if getClass() == "cleric" then
        attributes.def = 2600
    end
    if getClass() == "sharpshooter" then
        attributes.def = 1900
    end
end

local function setMaxLife()
    if getClass() == "Crusader" then
        attributes.maxLife = 2500
        setLife(attributes.maxLife)
    end
    if getClass() == "champion" then
        attributes.maxLife = 6000
        setLife(attributes.maxLife)
    end
    if getClass() == "sealmaster" then
        attributes.maxLife = 1800
        setLife(attributes.maxLife)
    end
    if getClass() == "cleric" then
        attributes.maxLife = 1800
        setLife(attributes.maxLife)
    end
    if getClass() == "sharpshooter" then
        attributes.maxLife = 2640
        setLife(attributes.maxLife)
    end
end

local function setExp(exp)
    attributes.exp = exp
end

-- Inicio dos Getters

local function getName()
    return attributes.name
end

local function getMaxLife()
    return attributes.maxLife
end

local function getLife()
    return attributes.life
end

local function getAttack()
    return attributes.attack
end

local function getDef()
    return attributes.def
end

local function getExp()
    return attributes.exp
end


return attributes