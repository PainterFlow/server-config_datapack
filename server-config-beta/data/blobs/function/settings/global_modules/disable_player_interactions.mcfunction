item modify entity @s saddle blobs:storage/global_player_interactions
execute if data entity @s equipment.saddle.components."minecraft:custom_data".global.setting_modules{disable_player_interactions:"Disabled"} as @s run gamemode adventure @a
execute if data entity @s equipment.saddle.components."minecraft:custom_data".global.setting_modules{disable_player_interactions:"Disabled"} as @s run effect give @a resistance infinite 4 true
execute if data entity @s equipment.saddle.components."minecraft:custom_data".global.setting_modules{disable_player_interactions:"Disabled"} as @s run gamerule allowEnteringNetherUsingPortals false
execute if data entity @s equipment.saddle.components."minecraft:custom_data".global.setting_modules{disable_player_interactions:"Disabled"} as @s run gamerule spectatorsGenerateChunks false
execute if data entity @s equipment.saddle.components."minecraft:custom_data".global.setting_modules{disable_player_interactions:"Disabled"} as @s run effect give @a fire_resistance infinite 255 true

execute if data entity @s equipment.saddle.components."minecraft:custom_data".global.setting_modules{disable_player_interactions:"Enabled"} as @s run gamemode survival @a
execute if data entity @s equipment.saddle.components."minecraft:custom_data".global.setting_modules{disable_player_interactions:"Enabled"} as @s run effect clear @a resistance
execute if data entity @s equipment.saddle.components."minecraft:custom_data".global.setting_modules{disable_player_interactions:"Enabled"} as @s run gamerule allowEnteringNetherUsingPortals true
execute if data entity @s equipment.saddle.components."minecraft:custom_data".global.setting_modules{disable_player_interactions:"Enabled"} as @s run gamerule spectatorsGenerateChunks true
execute if data entity @s equipment.saddle.components."minecraft:custom_data".global.setting_modules{disable_player_interactions:"Enabled"} as @s run effect clear @a fire_resistance

tellraw @a[tag=Debug] {text:"[BLOBS-SETTINGS-GLOBAL] ",color:"dark_purple",bold:1b,extra:[{text:"Toggled Player Interactions",color:"gray",italic:1b,bold:0b}]}