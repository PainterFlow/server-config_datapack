scoreboard players reset @s blob
scoreboard players enable @s blob
scoreboard players reset @s debug
scoreboard players enable @s debug
scoreboard players reset @s spawn
scoreboard players enable @s spawn

advancement revoke @s only blobs:settings/data_management
advancement revoke @s only blobs:exit
advancement revoke @s only blobs:extensions
advancement revoke @s only blobs:settings/apply_settings
advancement revoke @s only blobs:settings/blob
advancement revoke @s only blobs:settings/debug
advancement revoke @s only blobs:settings/debug_apply
advancement revoke @s only blobs:settings/global_apply_settings
advancement revoke @s only blobs:settings/global_settings
advancement revoke @s only blobs:spawn

execute as @s run function blobs:data_management/reset_functions/reset_player_data