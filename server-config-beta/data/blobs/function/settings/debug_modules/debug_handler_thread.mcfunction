scoreboard players reset @s debugHandlerThread
execute if data entity @s data.debug{debug_handler_thread:0b} run scoreboard players set @s debugHandlerThread 1
execute if data entity @s data.debug{debug_handler_thread:1b} run scoreboard players set @s debugHandlerThread 2
execute if score @s debugHandlerThread matches 1 as @s run data modify entity @s data.debug.debug_handler_thread set value 1b
execute if score @s debugHandlerThread matches 2 as @s run data modify entity @s data.debug.debug_handler_thread set value 0b
scoreboard players reset @s debugHandlerThread

execute if data entity @s data.debug{debug_handler_thread:1b} run tag @s add debugHandlerThread
execute if data entity @s data.debug{debug_handler_thread:0b} run tag @s remove debugHandlerThread

tellraw @a[tag=debugSettingsThread] {text:"[BLOBS-SETTINGS-DEBUG] ",color:"dark_purple",bold:1b,extra:[{text:"Toggled debugHandlerThread",color:"gray",italic:1b,bold:0b}]}

function blobs:data_management/parsing_functions/debug_render