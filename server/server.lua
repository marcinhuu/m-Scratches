if Config.Settings.Framework == "qb" then
    QBCore = exports[Config.Settings.Core]:GetCoreObject()
elseif Config.Settings.Framework == "esx" then
    ESX = exports['es_extended']:getSharedObject()
end


local cards = {"scratchcard01", "scratchcard02", "scratchcard03", "scratchcard04", "scratchcard05"}
for k, v in pairs(cards) do
    if Config.Settings.Framework == "qb" then
        QBCore.Functions.CreateUseableItem(v, function(source, item) 
            local src = source
            local Player = QBCore.Functions.GetPlayer(src)
            if not Player.Functions.GetItemByName(item.name) then return end
            if Player.Functions.GetItemBySlot(item.slot) ~= nil then
                TriggerClientEvent("m-Scratches:Client:OpenCard", source, v) 
            end
        end)
    elseif Config.Settings.Framework == "esx" then
        ESX.RegisterUsableItem(v, function(source, item) 
            local src = source
            local Player = ESX.GetPlayerFromId(src)
            if Player.getInventoryItem(v) and Player.getInventoryItem(v).count >= 1 then
                TriggerClientEvent("m-Scratches:Client:OpenCard", source, v) 
            end
        end)
    end
end 

RegisterServerEvent("m-Scratches:Server:RewardCard")
AddEventHandler("m-Scratches:Server:RewardCard", function(card)
    if Config.Settings.Framework == "qb" then
        local src = source 
        local Player = QBCore.Functions.GetPlayer(src)
        local Prob = math.random(1,100)
        local playerCoords = GetEntityCoords(GetPlayerPed(src))
        if card == "Card01" then
            local Amount = math.random(Config.Rewards["ScratchCard01"].minReward, Config.Rewards["ScratchCard01"].maxReward)
            if Prob <= Config.Rewards["ScratchCard01"].chancePremiumReward then
                if Player.Functions.RemoveItem("scratchcard01") then
                    Player.Functions.AddMoney("cash", Config.Rewards["ScratchCard01"].premiumReward)
                    LogScratch( "**❗️ [ m-Scratches ]** ❗️" .. "\n" ..  "\n".. "**🧍‍♂️ [Player Information]** " .. "\n" ..  "**Player Name:** "..Player.PlayerData.name.. "\n" ..  "**CitizenID:** "..Player.PlayerData.citizenid.. "\n" ..  "**Location:** "..playerCoords.. "\n" ..  "\n".. "**📃 [LOG]**".. "\n" ..  "\n".. "📜 **Open a Scratch Ticket 01**".. "\n".. "**Type: ** 💰 Premium Prize".. "\n".. "**Amount Earn:** "..Config.Rewards["ScratchCard01"].premiumReward.."$" )
                    TriggerClientEvent('m-Scratches:Client:Notify', src, Language[LanguageType].youWon.." "..Config.Rewards["ScratchCard01"].premiumReward..Language[LanguageType].currencyType, 'success', 5000)
                end
            else
                if Player.Functions.RemoveItem("scratchcard01") then
                    Player.Functions.AddMoney("cash", Amount)
                    LogScratch( "**❗️ [ m-Scratches ]** ❗️" .. "\n" ..  "\n".. "**🧍‍♂️ [Player Information]** " .. "\n" ..  "**Player Name:** "..Player.PlayerData.name.. "\n" ..  "**CitizenID:** "..Player.PlayerData.citizenid.. "\n" ..  "**Location:** "..playerCoords.. "\n" ..  "\n".. "**📃 [LOG]**".. "\n" ..  "\n".. "**Ticket: ** Card 01".. "\n".. "**Type: ** Normal Prize 💵".. "\n".. "**Amount Earn:** "..Amount.."$" )
                    TriggerClientEvent('m-Scratches:Client:Notify', src, Language[LanguageType].youWon.." "..Amount..Language[LanguageType].currencyType, 'success', 5000)
                end
            end
        elseif card == "Card02" then
            local Amount = math.random(Config.Rewards["ScratchCard02"].minReward, Config.Rewards["ScratchCard02"].maxReward)
            if Prob <= Config.Rewards["ScratchCard02"].chancePremiumReward then
                if Player.Functions.RemoveItem("scratchcard02") then
                    Player.Functions.AddMoney("cash", Config.Rewards["ScratchCard02"].premiumReward)
                    LogScratch( "**❗️ [ m-Scratches ]** ❗️" .. "\n" ..  "\n".. "**🧍‍♂️ [Player Information]** " .. "\n" ..  "**Player Name:** "..Player.PlayerData.name.. "\n" ..  "**CitizenID:** "..Player.PlayerData.citizenid.. "\n" ..  "**Location:** "..playerCoords.. "\n" ..  "\n".. "**📃 [LOG]**".. "\n" ..  "\n".. "📜 **Open a Scratch Ticket 02**".. "\n".. "**Type: ** 💰 Premium Prize".. "\n".. "**Amount Earn:** "..Config.Rewards["ScratchCard01"].premiumReward.."$" )
                    TriggerClientEvent('m-Scratches:Client:Notify', src, Language[LanguageType].youWon.." "..Config.Rewards["ScratchCard02"].premiumReward..Language[LanguageType].currencyType, 'success', 5000)
                end
            else
                if Player.Functions.RemoveItem("scratchcard02") then
                    Player.Functions.AddMoney("cash", Amount)
                    LogScratch( "**❗️ [ m-Scratches ]** ❗️" .. "\n" ..  "\n".. "**🧍‍♂️ [Player Information]** " .. "\n" ..  "**Player Name:** "..Player.PlayerData.name.. "\n" ..  "**CitizenID:** "..Player.PlayerData.citizenid.. "\n" ..  "**Location:** "..playerCoords.. "\n" ..  "\n".. "**📃 [LOG]**".. "\n" ..  "\n".. "**Ticket: ** Card 02".. "\n".. "**Type: ** Normal Prize 💵".. "\n".. "**Amount Earn:** "..Amount.."$" )
                    TriggerClientEvent('m-Scratches:Client:Notify', src, Language[LanguageType].youWon.." "..Amount..Language[LanguageType].currencyType, 'success', 5000)
                end
            end
        elseif card == "Card03" then
            local Amount = math.random(Config.Rewards["ScratchCard03"].minReward, Config.Rewards["ScratchCard03"].maxReward)
            if Prob <= Config.Rewards["ScratchCard03"].chancePremiumReward then
                if Player.Functions.RemoveItem("scratchcard03") then
                    Player.Functions.AddMoney("cash", Config.Rewards["ScratchCard03"].premiumReward)
                    LogScratch( "**❗️ [ m-Scratches ]** ❗️" .. "\n" ..  "\n".. "**🧍‍♂️ [Player Information]** " .. "\n" ..  "**Player Name:** "..Player.PlayerData.name.. "\n" ..  "**CitizenID:** "..Player.PlayerData.citizenid.. "\n" ..  "**Location:** "..playerCoords.. "\n" ..  "\n".. "**📃 [LOG]**".. "\n" ..  "\n".. "📜 **Open a Scratch Ticket 03**".. "\n".. "**Type: ** 💰 Premium Prize".. "\n".. "**Amount Earn:** "..Config.Rewards["ScratchCard01"].premiumReward.."$" )
                    TriggerClientEvent('m-Scratches:Client:Notify', src, Language[LanguageType].youWon.." "..Config.Rewards["ScratchCard03"].premiumReward..Language[LanguageType].currencyType, 'success', 5000)
                end
            else
                if Player.Functions.RemoveItem("scratchcard03") then
                    Player.Functions.AddMoney("cash", Amount)
                    LogScratch( "**❗️ [ m-Scratches ]** ❗️" .. "\n" ..  "\n".. "**🧍‍♂️ [Player Information]** " .. "\n" ..  "**Player Name:** "..Player.PlayerData.name.. "\n" ..  "**CitizenID:** "..Player.PlayerData.citizenid.. "\n" ..  "**Location:** "..playerCoords.. "\n" ..  "\n".. "**📃 [LOG]**".. "\n" ..  "\n".. "**Ticket: ** Card 03".. "\n".. "**Type: ** Normal Prize 💵".. "\n".. "**Amount Earn:** "..Amount.."$" )
                    TriggerClientEvent('m-Scratches:Client:Notify', src, Language[LanguageType].youWon.." "..Amount..Language[LanguageType].currencyType, 'success', 5000)
                end
            end
        elseif card == "Card04" then
            local Amount = math.random(Config.Rewards["ScratchCard04"].minReward, Config.Rewards["ScratchCard04"].maxReward)
            if Prob <= Config.Rewards["ScratchCard04"].chancePremiumReward then
                if Player.Functions.RemoveItem("scratchcard04") then
                    Player.Functions.AddMoney("cash", Config.Rewards["ScratchCard04"].premiumReward)
                    LogScratch( "**❗️ [ m-Scratches ]** ❗️" .. "\n" ..  "\n".. "**🧍‍♂️ [Player Information]** " .. "\n" ..  "**Player Name:** "..Player.PlayerData.name.. "\n" ..  "**CitizenID:** "..Player.PlayerData.citizenid.. "\n" ..  "**Location:** "..playerCoords.. "\n" ..  "\n".. "**📃 [LOG]**".. "\n" ..  "\n".. "📜 **Open a Scratch Ticket 04**".. "\n".. "**Type: ** 💰 Premium Prize".. "\n".. "**Amount Earn:** "..Config.Rewards["ScratchCard01"].premiumReward.."$" )
                    TriggerClientEvent('m-Scratches:Client:Notify', src, Language[LanguageType].youWon.." "..Config.Rewards["ScratchCard04"].premiumReward..Language[LanguageType].currencyType, 'success', 5000)
                end
            else
                if Player.Functions.RemoveItem("scratchcard04") then
                    Player.Functions.AddMoney("cash", Amount)
                    LogScratch( "**❗️ [ m-Scratches ]** ❗️" .. "\n" ..  "\n".. "**🧍‍♂️ [Player Information]** " .. "\n" ..  "**Player Name:** "..Player.PlayerData.name.. "\n" ..  "**CitizenID:** "..Player.PlayerData.citizenid.. "\n" ..  "**Location:** "..playerCoords.. "\n" ..  "\n".. "**📃 [LOG]**".. "\n" ..  "\n".. "**Ticket: ** Card 04".. "\n".. "**Type: ** Normal Prize 💵".. "\n".. "**Amount Earn:** "..Amount.."$" )
                    TriggerClientEvent('m-Scratches:Client:Notify', src, Language[LanguageType].youWon.." "..Amount..Language[LanguageType].currencyType, 'success', 5000)
                end
            end
        elseif card == "Card05" then
            local Amount = math.random(Config.Rewards["ScratchCard05"].minReward, Config.Rewards["ScratchCard05"].maxReward)
            if Prob <= Config.Rewards["ScratchCard05"].chancePremiumReward then
                if Player.Functions.RemoveItem("scratchcard05") then
                    Player.Functions.AddMoney("cash", Config.Rewards["ScratchCard05"].premiumReward)
                    LogScratch( "**❗️ [ m-Scratches ]** ❗️" .. "\n" ..  "\n".. "**🧍‍♂️ [Player Information]** " .. "\n" ..  "**Player Name:** "..Player.PlayerData.name.. "\n" ..  "**CitizenID:** "..Player.PlayerData.citizenid.. "\n" ..  "**Location:** "..playerCoords.. "\n" ..  "\n".. "**📃 [LOG]**".. "\n" ..  "\n".. "📜 **Open a Scratch Ticket 05**".. "\n".. "**Type: ** 💰 Premium Prize".. "\n".. "**Amount Earn:** "..Config.Rewards["ScratchCard01"].premiumReward.."$" )
                    TriggerClientEvent('m-Scratches:Client:Notify', src, Language[LanguageType].youWon.." "..Config.Rewards["ScratchCard05"].premiumReward..Language[LanguageType].currencyType, 'success', 5000)
                end
            else
                if Player.Functions.RemoveItem("scratchcard05") then
                    Player.Functions.AddMoney("cash", Amount)
                    LogScratch( "**❗️ [ m-Scratches ]** ❗️" .. "\n" ..  "\n".. "**🧍‍♂️ [Player Information]** " .. "\n" ..  "**Player Name:** "..Player.PlayerData.name.. "\n" ..  "**CitizenID:** "..Player.PlayerData.citizenid.. "\n" ..  "**Location:** "..playerCoords.. "\n" ..  "\n".. "**📃 [LOG]**".. "\n" ..  "\n".. "**Ticket: ** Card 05".. "\n".. "**Type: ** Normal Prize 💵".. "\n".. "**Amount Earn:** "..Amount.."$" )
                    TriggerClientEvent('m-Scratches:Client:Notify', src, Language[LanguageType].youWon.." "..Amount..Language[LanguageType].currencyType, 'success', 5000)
                end
            end
        end
    elseif Config.Settings.Framework == "esx" then
        local src = source 
        local Player = ESX.GetPlayerFromId(src)
        local Prob = math.random(1,100)
        local playerCoords = GetEntityCoords(GetPlayerPed(src))
        print("1")
        if card == "Card01" then
            print("2")
            local Amount = math.random(Config.Rewards["ScratchCard01"].minReward, Config.Rewards["ScratchCard01"].maxReward)
            if Prob <= Config.Rewards["ScratchCard01"].chancePremiumReward then
                Player.removeInventoryItem("scratchcard01", 1)
                Player.addMoney(Config.Rewards["ScratchCard01"].premiumReward)
                TriggerClientEvent('m-Scratches:Client:Notify', src, Language[LanguageType].youWon.." "..Config.Rewards["ScratchCard01"].premiumReward..Language[LanguageType].currencyType, 'success', 5000)
            else
                Player.removeInventoryItem("scratchcard01", 1)
                Player.addMoney(Amount)
                TriggerClientEvent('m-Scratches:Client:Notify', src, Language[LanguageType].youWon.." "..Amount..Language[LanguageType].currencyType, 'success', 5000)
            end
        elseif card == "Card02" then
            local Amount = math.random(Config.Rewards["ScratchCard02"].minReward, Config.Rewards["ScratchCard02"].maxReward)
            if Prob <= Config.Rewards["ScratchCard02"].chancePremiumReward then
                Player.removeInventoryItem("scratchcard02", 1)
                Player.addMoney(Config.Rewards["ScratchCard02"].premiumReward)
                TriggerClientEvent('m-Scratches:Client:Notify', src, Language[LanguageType].youWon.." "..Config.Rewards["ScratchCard02"].premiumReward..Language[LanguageType].currencyType, 'success', 5000)
            else
                Player.removeInventoryItem("scratchcard02", 1)
                Player.addMoney(Amount)
                TriggerClientEvent('m-Scratches:Client:Notify', src, Language[LanguageType].youWon.." "..Amount..Language[LanguageType].currencyType, 'success', 5000)
            end
        elseif card == "Card03" then
            local Amount = math.random(Config.Rewards["ScratchCard03"].minReward, Config.Rewards["ScratchCard03"].maxReward)
            if Prob <= Config.Rewards["ScratchCard03"].chancePremiumReward then
                Player.removeInventoryItem("scratchcard03")
                Player.addMoney(Config.Rewards["ScratchCard03"].premiumReward)
                TriggerClientEvent('m-Scratches:Client:Notify', src, Language[LanguageType].youWon.." "..Config.Rewards["ScratchCard03"].premiumReward..Language[LanguageType].currencyType, 'success', 5000)
            else
                Player.removeInventoryItem("scratchcard03")
                Player.addMoney(Amount)
                TriggerClientEvent('m-Scratches:Client:Notify', src, Language[LanguageType].youWon.." "..Amount..Language[LanguageType].currencyType, 'success', 5000)
            end
        elseif card == "Card04" then
            local Amount = math.random(Config.Rewards["ScratchCard04"].minReward, Config.Rewards["ScratchCard04"].maxReward)
            if Prob <= Config.Rewards["ScratchCard04"].chancePremiumReward then
                Player.removeInventoryItem("scratchcard04")
                Player.addMoney(Config.Rewards["ScratchCard04"].premiumReward)
                TriggerClientEvent('m-Scratches:Client:Notify', src, Language[LanguageType].youWon.." "..Config.Rewards["ScratchCard04"].premiumReward..Language[LanguageType].currencyType, 'success', 5000)
            else
                Player.removeInventoryItem("scratchcard04")
                Player.addMoney(Amount)
                TriggerClientEvent('m-Scratches:Client:Notify', src, Language[LanguageType].youWon.." "..Amount..Language[LanguageType].currencyType, 'success', 5000)
            end
        elseif card == "Card05" then
            local Amount = math.random(Config.Rewards["ScratchCard05"].minReward, Config.Rewards["ScratchCard05"].maxReward)
            if Prob <= Config.Rewards["ScratchCard05"].chancePremiumReward then
                Player.removeInventoryItem("scratchcard05")
                Player.addMoney(Config.Rewards["ScratchCard05"].premiumReward)
                TriggerClientEvent('m-Scratches:Client:Notify', src, Language[LanguageType].youWon.." "..Config.Rewards["ScratchCard05"].premiumReward..Language[LanguageType].currencyType, 'success', 5000)
            else
                Player.removeInventoryItem("scratchcard05")
                Player.addMoney(Amount)
                TriggerClientEvent('m-Scratches:Client:Notify', src, Language[LanguageType].youWon.." "..Amount..Language[LanguageType].currencyType, 'success', 5000)
            end
        end
    end
end)

AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
        return
    end
    print("^4m-Scratches ^0|^2 Script started successfully.^7")
    print("^4m-Scratches ^0|^5 Version: 1.1.0^7")
    print("^4m-Scratches ^0|^2 If you need any help contact:^7")
    print("^4m-Scratches ^0|^5 discord.gg/marcinhu^7")
    print("^4m-Scratches ^0|^2 Thank you for being our customer^7") 
end)

-- ██╗░░░░░░█████╗░░██████╗░░██████╗
-- ██║░░░░░██╔══██╗██╔════╝░██╔════╝
-- ██║░░░░░██║░░██║██║░░██╗░╚█████╗░
-- ██║░░░░░██║░░██║██║░░╚██╗░╚═══██╗
-- ███████╗╚█████╔╝╚██████╔╝██████╔╝
-- ╚══════╝░╚════╝░░╚═════╝░╚═════╝░

function LogScratch(message)
    local embed = {}
    embed = {
        {
            ["color"] = 65280, -- GREEN = 65280 --- RED = 16711680
            ["title"] = "m-Scratches | Logs",
            ["description"] = "" .. message ..  "",
            ["footer"] = {
                ["icon_url"] = "https://media.discordapp.net/attachments/1049749773185470537/1049749885043351662/transparent-logo.png",
                ["text"] = 'Created By m-Scripts | https://marcinhu.tebex.io/ ',
            },
        }
    }
    PerformHttpRequest(Config.Settings.Webhook, 
    function(err, text, headers) end, 'POST', json.encode({username = 'm-Scratches - Logs', embeds = embed}), { ['Content-Type'] = 'application/json' })
end