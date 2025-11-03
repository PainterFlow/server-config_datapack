scoreboard players reset @s blob
scoreboard players enable @s blob
advancement revoke @s only blobs:settings/blob

execute if score @s settings_notifications matches 101 run function blobs:settings/user_settings/notifications/input_manager/ping_sound
execute if score @s settings_notifications matches 102 run function blobs:settings/user_settings/notifications/input_manager/tower_reset
execute if score @s settings_notifications matches 103 run function blobs:settings/user_settings/notifications/input_manager/events
execute if score @s settings_notifications matches 104 run function blobs:settings/user_settings/notifications/input_manager/queue
execute if score @s settings_notifications matches 105 run function blobs:settings/user_settings/notifications/input_manager/friends
execute if score @s settings_notifications matches 106 run function blobs:settings/user_settings/notifications/input_manager/ads

advancement revoke @s only blobs:settings/user_settings/notifications/check_inputs