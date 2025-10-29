advancement revoke @s only blobs:settings/blob

execute as @s if score @s blob matches 1001 run function blobs:settings/input_manager/user_settings/party_notifications
execute as @s if score @s blob matches 1002 run function blobs:settings/input_manager/user_settings/tower_reset_notifications
execute as @s if score @s blob matches 1003 run function blobs:settings/input_manager/user_settings/show_tower_reset_timer
execute as @s if score @s blob matches 1004 run function blobs:settings/input_manager/user_settings/custom_sounds
execute as @s if score @s blob matches 1005 run function blobs:settings/input_manager/user_settings/ads

advancement revoke @s only blobs:settings/apply_settings
scoreboard players reset @s blob
scoreboard players enable @s blob

tellraw @a[tag=debugSettingsThread] {text:"[BLOBS-SETTINGS] ",color:"dark_purple",bold:1b,extra:[{text:"Setting Changed",color:"gray",italic:1b,bold:0b}]}