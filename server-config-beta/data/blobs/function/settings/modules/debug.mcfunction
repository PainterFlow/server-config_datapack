item modify entity @s saddle blobs:storage/debug
execute if data entity @s equipment.saddle.components."minecraft:custom_data".blob.setting_modules{debug:"On"} as @s run tag @s add Debug
execute if data entity @s equipment.saddle.components."minecraft:custom_data".blob.setting_modules{debug:"Off"} as @s run tag @s remove Debug

tellraw @a[tag=Debug] {text:"[BLOBS-SETTINGS] ",color:"dark_purple",bold:1b,extra:[{text:"Player toggled Debug Mode",color:"gray",italic:1b,bold:0b}]}