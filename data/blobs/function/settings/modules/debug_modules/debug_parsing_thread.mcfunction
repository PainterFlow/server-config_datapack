scoreboard players reset @s debugParsingThread
execute if data entity @s data.debug{debug_parsing_thread:0b} run scoreboard players set @s debugParsingThread 1
execute if data entity @s data.debug{debug_parsing_thread:1b} run scoreboard players set @s debugParsingThread 2
execute if score @s debugParsingThread matches 1 as @s run data modify entity @s data.debug.debug_parsing_thread set value 1b
execute if score @s debugParsingThread matches 2 as @s run data modify entity @s data.debug.debug_parsing_thread set value 0b
scoreboard players reset @s debugParsingThread

execute if data entity @s data.debug{debug_parsing_thread:1b} run tag @s add debugParsingThread
execute if data entity @s data.debug{debug_parsing_thread:0b} run tag @s remove debugParsingThread

tellraw @a[tag=debugSettingsThread] {text:"[BLOBS-SETTINGS-DEBUG] ",color:"dark_purple",bold:1b,extra:[{text:"Toggled debugParsingThread",color:"gray",italic:1b,bold:0b}]}

function blobs:data_management/parsing_functions/debug_render