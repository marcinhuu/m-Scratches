if GetResourceState("qb-core") == "started" then
    QBCore = exports["qb-core"]:GetCoreObject()
elseif GetResourceState("es_extended") == "started" then
    ESX = exports['es_extended']:getSharedObject()
end

CreateThread(function ()
    RequestModel(Config.ScratchSettings.ped_model)
    while not HasModelLoaded(Config.ScratchSettings.ped_model) do
        Wait(1)
    end
    local scratchPed = CreatePed(4, Config.ScratchSettings.ped_model, Config.ScratchSettings.location_ped.x, Config.ScratchSettings.location_ped.y, Config.ScratchSettings.location_ped.z - 1.0, Config.ScratchSettings.location_ped.w, false, false)
    SetEntityInvincible(scratchPed, true)
    SetBlockingOfNonTemporaryEvents(scratchPed, true)
    FreezeEntityPosition(scratchPed, true)
    TaskStartScenarioInPlace(scratchPed, "WORLD_HUMAN_STAND_IMPATIENT", 0, true)

    if GetResourceState("qb-target") == "started" then
        exports['qb-target']:AddBoxZone("ScratchShop", Config.ScratchSettings.location, 1.0, 1.0, {
            name = "ScratchShop",
            heading = 0,
            debugPoly = false,
            minZ = Config.ScratchSettings.location.z - 1,
            maxZ = Config.ScratchSettings.location.z + 2,
        }, {
            options = {
                {
                    icon = "fas fa-ticket",
                    label = "Open Scratch Shop",
                    action = function()
                        OpenScratchShop()
                    end
                },
            },
            distance = 2.5
        })
    elseif GetResourceState("ox_target") == "started" then
        exports.ox_target:addBoxZone({
            coords = Config.ScratchSettings.location,
            size = vec3(1.0, 1.0, 2.0),
            rotation = 0,
            debug = false,
            options = {
                {
                    icon = "fas fa-ticket",
                    label = "Open Scratch Shop",
                    onSelect = function()
                        OpenScratchShop()
                    end
                },
            },
            distance = 2.5
        })
    end
end)

function OpenScratchShop()
    local options = {}
    for k, v in pairs(Config.ScratchShop) do
        options[#options + 1] = {
            title = GetItemLabelFromInventory(v.item_name),
            description = "Buy " .. GetItemLabelFromInventory(v.item_name) .. " for $" .. v.item_price,
            icon = GetImageFromInventory(v.item_name),
            args = { item = v.item_name, price = v.item_price },
            onSelect = function ()
                local input = GetUserInput('Scratch Card', {
                    { type = 'number', label = 'How many cards you want to buy? (Max ' .. Config.MaxScratchCards .. ')', min = 1, max = Config.MaxScratchCards }
                })
                if input then
                   local buySuccess = lib.callback.await('m-Scratches:Server:BuyScratchCard', 5000, v.item_name, v.item_price * tonumber(input[1]), tonumber(input[1]))
                    if buySuccess then
                        Notify("You bought " .. input[1] .. "x " .. GetItemLabelFromInventory(v.item_name) .. " for $" .. (v.item_price * tonumber(input[1])), 'success')
                    end
                end
            end,
        }
    end
    RegisterContextMenu('scratch_shop', 'Scratch Shop', options)
    ShowContextMenu('scratch_shop')
end

local cooldownActive = false

local function InsertCooldown()
    if not cooldownActive then
        cooldownActive = true
        CreateThread(function()
            local cooldownTime = Config.Cooldown
            while cooldownTime > 0 do
                Wait(1000)
                cooldownTime = cooldownTime - 1
            end
            cooldownActive = false
        end)
        return true
    else
        Notify("You need to wait before using another scratch card.", 'error')
        return false
    end
end

RegisterNetEvent("m-Scratches:Client:OpenScratchCard", function(cardId)
    if not InsertCooldown() then return end 

    local success = GetProgressbar("Scratching the card...", 10000, "base", "amb@world_human_bum_wash@male@high@base", 49)

    if success then
        local rewardSucess = lib.callback.await('m-Scratches:Server:RewardCard', 5000, cardId)
        if rewardSucess then
            ClearPedTasks(PlayerPedId())
        end
    else
        Notify("Scratch Card", "You cancelled scratching the card.", 'error')
    end
end)