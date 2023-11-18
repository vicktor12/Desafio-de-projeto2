local cleric = {}

cleric.description = "Uma maga especialista em magias de defesa, concede magias que aumenta habilidades"
cleric.className = "Cleric"
cleric.maxLife = 1800
cleric.attack = 3800
cleric.def = 2600

local function getDescription()
    return cleric.description
end

local function getClassName()
    return cleric.className
end

local function getMaxLife()
    return cleric.maxLife
end

local function getAttack()
    return cleric.attack
end

local function getDef()
    return cleric.def
end

return cleric