scoreboard players reset @s debug
scoreboard players enable @s debug
scoreboard players reset @s blob
scoreboard players enable @s blob

advancement revoke @s only blobs:settings/blob
advancement revoke @s only blobs:settings/debug

execute as @s run function blobs:render_thread/render/debug with entity @s data.render_data.debug


tellraw @a[tag=debugSettingsThread] {text:"[BLOBS-SETTINGS] ",color:"dark_purple",bold:1b,extra:[{text:"Getting Debug Settings",color:"gray",italic:1b,bold:0b}]}