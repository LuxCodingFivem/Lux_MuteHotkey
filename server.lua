RegisterNetEvent('Lux_MuteHotkey:MutePlayer')
    AddEventHandler('Lux_MuteHotkey:MutePlayer', function()
    MumbleSetPlayerMuted(source, true)
end)

RegisterNetEvent('Lux_MuteHotkey:UnMutePlayer')
    AddEventHandler('Lux_MuteHotkey:UnMutePlayer', function()
    MumbleSetPlayerMuted(source, false)
end)