scoreboard players reset @s debugDataThread
execute if data entity @s data.debug{debug_data_thread:0b} run scoreboard players set @s debugDataThread 1
execute if data entity @s data.debug{debug_data_thread:1b} run scoreboard players set @s debugDataThread 2
execute if score @s debugDataThread matches 1 as @s run data modify entity @s data.debug.debug_data_thread set value 1b
execute if score @s debugDataThread matches 2 as @s run data modify entity @s data.debug.debug_data_thread set value 0b
scoreboard players reset @s debugDataThread

execute if data entity @s data.debug{debug_data_thread:1b} run tag @s add debugDataThread
execute if data entity @s data.debug{debug_data_thread:0b} run tag @s remove debugDataThread

tellraw @a[tag=debugSettingsThread] {text:"[BLOBS-SETTINGS-DEBUG] ",color:"dark_purple",bold:1b,extra:[{text:"Toggled debugDataThread",color:"gray",italic:1b,bold:0b}]}

function blobs:data_management/parsing_functions/debug_render