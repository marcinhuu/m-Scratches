local QBCore = exports[Config.Settings.Core]:GetCoreObject()

local cards = {"lotterycard01", "lotterycard02", "lotterycard03", "lotterycard04", "lotterycard05"}
for k, v in pairs(cards) do
    QBCore.Functions.CreateUseableItem(v, function(source, item) 
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player.Functions.GetItemByName(item.name) then return end
        if Player.Functions.GetItemBySlot(item.slot) ~= nil then
            TriggerClientEvent("m-Lottery:Client:OpenCard", source, v) 
        end
    end)
end

RegisterServerEvent("m-Lottery:Server:RewardCard")
AddEventHandler("m-Lottery:Server:RewardCard", function(card)
    local src = source 
    local Player = QBCore.Functions.GetPlayer(src)
    local Prob = math.random(1,100)
    local playerCoords = GetEntityCoords(GetPlayerPed(src))
    if card == "Card01" then
        local Amount = math.random(Config.Rewards["LotteryCard01"].minReward, Config.Rewards["LotteryCard01"].maxReward)
        if Prob <= Config.Rewards["LotteryCard01"].chancePremiumReward then
            if Player.Functions.RemoveItem("lotterycard01") then
                Player.Functions.AddMoney("cash", Config.Rewards["LotteryCard01"].premiumReward)
                LogLottery( "**❗️ [ M-LOTTERY ]** ❗️" .. "\n" ..  "\n".. "**🧍‍♂️ [Player Information]** " .. "\n" ..  "**Player Name:** "..Player.PlayerData.name.. "\n" ..  "**CitizenID:** "..Player.PlayerData.citizenid.. "\n" ..  "**Location:** "..playerCoords.. "\n" ..  "\n".. "**📃 [LOG]**".. "\n" ..  "\n".. "📜 **Open a Lottery Ticket 01**".. "\n".. "**Type: ** 💰 Premium Prize".. "\n".. "**Amount Earn:** "..Config.Rewards["LotteryCard01"].premiumReward.."$" )
                TriggerClientEvent('m-Lottery:Client:Notify', src, Language[LanguageType].youWon.." "..Config.Rewards["LotteryCard01"].premiumReward..Language[LanguageType].currencyType, 'success', 5000)
            end
        else
            if Player.Functions.RemoveItem("lotterycard01") then
                Player.Functions.AddMoney("cash", Amount)
                LogLottery( "**❗️ [ M-LOTTERY ]** ❗️" .. "\n" ..  "\n".. "**🧍‍♂️ [Player Information]** " .. "\n" ..  "**Player Name:** "..Player.PlayerData.name.. "\n" ..  "**CitizenID:** "..Player.PlayerData.citizenid.. "\n" ..  "**Location:** "..playerCoords.. "\n" ..  "\n".. "**📃 [LOG]**".. "\n" ..  "\n".. "**Ticket: ** Card 01".. "\n".. "**Type: ** Normal Prize 💵".. "\n".. "**Amount Earn:** "..Amount.."$" )
                TriggerClientEvent('m-Lottery:Client:Notify', src, Language[LanguageType].youWon.." "..Amount..Language[LanguageType].currencyType, 'success', 5000)
            end
        end
    elseif card == "Card02" then
        local Amount = math.random(Config.Rewards["LotteryCard02"].minReward, Config.Rewards["LotteryCard02"].maxReward)
        if Prob <= Config.Rewards["LotteryCard02"].chancePremiumReward then
            if Player.Functions.RemoveItem("lotterycard02") then
                Player.Functions.AddMoney("cash", Config.Rewards["LotteryCard02"].premiumReward)
                LogLottery( "**❗️ [ M-LOTTERY ]** ❗️" .. "\n" ..  "\n".. "**🧍‍♂️ [Player Information]** " .. "\n" ..  "**Player Name:** "..Player.PlayerData.name.. "\n" ..  "**CitizenID:** "..Player.PlayerData.citizenid.. "\n" ..  "**Location:** "..playerCoords.. "\n" ..  "\n".. "**📃 [LOG]**".. "\n" ..  "\n".. "📜 **Open a Lottery Ticket 02**".. "\n".. "**Type: ** 💰 Premium Prize".. "\n".. "**Amount Earn:** "..Config.Rewards["LotteryCard01"].premiumReward.."$" )
                TriggerClientEvent('m-Lottery:Client:Notify', src, Language[LanguageType].youWon.." "..Config.Rewards["LotteryCard02"].premiumReward..Language[LanguageType].currencyType, 'success', 5000)
            end
        else
            if Player.Functions.RemoveItem("lotterycard02") then
                Player.Functions.AddMoney("cash", Amount)
                LogLottery( "**❗️ [ M-LOTTERY ]** ❗️" .. "\n" ..  "\n".. "**🧍‍♂️ [Player Information]** " .. "\n" ..  "**Player Name:** "..Player.PlayerData.name.. "\n" ..  "**CitizenID:** "..Player.PlayerData.citizenid.. "\n" ..  "**Location:** "..playerCoords.. "\n" ..  "\n".. "**📃 [LOG]**".. "\n" ..  "\n".. "**Ticket: ** Card 02".. "\n".. "**Type: ** Normal Prize 💵".. "\n".. "**Amount Earn:** "..Amount.."$" )
                TriggerClientEvent('m-Lottery:Client:Notify', src, Language[LanguageType].youWon.." "..Amount..Language[LanguageType].currencyType, 'success', 5000)
            end
        end
    elseif card == "Card03" then
        local Amount = math.random(Config.Rewards["LotteryCard03"].minReward, Config.Rewards["LotteryCard03"].maxReward)
        if Prob <= Config.Rewards["LotteryCard03"].chancePremiumReward then
            if Player.Functions.RemoveItem("lotterycard03") then
                Player.Functions.AddMoney("cash", Config.Rewards["LotteryCard03"].premiumReward)
                LogLottery( "**❗️ [ M-LOTTERY ]** ❗️" .. "\n" ..  "\n".. "**🧍‍♂️ [Player Information]** " .. "\n" ..  "**Player Name:** "..Player.PlayerData.name.. "\n" ..  "**CitizenID:** "..Player.PlayerData.citizenid.. "\n" ..  "**Location:** "..playerCoords.. "\n" ..  "\n".. "**📃 [LOG]**".. "\n" ..  "\n".. "📜 **Open a Lottery Ticket 03**".. "\n".. "**Type: ** 💰 Premium Prize".. "\n".. "**Amount Earn:** "..Config.Rewards["LotteryCard01"].premiumReward.."$" )
                TriggerClientEvent('m-Lottery:Client:Notify', src, Language[LanguageType].youWon.." "..Config.Rewards["LotteryCard03"].premiumReward..Language[LanguageType].currencyType, 'success', 5000)
            end
        else
            if Player.Functions.RemoveItem("lotterycard03") then
                Player.Functions.AddMoney("cash", Amount)
                LogLottery( "**❗️ [ M-LOTTERY ]** ❗️" .. "\n" ..  "\n".. "**🧍‍♂️ [Player Information]** " .. "\n" ..  "**Player Name:** "..Player.PlayerData.name.. "\n" ..  "**CitizenID:** "..Player.PlayerData.citizenid.. "\n" ..  "**Location:** "..playerCoords.. "\n" ..  "\n".. "**📃 [LOG]**".. "\n" ..  "\n".. "**Ticket: ** Card 03".. "\n".. "**Type: ** Normal Prize 💵".. "\n".. "**Amount Earn:** "..Amount.."$" )
                TriggerClientEvent('m-Lottery:Client:Notify', src, Language[LanguageType].youWon.." "..Amount..Language[LanguageType].currencyType, 'success', 5000)
            end
        end
    elseif card == "Card04" then
        local Amount = math.random(Config.Rewards["LotteryCard04"].minReward, Config.Rewards["LotteryCard04"].maxReward)
        if Prob <= Config.Rewards["LotteryCard04"].chancePremiumReward then
            if Player.Functions.RemoveItem("lotterycard04") then
                Player.Functions.AddMoney("cash", Config.Rewards["LotteryCard04"].premiumReward)
                LogLottery( "**❗️ [ M-LOTTERY ]** ❗️" .. "\n" ..  "\n".. "**🧍‍♂️ [Player Information]** " .. "\n" ..  "**Player Name:** "..Player.PlayerData.name.. "\n" ..  "**CitizenID:** "..Player.PlayerData.citizenid.. "\n" ..  "**Location:** "..playerCoords.. "\n" ..  "\n".. "**📃 [LOG]**".. "\n" ..  "\n".. "📜 **Open a Lottery Ticket 04**".. "\n".. "**Type: ** 💰 Premium Prize".. "\n".. "**Amount Earn:** "..Config.Rewards["LotteryCard01"].premiumReward.."$" )
                TriggerClientEvent('m-Lottery:Client:Notify', src, Language[LanguageType].youWon.." "..Config.Rewards["LotteryCard04"].premiumReward..Language[LanguageType].currencyType, 'success', 5000)
            end
        else
            if Player.Functions.RemoveItem("lotterycard04") then
                Player.Functions.AddMoney("cash", Amount)
                LogLottery( "**❗️ [ M-LOTTERY ]** ❗️" .. "\n" ..  "\n".. "**🧍‍♂️ [Player Information]** " .. "\n" ..  "**Player Name:** "..Player.PlayerData.name.. "\n" ..  "**CitizenID:** "..Player.PlayerData.citizenid.. "\n" ..  "**Location:** "..playerCoords.. "\n" ..  "\n".. "**📃 [LOG]**".. "\n" ..  "\n".. "**Ticket: ** Card 04".. "\n".. "**Type: ** Normal Prize 💵".. "\n".. "**Amount Earn:** "..Amount.."$" )
                TriggerClientEvent('m-Lottery:Client:Notify', src, Language[LanguageType].youWon.." "..Amount..Language[LanguageType].currencyType, 'success', 5000)
            end
        end
    elseif card == "Card05" then
        local Amount = math.random(Config.Rewards["LotteryCard05"].minReward, Config.Rewards["LotteryCard05"].maxReward)
        if Prob <= Config.Rewards["LotteryCard05"].chancePremiumReward then
            if Player.Functions.RemoveItem("lotterycard05") then
                Player.Functions.AddMoney("cash", Config.Rewards["LotteryCard05"].premiumReward)
                LogLottery( "**❗️ [ M-LOTTERY ]** ❗️" .. "\n" ..  "\n".. "**🧍‍♂️ [Player Information]** " .. "\n" ..  "**Player Name:** "..Player.PlayerData.name.. "\n" ..  "**CitizenID:** "..Player.PlayerData.citizenid.. "\n" ..  "**Location:** "..playerCoords.. "\n" ..  "\n".. "**📃 [LOG]**".. "\n" ..  "\n".. "📜 **Open a Lottery Ticket 05**".. "\n".. "**Type: ** 💰 Premium Prize".. "\n".. "**Amount Earn:** "..Config.Rewards["LotteryCard01"].premiumReward.."$" )
                TriggerClientEvent('m-Lottery:Client:Notify', src, Language[LanguageType].youWon.." "..Config.Rewards["LotteryCard05"].premiumReward..Language[LanguageType].currencyType, 'success', 5000)
            end
        else
            if Player.Functions.RemoveItem("lotterycard05") then
                Player.Functions.AddMoney("cash", Amount)
                LogLottery( "**❗️ [ M-LOTTERY ]** ❗️" .. "\n" ..  "\n".. "**🧍‍♂️ [Player Information]** " .. "\n" ..  "**Player Name:** "..Player.PlayerData.name.. "\n" ..  "**CitizenID:** "..Player.PlayerData.citizenid.. "\n" ..  "**Location:** "..playerCoords.. "\n" ..  "\n".. "**📃 [LOG]**".. "\n" ..  "\n".. "**Ticket: ** Card 05".. "\n".. "**Type: ** Normal Prize 💵".. "\n".. "**Amount Earn:** "..Amount.."$" )
                TriggerClientEvent('m-Lottery:Client:Notify', src, Language[LanguageType].youWon.." "..Amount..Language[LanguageType].currencyType, 'success', 5000)
            end
        end
    end
end)

AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
        return
    end
    print("^4m-Lottery ^0|^2 Script started successfully.^7")
    print("^4m-Lottery ^0|^5 Version: 1.1.0^7")
    print("^4m-Lottery ^0|^2 If you need any help contact:^7")
    print("^4m-Lottery ^0|^5 discord.gg/marcinhu^7")
    print("^4m-Lottery ^0|^2 Thank you for being our customer^7") 
end)

-- ██╗░░░░░░█████╗░░██████╗░░██████╗
-- ██║░░░░░██╔══██╗██╔════╝░██╔════╝
-- ██║░░░░░██║░░██║██║░░██╗░╚█████╗░
-- ██║░░░░░██║░░██║██║░░╚██╗░╚═══██╗
-- ███████╗╚█████╔╝╚██████╔╝██████╔╝
-- ╚══════╝░╚════╝░░╚═════╝░╚═════╝░

function LogLottery(message)
    local embed = {}
    embed = {
        {
            ["color"] = 65280, -- GREEN = 65280 --- RED = 16711680
            ["title"] = "m-Lottery | Logs",
            ["description"] = "" .. message ..  "",
            ["footer"] = {
                ["icon_url"] = "https://media.discordapp.net/attachments/1049749773185470537/1049749885043351662/transparent-logo.png",
                ["text"] = 'Created By m-Scripts | https://marcinhu.tebex.io/ ',
            },
        }
    }
    PerformHttpRequest(Config.Settings.Webhook, 
    function(err, text, headers) end, 'POST', json.encode({username = 'm-Lottery - Logs', embeds = embed}), { ['Content-Type'] = 'application/json' })
end