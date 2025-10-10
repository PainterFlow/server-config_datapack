advancement revoke @s only blobs:global_apply_settings

execute as @s if score @n[type=mannequin,tag=Global_Storage] blob = #def spawn run function blobs:settings/global_modules/set_spawn
execute as @n[type=mannequin,tag=Global_Storage] if score @s blob = #def baby_mode run function blobs:settings/global_modules/baby_mode with entity @s equipment.saddle.components."minecraft:custom_data".global
execute as @n[type=mannequin,tag=Global_Storage] if score @s blob = #def pvp run function blobs:settings/global_modules/pvp with entity @s equipment.saddle.components."minecraft:custom_data".global
execute as @n[type=mannequin,tag=Global_Storage] if score @s blob = #def disablePlayerInteractions run function blobs:settings/global_modules/disable_player_interactions with entity @s equipment.saddle.components."minecraft:custom_data".global

function blobs:settings/render/get_global_settings

tellraw @a[tag=Debug] {text:"[BLOBS-SETTINGS-GLOBAL] ",color:"dark_purple",bold:1b,extra:[{text:"Global Setting Changed",color:"gray",italic:1b,bold:0b}]}