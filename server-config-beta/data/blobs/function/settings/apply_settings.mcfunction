advancement revoke @s only blobs:apply_settings

execute as @s if score @s blob matches 10001 run function blobs:settings/modules/fullbright with entity @s equipment.saddle.components."minecraft:custom_data".settings
execute as @s if score @s blob matches 10002 run function blobs:settings/modules/locator_bar with entity @s equipment.saddle.components."minecraft:custom_data".settings
execute as @s if score @s blob matches 10003 run function blobs:settings/modules/hell with entity @s equipment.saddle.components."minecraft:custom_data".settings
execute as @s if score @s blob matches 10004 run function blobs:settings/modules/debug with entity @s equipment.saddle.components."minecraft:custom_data".settings

function blobs:settings/render/get_settings

tellraw @a[tag=Debug] {text:"[BLOBS-SETTINGS] ",color:"dark_purple",bold:1b,extra:[{text:"Setting Changed",color:"gray",italic:1b,bold:0b}]}