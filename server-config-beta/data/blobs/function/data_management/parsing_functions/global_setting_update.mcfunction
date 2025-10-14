scoreboard players reset @n[tag=Global_Storage] baby_mode
execute if data entity @n[tag=Global_Storage] data.setting_modules{baby_mode:0b} run scoreboard players set @n[tag=Global_Storage] baby_mode 1
execute if data entity @n[tag=Global_Storage] data.setting_modules{baby_mode:1b} run scoreboard players set @n[tag=Global_Storage] baby_mode 2
execute if score @n[tag=Global_Storage] baby_mode = .false baby_mode as @n[tag=Global_Storage] run data modify entity @n[tag=Global_Storage] data.setting_modules.baby_mode set value 1b
execute if score @n[tag=Global_Storage] baby_mode = .true baby_mode as @n[tag=Global_Storage] run data modify entity @n[tag=Global_Storage] data.setting_modules.baby_mode set value 0b

scoreboard players reset @n[tag=Global_Storage] disablePlayerInteractions
execute if data entity @n[tag=Global_Storage] data.setting_modules{disable_player_interactions:0b} run scoreboard players set @n[tag=Global_Storage] disablePlayerInteractions 1
execute if data entity @n[tag=Global_Storage] data.setting_modules{disable_player_interactions:1b} run scoreboard players set @n[tag=Global_Storage] disablePlayerInteractions 2
execute if score @n[tag=Global_Storage] disablePlayerInteractions = .false disablePlayerInteractions as @n[tag=Global_Storage] run data modify entity @n[tag=Global_Storage] data.setting_modules.disable_player_interactions set value 1b
execute if score @n[tag=Global_Storage] disablePlayerInteractions = .true disablePlayerInteractions as @n[tag=Global_Storage] run data modify entity @n[tag=Global_Storage] data.setting_modules.disable_player_interactions set value 0b

scoreboard players reset @n[tag=Global_Storage] pvp
execute if data entity @n[tag=Global_Storage] data.setting_modules{pvp:0b} run scoreboard players set @n[tag=Global_Storage] pvp 1
execute if data entity @n[tag=Global_Storage] data.setting_modules{pvp:1b} run scoreboard players set @n[tag=Global_Storage] pvp 2
execute if score @n[tag=Global_Storage] pvp = .false pvp as @n[tag=Global_Storage] run data modify entity @n[tag=Global_Storage] data.setting_modules.pvp set value 1b
execute if score @n[tag=Global_Storage] pvp = .true pvp as @n[tag=Global_Storage] run data modify entity @n[tag=Global_Storage] data.setting_modules.pvp set value 0b


execute if score @s blob = #def set_spawn as @s run function blobs:settings/global_modules/set_spawn with entity @n[tag=Global_Storage] data.setting_modules.baby_mode
execute if score @s blob = #def baby_mode as @s run function blobs:settings/global_modules/baby_mode with entity @n[tag=Global_Storage] data.setting_modules.baby_mode
execute if score @s blob = #def pvp as @s run function blobs:settings/global_modules/pvp with entity @n[tag=Global_Storage] data.setting_modules.baby_mode
execute if score @s blob = #def disablePlayerInteractions as @s run function blobs:settings/global_modules/disable_player_interactions with entity @n[tag=Global_Storage] data.setting_modules.baby_mode

scoreboard players reset @s blob
scoreboard players enable @s blob

execute as @s run function blobs:data_management/parsing_functions/global_setting_render with entity @n[tag=Global_Storage] data.setting_modules