ESX = exports["es_extended"]:getSharedObject()

local basicArmour = Config.BasicArmour
local simpleArmour = Config.SimpleArmour
local mediumArmour = Config.MediumArmour
local highArmour = Config.HighArmour


Citizen.CreateThread(function()
    for k,v in pairs(Config.Shops) do
        TriggerEvent('gridsystem:registerMarker', {
            name = 'steffone_armour' .. k,
            pos = vector3(v.x,v.y,v.z),
            scale = vector3(1, 1, 1),
            msg = Config.OpenShop,
            control = 'E',
            type = 1,
            color = { r = 130, g = 120, b = 110 },
            action = function()
                local trigger = 'steffone:menudefault'
                if Config.Menu == 'ox' then
                    trigger = 'steffone:menuoxlib'
                elseif Config.Menu == 'esx' then
                    trigger = 'steffone:menuesxlib'
                end
                TriggerEvent(trigger)
            end
        })
    end
end)

RegisterNetEvent("steffone:menudefault", function()
    local ped = cache.ped
    local Elements = {
        {label = Config.BuyBasicArmour .. " $" .. Config.BasicArmour, name = "armatura25"},
        {label = Config.BuySimpleArmour .. " $" .. Config.SimpleArmour, name = "armatura50"},
        {label = Config.BuyMediumArmour .. " $" .. Config.MediumArmour, name = "armatura75"},
        {label = Config.BuyHighArmour .. " $" .. Config.HighArmour, name = "armatura50"},
    }

    ESX.UI.Menu.Open("default", GetCurrentResourceName(), "Example_Menu", {
        title = "",
        align = 'top-left',
        elements = Elements
    }, function(data, menu) 
        if data.current.name == "armatura25" then
            ESX.TriggerServerCallback('steffone:checkSoldi', function(steffone)
                if steffone then
                    SetPedArmour(ped, 25)
                    local notificationText = Config.NotifyBuy .. " " .. prezzo25
                    if Config.Notify == 'ox' then
                        lib.notify({
                            title = Config.ServerName,
                            description = notificationText,
                            type = 'success'
                        })
                    else
                        ESX.ShowNotification(notificationText)
                    end
                end
            end, prezzo25)
        elseif data.current.name == "armatura50" then
            ESX.TriggerServerCallback('steffone:checkSoldi', function(steffone)
                if steffone then
                    SetPedArmour(ped, 50)
                    local notificationText = Config.NotifyBuy .. " " .. Prezzo50
                    if Config.Notify == 'ox' then
                        lib.notify({
                            title = Config.ServerName,
                            description = notificationText,
                            type = 'success'
                        })
                    else
                        ESX.ShowNotification(notificationText)
                    end
                end
            end, Prezzo50)
        elseif data.current.name == "armatura75" then
            ESX.TriggerServerCallback('steffone:checkSoldi', function(steffone)
                if steffone then
                    SetPedArmour(ped, 75)
                    local notificationText = Config.NotifyBuy .. " " .. prezzo75
                    if Config.Notify == 'ox' then
                        lib.notify({
                            title = Config.ServerName,
                            description = notificationText,
                            type = 'success'
                        })
                    else
                        ESX.ShowNotification(notificationText)
                    end
                end
            end, prezzo75)
        elseif data.current.name == "armatura100" then
            ESX.TriggerServerCallback('steffone:checkSoldi', function(steffone)
                if steffone then
                    SetPedArmour(ped, 100)
                    local notificationText = Config.NotifyBuy .. " " .. prezzo100
                    if Config.Notify == 'ox' then
                        lib.notify({
                            title = Config.ServerName,
                            description = notificationText,
                            type = 'success'
                        })
                    else
                        ESX.ShowNotification(notificationText)
                    end
                end
            end, prezzo100)
        elseif data.current.name == "togligiubbo" then
            ESX.TriggerServerCallback('steffone:checkSoldi', function(steffone)
                if steffone then
                    SetPedArmour(ped, 0)
                    local notificationText = Config.NotifyBuy .. " Hai tolto il giubbo"
                    if Config.Notify == 'ox' then
                        lib.notify({
                            title = Config.ServerName,
                            description = notificationText,
                            type = 'success'
                        })
                    else
                        ESX.ShowNotification(notificationText)
                    end
                end
            end, prezzo)
        end
    end, function(data, menu) -- Funzione di cancellazione
        print("Chiusura del menu")
        menu.close() -- Chiusura del menu
    end)
end)
Config = {
    BuyBasicArmour = 'Buy Basic Armour',
    BuySimpleArmour = 'Buy Simple Armour',
    BuyMediumArmour = 'Buy Medium Armour',
    BuyHighArmour = 'Buy High Armour'
}

