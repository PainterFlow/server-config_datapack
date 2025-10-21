scoreboard players reset @s debugMainThread
execute if data entity @s data.debug{debug_main_thread:0b} run scoreboard players set @s debugMainThread 1
execute if data entity @s data.debug{debug_main_thread:1b} run scoreboard players set @s debugMainThread 2
execute if score @s debugMainThread matches 1 as @s run data modify entity @s data.debug.debug_main_thread set value 1b
execute if score @s debugMainThread matches 2 as @s run data modify entity @s data.debug.debug_main_thread set value 0b
scoreboard players reset @s debugMainThread

execute if data entity @s data.debug{debug_main_thread:1b} run tag @s add debugMainThread
execute if data entity @s data.debug{debug_main_thread:0b} run tag @s remove debugMainThread

tellraw @a[tag=debugSettingsThread] {text:"[BLOBS-SETTINGS-DEBUG] ",color:"dark_purple",bold:1b,extra:[{text:"Toggled debugMainThread",color:"gray",italic:1b,bold:0b}]}

function blobs:data_management/parsing_functions/debug_render