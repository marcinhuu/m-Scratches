if GetResourceState("qb-core") == "started" then
    QBCore = exports["qb-core"]:GetCoreObject()
elseif GetResourceState("es_extended") == "started" then
    ESX = exports['es_extended']:getSharedObject()
end

local webhook = 'INSERT_YOUR_WEBHOOK_HERE' -- Your webhook to logs when players selling

local function GetPlayer(src)
    if GetResourceState("qb-core") == "started" then
        return QBCore.Functions.GetPlayer(src)
    elseif GetResourceState("es_extended") == "started" then
        return ESX.GetPlayerFromId(src)
    end
end

local function RegisterUsableItem(itemName, callback)
    if GetResourceState("qb-core") == "started" then
        QBCore.Functions.CreateUseableItem(itemName, callback)
    elseif GetResourceState("es_extended") == "started" then
        ESX.RegisterUsableItem(itemName, callback)
    end
end

for _, v in ipairs(Config.Rewards) do
    RegisterUsableItem(v.id, function(source)
        local src = source
        local Player = GetPlayer(src)

        if GetResourceState("qb-inventory") == "started" then
            Player.Functions.RemoveItem(v.id, 1)
        elseif GetResourceState("ox_inventory") == "started" then
            exports.ox_inventory:RemoveItem(src, v.id, 1)
        end

        TriggerClientEvent("m-Scratches:Client:OpenScratchCard", src, v.id)
    end)
end

lib.callback.register('m-Scratches:Server:BuyScratchCard', function(source, itemName, itemPrice, itemAmount)
    local src = source
    local Player = GetPlayer(src)
    if GetResourceState("qb-inventory") == "started" then
        if Player.Functions.RemoveMoney("cash", itemPrice) then
            Player.Functions.AddItem(itemName, itemAmount)
            return true
        else
            TriggerClientEvent('m-Scratches:Client:Notify', src, "You don't have enough money!", 'error', 5000)
            return false
        end
    elseif GetResourceState("ox_inventory") == "started" then
        if exports.ox_inventory:RemoveItem(src, "cash", itemPrice) then
            exports.ox_inventory:AddItem(src, itemName, itemAmount)
            return true
        else
            TriggerClientEvent('m-Scratches:Client:Notify', src, "You don't have enough money!", 'error', 5000)
            return false
        end
    end
end)

local function GetRewardAmount(cardId)
    for _, card in ipairs(Config.Rewards) do
        if card.id == cardId then
            local prob = math.random(1, 100)
            local reward = prob <= card.chancePremium and card.premiumReward or math.random(card.rewardRange.min, card.rewardRange.max)
            return reward
        end
    end
    return nil
end

lib.callback.register('m-Scratches:Server:RewardCard', function(source, cardId)
    local src = source
    local Player = GetPlayer(src)

    local rewardAmount = GetRewardAmount(cardId)
    if not rewardAmount then return false end

    if GetResourceState("qb-inventory") == "started" then
        Player.Functions.RemoveItem(cardId, 1)
        Player.Functions.AddMoney("cash", rewardAmount, "scratchcard-reward")
    elseif GetResourceState("ox_inventory") == "started" then
        exports.ox_inventory:RemoveItem(src, cardId, 1)
        exports.ox_inventory:AddItem(src, "cash", rewardAmount)
    end

    TriggerClientEvent('m-Scratches:Client:Notify', src, "You won $" .. rewardAmount .. "!", 'success', 5000)
    LogScratch("**Player:** " .. GetPlayerName(src) .. "\n**ID:** " .. src .. "\n**Won:** $" .. rewardAmount .. " from a scratch card.")
    return true
end)


function LogScratch(message)
    local embed = {}
    embed = {
        {
            ["color"] = 65280, -- GREEN = 65280 --- RED = 16711680
            ["title"] = "m-Scratches | Logs",
            ["description"] = "" .. message ..  "",
            ["footer"] = {
                ["icon_url"] = "https://i.imgur.com/dFG7Sy6.png",
                ["text"] = 'Created By m-Scripts | https://marcinhu.tebex.io/ ',
            },
        }
    }
    PerformHttpRequest(webhook, 
    function(err, text, headers) end, 'POST', json.encode({username = 'm-Scratches - Logs', embeds = embed}), { ['Content-Type'] = 'application/json' })
end