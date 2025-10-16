advancement revoke @s only blobs:global_apply_settings

execute if score @s blob matches 10001 as @s run function blobs:settings/global_modules/set_spawn
execute if score @s blob matches 10002 as @s run function blobs:settings/global_modules/baby_mode
execute if score @s blob matches 10003 as @s run function blobs:settings/global_modules/pvp
execute if score @s blob matches 10004 as @s run function blobs:settings/global_modules/disable_player_interactions

tellraw @a[tag=debugSettingsThread] {text:"[BLOBS-SETTINGS-GLOBAL] ",color:"dark_purple",bold:1b,extra:[{text:"Global Setting Changed",color:"gray",italic:1b,bold:0b}]}