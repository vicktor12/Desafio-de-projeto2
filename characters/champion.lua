local champion = {}

local description = "Um grande guerreiro de grande porte! Tem uma guarda bem alta e uma boa defesa, porém pelo seu tamanho seu ataque é baixo "
local className = "Champion"
local maxLife = 6000
local attack = 1300
local def = 8000

function champion.getDescription()
    return description
end

function champion.getClassName()
    return className
end

function champion.getMaxLife()
    return maxLife
end

function champion.getAttack()
    return attack
end

function champion.getDef()
    return def
end

function champion.getAttributes()
    print()
    print(string.format("Os atributos de um %s são: ", champion.getClassName()))
    print()
    print("Vida máxima ❤️: " .. champion.getMaxLife())
    print("Ataque ⚔️: " .. champion.getAttack())
    print("Defesa 🛡️: " .. champion.getDef())
    print()
end

return champion