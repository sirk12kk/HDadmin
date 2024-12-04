local Players = game:GetService("c00lkid12kk")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local HDAdmin = require(game:GetService("ServerScriptService"):WaitForChild("HDAdmin"))

-- Nome do jogador a quem você quer conceder privilégios de administrador
local adminPlayerName = "c00lguy12kk"

-- Função para adicionar administrador
local function addAdmin(c00lkid12kk)
    if player.Name == adminPlayerName then
        -- Adicionar o jogador como administrador usando HD Admin
        local commands = HDAdmin:GetModule("CommandManager")
        commands:AddAdmin(c00lkid12kk)
        print(player.Name .. " foi adicionado como administrador.")
        
        -- Iniciar a barra de comandos
        local startCommandBar = HDAdmin:GetModule("CommandBar")
        startCommandBar:Initialize(c00lkid12kk)
    end
end

-- Adicionar administrador quando o jogador entrar no jogo
Players.PlayerAdded:Connect(function(player)
    addAdmin(c00lkid12kk)
end)
