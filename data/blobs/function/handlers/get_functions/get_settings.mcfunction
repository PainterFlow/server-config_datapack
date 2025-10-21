scoreboard players reset @s blob
scoreboard players enable @s blob

advancement revoke @s only blobs:settings/blob

function blobs:render_thread/render/settings with entity @s data.render_data.setting_modules

tellraw @a[tag=debugSettingsThread] {text:"[BLOBS-SETTINGS] ",color:"dark_purple",bold:1b,extra:[{text:"Getting Settings",color:"gray",italic:1b,bold:0b}]}