item modify entity @s saddle blobs:settings/global_pvp
execute if data entity @s equipment.saddle.components."minecraft:custom_data".settings{pvp:"Enabled"} as @s run gamerule pvp false
execute if data entity @s equipment.saddle.components."minecraft:custom_data".settings{pvp:"Enabled"} as @s run effect give @a resistance infinite 255 true

execute if data entity @s equipment.saddle.components."minecraft:custom_data".settings{pvp:"Disabled"} as @s run gamerule pvp true
execute if data entity @s equipment.saddle.components."minecraft:custom_data".settings{pvp:"Disabled"} as @s run effect clear @a resistance

tellraw @a[tag=Debug] {text:"[BLOBS-SETTINGS-GLOBAL] ",color:"dark_purple",bold:1b,extra:[{text:"Toggled PVP",color:"gray",italic:1b,bold:0b}]}