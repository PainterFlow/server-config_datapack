scoreboard players reset @s blob
scoreboard players enable @s blob
scoreboard players reset @s ui
scoreboard players enable @s ui

advancement revoke @s only blobs:settings/ui
advancement revoke @s only blobs:settings/blob

function blobs:render_thread/render/ui with entity @s data.render_data.ui

tellraw @a[tag=debugSettingsThread] {text:"[BLOBS-SETTINGS] ",color:"dark_purple",bold:1b,extra:[{text:"Getting Settings",color:"gray",italic:1b,bold:0b}]}