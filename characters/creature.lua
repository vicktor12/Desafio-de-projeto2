local creature = {}

creature.name = "Treat"
creature.maxLife = 20000
creature.life = 20000
creature.attack = 1200
creature.def = 9000

local function getName()
    return creature.name
end

local function getMaxLife()
    return creature.maxLife
end

local function getLife()
    return creature.life
end

local function getAttack()
    return creature.attack
end

local function getDef()
    return creature.def
end

return creature