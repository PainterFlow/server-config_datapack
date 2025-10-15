scoreboard players enable @s debug
execute as @s run function blobs:render_thread/render/global_settings with entity @n[tag=Global_Storage] data.render_data.setting_modules


tellraw @a[tag=debugSettingsThread] {text:"[BLOBS-SETTINGS] ",color:"dark_purple",bold:1b,extra:[{text:"Getting Debug Settings",color:"gray",italic:1b,bold:0b}]}