scoreboard players reset @s debugWarnThread
execute if data entity @s data.debug{debug_warn_thread:0b} run scoreboard players set @s debugWarnThread 1
execute if data entity @s data.debug{debug_warn_thread:1b} run scoreboard players set @s debugWarnThread 2
execute if score @s debugWarnThread matches 1 as @s run data modify entity @s data.debug.debug_warn_thread set value 1b
execute if score @s debugWarnThread matches 2 as @s run data modify entity @s data.debug.debug_warn_thread set value 0b
scoreboard players reset @s debugWarnThread

execute if data entity @s data.debug{debug_warn_thread:1b} run tag @s add debugWarnThread
execute if data entity @s data.debug{debug_warn_thread:0b} run tag @s remove debugWarnThread

tellraw @a[tag=debugSettingsThread] {text:"[BLOBS-SETTINGS-DEBUG] ",color:"dark_purple",bold:1b,extra:[{text:"Toggled debugWarnThread",color:"gray",italic:1b,bold:0b}]}

function blobs:data_management/parsing_functions/debug_render