scoreboard players reset @s blob
scoreboard players enable @s blob
advancement revoke @s only blobs:settings/blob

execute if score @s settings_user matches 101 run function blobs:settings/user_settings/user/input_manager/fix_data

advancement revoke @s only blobs:settings/user_settings/user/check_inputs