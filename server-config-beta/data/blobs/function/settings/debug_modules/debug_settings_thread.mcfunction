scoreboard players reset @s debugSettingsThread
execute if data entity @s data.debug{debug_settings_thread:0b} run scoreboard players set @s debugSettingsThread 1
execute if data entity @s data.debug{debug_settings_thread:1b} run scoreboard players set @s debugSettingsThread 2
execute if score @s debugSettingsThread matches 1 as @s run data modify entity @s data.debug.debug_settings_thread set value 1b
execute if score @s debugSettingsThread matches 2 as @s run data modify entity @s data.debug.debug_settings_thread set value 0b
scoreboard players reset @s debugSettingsThread

execute if data entity @s data.debug{debug_settings_thread:1b} run tag @s add debugSettingsThread
execute if data entity @s data.debug{debug_settings_thread:0b} run tag @s remove debugSettingsThread

tellraw @a[tag=debugSettingsThread] {text:"[BLOBS-SETTINGS-DEBUG] ",color:"dark_purple",bold:1b,extra:[{text:"Toggled debugSettingsThread",color:"gray",italic:1b,bold:0b}]}

function blobs:data_management/parsing_functions/debug_render