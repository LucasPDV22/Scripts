-- script de floodar notificacao pra todos no server 
-- jogo: https://www.roblox.com/games/5504018814/Roleplay-Brasil-Season-1

local remotao = game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("EnviarMenssagem")
local players = game:GetService("Players"):GetPlayers() -- vc pode mudar aq se quiser so pra 1 player em especifico

local message = {
    ["Conteudo"] = "Discord.gg/Gameleaks", -- a msg 
    ["Origem"] = "Tarantula veia" -- aq e o nome de qm enviou a msg
}

local quantidade = 30 -- quantas vezes vc quer enviar a msg?!!?! (pra todos)

for rep = 1, quantidade do
    for _, player in ipairs(players) do
        local args = {
            [1] = player.Name, 
            [2] = message
        }
        remotao:FireServer(unpack(args))
    end
    wait(5) -- recomendo aumentar pq se nao tem risco de kick
end
