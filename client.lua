local Muted = false
-- ESX & QBCore Support.
if Config.Framework == "ESX" then
    ESX = exports['es_extended']:getSharedObject()
elseif Config.Framework == "QBCore" then
    QBCore = exports['qb-core']:GetCoreObject()
end

RegisterKeyMapping("Mute", "Mute/ Unmute Hotkey1", "keyboard", Config.DefaultHotkey);

    RegisterCommand(Config.Command, function()
    if Muted == false then
        TriggerServerEvent('Lux_MuteHotkey:MutePlayer')
        Muted = true
        if Config.Framework == "ESX" then
            ESX.ShowNotification(string.format(Translation[Config.Locale]['Mute']))
        elseif Config.Framework == "QBCore" then
            QBCore.Functions.Notify(string.format(Translation[Config.Locale]['Mute']))
        end
    else
        TriggerServerEvent('Lux_MuteHotkey:UnMutePlayer')
        Muted = false
        if Config.Framework == "ESX" then
            ESX.ShowNotification(string.format(Translation[Config.Locale]['UnMute']))
        elseif Config.Framework == "QBCore" then
            QBCore.Functions.Notify(string.format(Translation[Config.Locale]['UnMute']))
        end
    end
end)