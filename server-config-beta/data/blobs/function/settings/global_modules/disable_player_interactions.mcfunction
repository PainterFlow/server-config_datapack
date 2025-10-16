scoreboard players reset @s disablePlayerInteractions
execute if data entity @n[tag=Global_Storage] data.setting_modules{disable_player_interactions:0b} run scoreboard players set @s disablePlayerInteractions 1
execute if data entity @n[tag=Global_Storage] data.setting_modules{disable_player_interactions:1b} run scoreboard players set @s disablePlayerInteractions 2
execute if score @s disablePlayerInteractions matches 1 as @n[tag=Global_Storage] run data modify entity @n[tag=Global_Storage] data.setting_modules.disable_player_interactions set value 1b
execute if score @s disablePlayerInteractions matches 2 as @n[tag=Global_Storage] run data modify entity @n[tag=Global_Storage] data.setting_modules.disable_player_interactions set value 0b
scoreboard players reset @s disablePlayerInteractions

execute if data entity @n[tag=Global_Storage] data.setting_modules{disable_player_interactions:1b} as @s run gamemode adventure @a
execute if data entity @n[tag=Global_Storage] data.setting_modules{disable_player_interactions:1b} as @s run effect give @a resistance infinite 4 true
execute if data entity @n[tag=Global_Storage] data.setting_modules{disable_player_interactions:1b} as @s run gamerule allowEnteringNetherUsingPortals false
execute if data entity @n[tag=Global_Storage] data.setting_modules{disable_player_interactions:1b} as @s run gamerule spectatorsGenerateChunks false
execute if data entity @n[tag=Global_Storage] data.setting_modules{disable_player_interactions:1b} as @s run effect give @a fire_resistance infinite 255 true

execute if data entity @n[tag=Global_Storage] data.setting_modules{disable_player_interactions:0b} as @s run gamemode survival @a
execute if data entity @n[tag=Global_Storage] data.setting_modules{disable_player_interactions:0b} as @s run effect clear @a resistance
execute if data entity @n[tag=Global_Storage] data.setting_modules{disable_player_interactions:0b} as @s run gamerule allowEnteringNetherUsingPortals true
execute if data entity @n[tag=Global_Storage] data.setting_modules{disable_player_interactions:0b} as @s run gamerule spectatorsGenerateChunks true
execute if data entity @n[tag=Global_Storage] data.setting_modules{disable_player_interactions:0b} as @s run effect clear @a fire_resistance

tellraw @a[tag=debugSettingsThread] {text:"[BLOBS-SETTINGS-GLOBAL] ",color:"dark_purple",bold:1b,extra:[{text:"Toggled Player Interactions",color:"gray",italic:1b,bold:0b}]}

function blobs:data_management/parsing_functions/global_setting_render