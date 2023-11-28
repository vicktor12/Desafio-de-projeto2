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

function crusader.getAttributes()
    print()
    print(string.format("Os atributos de um %s são: ", crusader.getClassName()))
    print()
    print("Vida máxima ❤️: " .. crusader.getMaxLife())
    print("Ataque ⚔️: " .. crusader.getAttack())
    print("Defesa 🛡️: " .. crusader.getDef())
    print()
end

return crusader