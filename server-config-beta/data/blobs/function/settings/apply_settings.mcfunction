advancement revoke @s only blobs:apply_settings

execute as @s if score @s blob = #def fullbright run function blobs:settings/modules/fullbright with entity @s equipment.saddle.components."minecraft:custom_data".blob.setting_modules
execute as @s if score @s blob = #def locator_bar run function blobs:settings/modules/locator_bar with entity @s equipment.saddle.components."minecraft:custom_data".blob.setting_modules
execute as @s if score @s blob = #def hell run function blobs:settings/modules/hell with entity @s equipment.saddle.components."minecraft:custom_data".blob.setting_modules
execute as @s if score @s blob = #def debug run function blobs:settings/modules/debug with entity @s equipment.saddle.components."minecraft:custom_data".blob.setting_modules

execute as @s run function blobs:handlers/get_functions/get_settings with entity @s equipment.saddle.components."minecraft:custom_data".blob

tellraw @a[tag=Debug] {text:"[BLOBS-SETTINGS] ",color:"dark_purple",bold:1b,extra:[{text:"Setting Changed",color:"gray",italic:1b,bold:0b}]}