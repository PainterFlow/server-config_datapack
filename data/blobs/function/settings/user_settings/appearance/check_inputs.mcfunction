scoreboard players reset @s blob
scoreboard players enable @s blob
advancement revoke @s only blobs:settings/blob

execute if score @s settings_appearance matches 101 run function blobs:settings/user_settings/appearance/input_manager/toggle_cosmetics

advancement revoke @s only blobs:settings/user_settings/appearance/check_inputs