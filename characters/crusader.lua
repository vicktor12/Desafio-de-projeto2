local crusader = {}

local description = "Um guerreiro especilista em espadas, tem um excelente ataque e também uma boa defesa, porém uma baixa vida"
local className = "crusader"
local maxLife = 2500
local attack = 10000
local def = 4000


function crusader.getDescription()
    return description
end

function crusader.getClassName()
    return className
end

function crusader.getMaxLife()
    return maxLife
end

function crusader.getAttack()
    return attack
end

function crusader.getDef()
    return def
end

return crusader