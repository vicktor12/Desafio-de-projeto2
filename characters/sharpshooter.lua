local sharpshooter = {}

sharpshooter.description = "Uma caçador especialista em armas de fogo, porém pode ser usado o arco também. Tem uma otima vantagem de poder atacar a distancia"
sharpshooter.className = "Sharpshooter"
sharpshooter.maxLife = 2640
sharpshooter.attack = 4230
sharpshooter.def = 1900

local function getDescription()
    return sharpshooter.description
end

local function getClassName()
    return sharpshooter.className
end

local function getMaxLife()
    return sharpshooter.maxLife
end

local function getAttack()
    return sharpshooter.attack
end

local function getDef()
    return sharpshooter.def
end

return sharpshooter