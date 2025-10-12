item modify entity @s saddle blobs:storage/hell
execute if data entity @s equipment.saddle.components."minecraft:custom_data".blob.setting_modules{hell:"Yes"} as @s run effect give @s blindness infinite 255 true
execute if data entity @s equipment.saddle.components."minecraft:custom_data".blob.setting_modules{hell:"Yes"} as @s run effect give @s nausea infinite 255 true
execute if data entity @s equipment.saddle.components."minecraft:custom_data".blob.setting_modules{hell:"No"} as @s run effect clear @s blindness
execute if data entity @s equipment.saddle.components."minecraft:custom_data".blob.setting_modules{hell:"No"} as @s run effect clear @s nausea

tellraw @a[tag=Debug] {text:"[BLOBS-SETTINGS] ",color:"dark_purple",bold:1b,extra:[{text:"Player toggled Hell",color:"gray",italic:1b,bold:0b}]}