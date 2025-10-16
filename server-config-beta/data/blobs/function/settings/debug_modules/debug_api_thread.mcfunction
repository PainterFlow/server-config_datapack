scoreboard players reset @s debugAPI_Thread
execute if data entity @s data.debug{debug_api_thread:0b} run scoreboard players set @s debugAPI_Thread 1
execute if data entity @s data.debug{debug_api_thread:1b} run scoreboard players set @s debugAPI_Thread 2
execute if score @s debugAPI_Thread matches 1 as @s run data modify entity @s data.debug.debug_api_thread set value 1b
execute if score @s debugAPI_Thread matches 2 as @s run data modify entity @s data.debug.debug_api_thread set value 0b
scoreboard players reset @s debugAPI_Thread

execute if data entity @s data.debug{debug_api_thread:1b} run tag @s add debugAPI_Thread
execute if data entity @s data.debug{debug_api_thread:0b} run tag @s remove debugAPI_Thread

tellraw @a[tag=debugSettingsThread] {text:"[BLOBS-SETTINGS-DEBUG] ",color:"dark_purple",bold:1b,extra:[{text:"Toggled debugAPI_Thread",color:"gray",italic:1b,bold:0b}]}

function blobs:data_management/parsing_functions/debug_render