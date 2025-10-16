scoreboard players reset @s debugCustomFeaturesThread
execute if data entity @s data.debug{debug_custom_features_thread:0b} run scoreboard players set @s debugCustomFeaturesThread 1
execute if data entity @s data.debug{debug_custom_features_thread:1b} run scoreboard players set @s debugCustomFeaturesThread 2
execute if score @s debugCustomFeaturesThread matches 1 as @s run data modify entity @s data.debug.debug_custom_features_thread set value 1b
execute if score @s debugCustomFeaturesThread matches 2 as @s run data modify entity @s data.debug.debug_custom_features_thread set value 0b
scoreboard players reset @s debugCustomFeaturesThread

execute if data entity @s data.debug{debug_custom_features_thread:1b} run tag @s add debugCustomFeaturesThread
execute if data entity @s data.debug{debug_custom_features_thread:0b} run tag @s remove debugCustomFeaturesThread

tellraw @a[tag=debugSettingsThread] {text:"[BLOBS-SETTINGS-DEBUG] ",color:"dark_purple",bold:1b,extra:[{text:"Toggled debugCustomFeaturesThread",color:"gray",italic:1b,bold:0b}]}

function blobs:data_management/parsing_functions/debug_render