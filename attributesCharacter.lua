local attributes = {}

attributes.name = ""
attributes.class = ""
attributes.life = 0
attributes.attack = 0
attributes.def = 0
attributes.sp = 0
attributes.exp = 0

local function setName(name)
    attributes.name = name
end

local function getName()
    return attributes.name
end



return attributes