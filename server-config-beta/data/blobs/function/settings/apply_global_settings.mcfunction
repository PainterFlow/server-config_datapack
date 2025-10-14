advancement revoke @s only blobs:global_apply_settings

execute if score @s blob = #def spawn run function blobs:settings/global_modules/set_spawn
execute if score @s blob = #def baby_mode as @n[type=mannequin,tag=Global_Storage] run function blobs:settings/global_modules/baby_mode
execute if score @s blob = #def pvp as @n[type=mannequin,tag=Global_Storage] run function blobs:settings/global_modules/pvp
execute if score @s blob = #def disablePlayerInteractions as @n[type=mannequin,tag=Global_Storage] run function blobs:settings/global_modules/disable_player_interactions
execute as @n[tag=Global_Storage] run function blobs:handlers/get_functions/get_global_settings

tellraw @a[tag=Debug] {text:"[BLOBS-SETTINGS-GLOBAL] ",color:"dark_purple",bold:1b,extra:[{text:"Global Setting Changed",color:"gray",italic:1b,bold:0b}]}