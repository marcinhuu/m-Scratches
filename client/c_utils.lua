if Config.Settings.Framework == "qb" then
    QBCore = exports[Config.Settings.Core]:GetCoreObject()
elseif Config.Settings.Framework == "esx" then
    ESX = exports['es_extended']:getSharedObject()
end

RegisterNetEvent('m-Scratches:Client:Notify')
AddEventHandler("m-Scratches:Client:Notify", function(msg,type,time)
    Notify(msg,type,time)
end)

function Notify(msg, type, time)
    if Config.Settings.Notify == "QBCore" then
        if type == "primary" then 
            QBCore.Functions.Notify(msg, "primary", time)
        end
        if type == "success" then
            QBCore.Functions.Notify(msg, "success", time)
        end
        if type == "error" then
            QBCore.Functions.Notify(msg, "error", time)
        end
    elseif Config.Settings.Notify == "okok" then
        if type == "primary" then 
            exports['okokNotify']:Alert('Farming', msg, time, 'primary')
        end
        if type == "success" then
            exports['okokNotify']:Alert('Farming', msg, time, 'success')
        end
        if type == "error" then
            exports['okokNotify']:Alert('Farming', msg, time, 'error')
        end
    elseif Config.Settings.Notify == "mythic" then
        if type == "primary" then 
            exports['mythic_notify']:DoHudText('inform', msg)
        end
        if type == "success" then
            exports['mythic_notify']:DoHudText('success', msg)
        end
        if type == "error" then
            exports['mythic_notify']:DoHudText('error', msg)
        end
    end
end

CreateThread(function()

    exports[Config.Settings.Target]:AddBoxZone("OpenScratchesShop", Config.Peds[1], 1.0, 1.0, 
        { name="OpenScratchesShop", heading = 320, debugPoly = false, minZ = Config.Peds[1].z-2, maxZ = Config.Peds[1].z+2 }, 
            { 
        options = {
            {
                action = function() OpenScratchesShop() end,
                icon = "fas fa-box",
                label = "Open Lottery Shop",
            },
        },  
        distance = 2.0 
    })

end)
