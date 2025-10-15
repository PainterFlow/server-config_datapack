scoreboard players reset @s baby_mode
execute if data entity @n[tag=Global_Storage] data.setting_modules{baby_mode:0b} run scoreboard players set @s baby_mode 1
execute if data entity @n[tag=Global_Storage] data.setting_modules{baby_mode:1b} run scoreboard players set @s baby_mode 2
execute if score @s baby_mode matches 1 as @n[tag=Global_Storage] run data modify entity @n[tag=Global_Storage] data.setting_modules.baby_mode set value 1b
execute if score @s baby_mode matches 2 as @n[tag=Global_Storage] run data modify entity @n[tag=Global_Storage] data.setting_modules.baby_mode set value 0b
scoreboard players reset @s baby_mode

scoreboard players reset @s disablePlayerInteractions
execute if data entity @n[tag=Global_Storage] data.setting_modules{disable_player_interactions:0b} run scoreboard players set @s disablePlayerInteractions 1
execute if data entity @n[tag=Global_Storage] data.setting_modules{disable_player_interactions:1b} run scoreboard players set @s disablePlayerInteractions 2
execute if score @s disablePlayerInteractions matches 1 as @n[tag=Global_Storage] run data modify entity @n[tag=Global_Storage] data.setting_modules.disable_player_interactions set value 1b
execute if score @s disablePlayerInteractions matches 2 as @n[tag=Global_Storage] run data modify entity @n[tag=Global_Storage] data.setting_modules.disable_player_interactions set value 0b
scoreboard players reset @s disablePlayerInteractions

scoreboard players reset @s pvp
execute if data entity @n[tag=Global_Storage] data.setting_modules{pvp:0b} run scoreboard players set @s pvp 1
execute if data entity @n[tag=Global_Storage] data.setting_modules{pvp:1b} run scoreboard players set @s pvp 2
execute if score @s pvp matches 1 as @n[tag=Global_Storage] run data modify entity @n[tag=Global_Storage] data.setting_modules.pvp set value 1b
execute if score @s pvp matches 2 as @n[tag=Global_Storage] run data modify entity @n[tag=Global_Storage] data.setting_modules.pvp set value 0b
scoreboard players reset @s pvp

tellraw @a[tag=debugParsingThread] {text:"[BLOBS-PARSING] ",color:"dark_purple",bold:1b,extra:[{text:"Updated Global Settings",color:"gray",italic:1b,bold:0b}]}

execute if score @s blob matches 10001 as @s run function blobs:settings/global_modules/set_spawn
execute if score @s blob matches 10002 as @s run function blobs:settings/global_modules/baby_mode
execute if score @s blob matches 10003 as @s run function blobs:settings/global_modules/pvp
execute if score @s blob matches 10004 as @s run function blobs:settings/global_modules/disable_player_interactions