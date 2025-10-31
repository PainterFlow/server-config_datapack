scoreboard players reset @s blob
scoreboard players enable @s blob
advancement revoke @s only blobs:settings/blob

execute if score @s settings_accessibility matches 101 run function blobs:settings/user_settings/accessibility/input_manager/tower_reset_timer

advancement revoke @s only blobs:settings/user_settings/accessibility/check_inputs