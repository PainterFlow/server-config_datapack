item modify entity @s saddle blobs:storage/fullbright
execute if data entity @s equipment.saddle.components."minecraft:custom_data".blob.setting_modules{fullbright:"On"} as @s run effect give @s night_vision infinite 255 true
execute if data entity @s equipment.saddle.components."minecraft:custom_data".blob.setting_modules{fullbright:"Off"} as @s run effect clear @s night_vision

tellraw @a[tag=Debug] {text:"[BLOBS-SETTINGS] ",color:"dark_purple",bold:1b,extra:[{text:"Player toggled Fullbright",color:"gray",italic:1b,bold:0b}]}