Config = {}

Config.Locale = 'en' -- Translation en, de you can add more 

Config.Notify = true -- Enable or Disable the Notification

Config.DefaultHotkey = '' -- by Default is no Hotkey is set. you can set a Default Hotkey with this Config. you can find the hotkeys here https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/

-- This is for notifications (add your own in client.lua)
Config.Framework = "QBCore" -- ESX // QBCore

Config.Command = "mute"

Translation = {
    ['de'] = {
        ['Mute'] = '~p~Du hast dich gemutet', 
        ['UnMute'] = '~p~Du hast dich entmutet', 
    },
    ['en'] = {
        ['Mute'] = '~p~You muted yourself',
        ['UnMute'] = '~p~You unmuted yourself', 
    },
    ['es'] = {
        ['Mute'] = '~p~Micrófono silenciado',
        ['UnMute'] = '~p~Micrófono activado', 
    },
    ['fr'] = {
        ['Mute'] = '~p~Microphone coupé',
        ['UnMute'] = '~p~Microphone activé', 
    },
}