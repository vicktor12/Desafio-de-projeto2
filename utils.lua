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

return utils