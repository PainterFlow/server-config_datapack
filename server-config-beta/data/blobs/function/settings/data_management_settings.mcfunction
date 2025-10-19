scoreboard players reset @s blob
scoreboard players enable @s blob

advancement revoke @s only blobs:settings/data_management

execute as @s run function blobs:data_management/reset_functions/reset_player_data