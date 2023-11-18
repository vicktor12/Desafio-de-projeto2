local champion = {}

champion.description = "Um grande guerreiro de grande porte! Tem uma guarda bem alta e uma boa defesa, porém pelo seu tamanho seu ataque é baixo "
champion.className = "Champion"
champion.maxLife = 6000
champion.attack = 1300
champion.def = 8000

local function getDescription()
    return champion.description
end

local function getClassName()
    return champion.className
end

local function getMaxLife()
    return champion.maxLife
end


local function getAttack()
    return champion.attack
end

local function getDef()
    return champion.def
end

return champion