RegisterNetEvent("steffone:menuoxlib", function()
    local ped = cache.ped
    lib.registerContext({
        id = 'steffone_armatura',
        title = 'Prendi Armatura',
        options = {
            {
                title = Config.BuyBasicArmour,
                icon = "shield-halved",
                onSelect = function()
                    ESX.TriggerServerCallback('steffone:checkSoldi', function(steffone)
                        if steffone then
                            SetPedArmour(ped, 25)
                            local notificationText = Config.NotifyBuy .. " 25%"
                            if Config.Notify == 'ox' then
                                lib.notify({
                                    title = Config.ServerName,
                                    description = notificationText,
                                    type = 'success'
                                })
                            else
                                ESX.ShowNotification(notificationText)
                            end
                        end
                    end, prezzo25)
                end
            },
            {
                title = Config.BuySimpleArmour,
                icon = "shield-halved",
                onSelect = function()
                    ESX.TriggerServerCallback('steffone:checkSoldi', function(steffone)
                        if steffone then
                            SetPedArmour(ped, 50)
                            local notificationText = Config.NotifyBuy .. " 50%"
                            if Config.Notify == 'ox' then
                                lib.notify({
                                    title = Config.ServerName,
                                    description = notificationText,
                                    type = 'success'
                                })
                            else
                                ESX.ShowNotification(notificationText)
                            end
                        end
                    end, prezzo50)
                end
            },
            {
                title = Config.BuyMediumArmour,
                icon = "shield-halved",
                onSelect = function()
                    ESX.TriggerServerCallback('steffone:checkSoldi', function(steffone)
                        if steffone then
                            SetPedArmour(ped, 75)
                            local notificationText = Config.NotifyBuy .. " 75%"
                            if Config.Notify == 'ox' then
                                lib.notify({
                                    title = Config.ServerName,
                                    description = notificationText,
                                    type = 'success'
                                })
                            else
                                ESX.ShowNotification(notificationText)
                            end
                        end
                    end, prezzo75)
                end
            },
            {
                title = Config.BuyHighArmour,
                icon = "shield-halved",
                onSelect = function()
                    ESX.TriggerServerCallback('steffone:checkSoldi', function(steffone)
                        if steffone then
                            SetPedArmour(ped, 100)
                            local notificationText = Config.NotifyBuy .. " 100%"
                            if Config.Notify == 'ox' then
                                lib.notify({
                                    title = Config.ServerName,
                                    description = notificationText,
                                    type = 'success'
                                })
                            else
                                ESX.ShowNotification(notificationText)
                            end
                        end
                    end, prezzo100)
                end
            },
            {
                title = Config.Language.MenuTitles.RemoveArmour,
                icon = "x",
                onSelect = function()
                    SetPedArmour(ped, 0)
                    local notificationText = Config.RemoveArmour
                    if Config.Notify == 'ox' then
                        lib.notify({
                            title = Config.ServerName,
                            description = notificationText,
                            type = 'success'
                        })
                    else
                        ESX.ShowNotification(notificationText)
                    end
                end
            }
        }
    })
     
    lib.showContext('steffone_armatura')
end)
