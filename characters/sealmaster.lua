local sealmaster = {}

sealmaster.description = "Uma maga especialista em selos, seus selos podem bloquear habilidades e criaturas momentaneamente"
sealmaster.className = "SealMaster"
sealmaster.maxLife = 1800
sealmaster.attack = 3800
sealmaster.def = 2600

local function getDescription()
    return sealmaster.description
end

local function getClassName()
    return sealmaster.className
end

local function getMaxLife()
    return sealmaster.maxLife
end

local function getAttack()
    return sealmaster.attack
end

local function getDef()
    return sealmaster.def
end

return sealmaster