local attributes = require("characters.attributesCharacter")

local utils = {}

--- Habilita UTF-8 no terminal
function utils.enableUTF8()
    os.execute("chcp 65001")
end

---Cria o Header da aplicação
function utils.printHeader()
    print([[
====================================================================

              />_________________________________
     [########[]_________________________________>
              \>

      ------------------------------------------
            ⚔️  Simulador de Batalha  ⚔️

====================================================================

    Escolha sua classe, pegue sua arma e venha para a luta!
]])
end

function utils.awnserNo()
    print("Digite abaixo com qual classe deseja jogar")
    local awnserClass = io.read()
    attributes.setClass(awnserClass)
    print("Agora escolha o nome do seu personagem")
    local awnserName = io.read()
    attributes.setName(awnserName)
    attributes.printCard(awnserClass)
end

return utils