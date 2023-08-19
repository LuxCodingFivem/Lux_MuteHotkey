ESX = exports['es_extended']:getSharedObject()

RegisterServerEvent('Lux_MuteHotkey:MutePlayer')
AddEventHandler('Lux_MuteHotkey:MutePlayer', function()
    MumbleSetPlayerMuted(source, true)
end)

RegisterServerEvent('Lux_MuteHotkey:UnMutePlayer')
AddEventHandler('Lux_MuteHotkey:UnMutePlayer', function()
    MumbleSetPlayerMuted(source, false)
end)