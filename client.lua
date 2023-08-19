ESX = exports['es_extended']:getSharedObject()

local Muted = false

RegisterKeyMapping("Mute", "Mute/ Unmute Hotkey1", "keyboard", Config.DefaultHotkey);

RegisterCommand('Mute', function(source, args)
    TriggerEvent('Lux_MuteHotkey:ToggleMute')
end, false)

RegisterNetEvent('Lux_MuteHotkey:ToggleMute')
AddEventHandler('Lux_MuteHotkey:ToggleMute', function()
    if not Muted then 
        TriggerServerEvent('Lux_MuteHotkey:MutePlayer')
        if Config.UseNotifi then 
            ESX.ShowNotification(string.format(Translation[Config.Locale]['Mute']))
        end
        Muted = true
    else
        TriggerServerEvent('Lux_MuteHotkey:UnMutePlayer')
        if Config.UseNotifi then 
            ESX.ShowNotification(string.format(Translation[Config.Locale]['UnMute']))
        end
        Muted = false
    end
end)