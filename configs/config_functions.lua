function Notify(title, msg, type, time)
    if Config.Notification == "ox_lib" then
        lib.notify({ title = title, description = msg, type = type, time = time })
    elseif Config.Notification == "lation_ui" then
        exports.lation_ui:notify({ title = title, description = msg, type = type, time = time })
    end
end

function RegisterContextMenu(id, title, options)
    if Config.Display == "ox_lib" then
        lib.registerContext({ id = id, title = title, options = options })
        lib.showContext(id)
    elseif Config.Display == "lation_ui" then
        exports.lation_ui:registerMenu({ id = id, title = title, options = options })
        exports.lation_ui:showMenu(id)
    end
end

function ShowContextMenu(id)
    if Config.Display == "ox_lib" then
        lib.showContext(id)
    elseif Config.Display == "lation_ui" then
        exports.lation_ui:showMenu(id)
    end
end

function HideContextMenu()
    if Config.Display == "ox_lib" then
        lib.hideContext()
    elseif Config.Display == "lation_ui" then
        exports.lation_ui:hideMenu()
    end
end

function GetImageFromInventory(item)
    if GetResourceState("qb-inventory") == "started" then
        local qbItem = QBCore.Shared.Items[item]
        return qbItem and "nui://qb-inventory/html/images/" .. qbItem.image
    elseif GetResourceState("ox_inventory") == "started" then
        local oxItem = exports.ox_inventory:Items(item)
        return oxItem and oxItem.client and oxItem.client.image or item .. ".png"
    end
end

function GetItemLabelFromInventory(item)
    if GetResourceState("qb-inventory") == "started" then
        return QBCore.Shared.Items[item] and QBCore.Shared.Items[item].label or item
    elseif GetResourceState("ox_inventory") == "started" then
        local oxItem = exports.ox_inventory:Items(item)
        return oxItem and oxItem.label or item
    end
end

function GetUserInput(title, fields)
    if Config.Display == "ox_lib" then
        return lib.inputDialog(title, fields)
    elseif Config.Display == "lation_ui" then
        return exports.lation_ui:input({
            title = title or "",
            options = fields
        })
    end
end

function GetProgressbar(label, duration, clip, dict, flag)
    flag = flag or 49
    if Config.Display == "ox_lib" then
        return lib.progressCircle({
            duration = duration,
            label = label,
            position = 'bottom',
            useWhileDead = false,
            canCancel = true,
            disable = { car = true, move = true, combat = true },
            anim = { dict = dict, clip = clip, flag = flag }
        })
    elseif Config.Display == "lation_ui" then
        return exports.lation_ui:progressBar({
            label = label,
            duration = duration,
            icon = 'fa-solid fa-gem',
            useWhileDead = false,
            canCancel = true,
            disable = { car = true, move = true, combat = true },
            anim = { dict = dict, clip = clip, flag = flag }
        })
    end
end
