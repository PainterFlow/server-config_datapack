item modify entity @s saddle blobs:storage/global_pvp
execute if data entity @s equipment.saddle.components."minecraft:custom_data".global.setting_modules{pvp:"Enabled"} as @s run gamerule pvp true
execute if data entity @s equipment.saddle.components."minecraft:custom_data".global.setting_modules{pvp:"Enabled"} as @s run effect clear @a resistance

execute if data entity @s equipment.saddle.components."minecraft:custom_data".global.setting_modules{pvp:"Disabled"} as @s run gamerule pvp false
execute if data entity @s equipment.saddle.components."minecraft:custom_data".global.setting_modules{pvp:"Disabled"} as @s run effect give @a resistance infinite 255 true

tellraw @a[tag=Debug] {text:"[BLOBS-SETTINGS-GLOBAL] ",color:"dark_purple",bold:1b,extra:[{text:"Toggled PVP",color:"gray",italic:1b,bold:0b}]}