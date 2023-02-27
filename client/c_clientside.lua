if Config.Settings.Framework == "qb" then
    QBCore = exports[Config.Settings.Core]:GetCoreObject()
elseif Config.Settings.Framework == "esx" then
    ESX = exports['es_extended']:getSharedObject()
end

local peds = Config.Peds
local canOpen = true

---------------------------------------- #### THREADS #### ----------------------------------------

-- Thread to spawn peds
CreateThread(function() for _, item in pairs(peds) do if item.enable then RequestModel(item.hash) while not HasModelLoaded(item.hash) do Wait(1) end peds =  CreatePed(item.type, item.hash, item.x, item.y, item.z, item.a, false, true) SetBlockingOfNonTemporaryEvents(peds, true) SetPedDiesWhenInjured(peds, false) SetEntityHeading(peds, item.h) SetPedCanPlayAmbientAnims(peds, true) SetPedCanRagdollFromPlayerImpact(peds, false) SetEntityInvincible(peds, true) FreezeEntityPosition(peds, true) end end end)

-- Thread to blips
CreateThread(function() for _, info in pairs(Config.Blips) do if info.enable then info.blip = AddBlipForCoord(info.x, info.y, info.z) SetBlipSprite(info.blip, info.sprite) SetBlipDisplay(info.blip, info.display) SetBlipScale(info.blip, info.scale) SetBlipColour(info.blip, info.colour) SetBlipAsShortRange(info.blip, true) BeginTextCommandSetBlipName("STRING") AddTextComponentSubstringPlayerName(info.name) EndTextCommandSetBlipName(info.blip) end end  end)

function OpenScratchesShop()
	TriggerServerEvent("inventory:server:OpenInventory", "shop", Language[LanguageType].scratchShop, {
        label = Language[LanguageType].scratchShop,
        items = Config.ScratchShop,
        slots = #Config.ScratchShop,
    })
end

function Cooldown()
    canOpen = false
    Citizen.Wait(Config.Settings.Timer * 60000)
    canOpen = true
end

RegisterNetEvent('m-Scratches:Client:OpenCard')
AddEventHandler("m-Scratches:Client:OpenCard", function(v)
    if Config.Settings.Cooldown then if not canOpen then return Notify(Language[LanguageType].cooldownTimer, "error", 5000) end end
    if Config.Settings.Framework == "qb" then
        QBCore.Functions.Progressbar('OpenCard', Language[LanguageType].openingPack..v, 5000, false, false, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "mp_arresting",anim = "a_uncuff",flags = 49
        }, {}, {}, function()
            if v == "scratchcard01" then
                TriggerServerEvent("m-Scratches:Server:RewardCard", "Card01")
                if Config.Settings.Cooldown then Cooldown() end
            elseif v == "scratchcard02" then
                TriggerServerEvent("m-Scratches:Server:RewardCard", "Card02")
                if Config.Settings.Cooldown then Cooldown() end
            elseif v == "scratchcard03" then
                TriggerServerEvent("m-Scratches:Server:RewardCard", "Card03")
                if Config.Settings.Cooldown then Cooldown() end
            elseif v == "scratchcard04" then
                TriggerServerEvent("m-Scratches:Server:RewardCard", "Card04")
                if Config.Settings.Cooldown then Cooldown() end
            elseif v == "scratchcard05" then
                TriggerServerEvent("m-Scratches:Server:RewardCard", "Card05")
                if Config.Settings.Cooldown then Cooldown() end
            end
        end, function()
            Notify(Language[LanguageType].failedOpening, 'error', 5000)
        end)
    elseif Config.Settings.Framework == "esx" then
        lib.progressBar({
            duration = 5000,
            label = Language[LanguageType].openingPack..v,
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
            },
            anim = {
                dict = "mp_arresting",
                clip = "a_uncuff"
            },
        })
        if v == "scratchcard01" then
            TriggerServerEvent("m-Scratches:Server:RewardCard", "Card01")
            if Config.Settings.Cooldown then Cooldown() end
        elseif v == "scratchcard02" then
            TriggerServerEvent("m-Scratches:Server:RewardCard", "Card02")
            if Config.Settings.Cooldown then Cooldown() end
        elseif v == "scratchcard03" then
            TriggerServerEvent("m-Scratches:Server:RewardCard", "Card03")
            if Config.Settings.Cooldown then Cooldown() end
        elseif v == "scratchcard04" then
            TriggerServerEvent("m-Scratches:Server:RewardCard", "Card04")
            if Config.Settings.Cooldown then Cooldown() end
        elseif v == "scratchcard05" then
            TriggerServerEvent("m-Scratches:Server:RewardCard", "Card05")
            if Config.Settings.Cooldown then Cooldown() end
        end
    end
end)