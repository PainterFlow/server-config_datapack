scoreboard players reset @s blob
scoreboard players enable @s blob

scoreboard players reset @s settings_user
scoreboard players reset @s settings_privacy
scoreboard players reset @s settings_appearance
scoreboard players reset @s settings_accessibility
scoreboard players reset @s settings_notifications
scoreboard players reset @s settings_advanced

scoreboard players enable @s settings_user
scoreboard players enable @s settings_privacy
scoreboard players enable @s settings_appearance
scoreboard players enable @s settings_accessibility
scoreboard players enable @s settings_notifications
scoreboard players enable @s settings_advanced

advancement revoke @s only blobs:settings/user_settings/user/get_settings
advancement revoke @s only blobs:settings/user_settings/privacy/get_settings
advancement revoke @s only blobs:settings/user_settings/appearance/get_settings
advancement revoke @s only blobs:settings/user_settings/accessibility/get_settings
advancement revoke @s only blobs:settings/user_settings/notifications/get_settings
advancement revoke @s only blobs:settings/user_settings/advanced/get_settings

advancement revoke @s only blobs:settings/user_settings/user/check_inputs
advancement revoke @s only blobs:settings/user_settings/privacy/check_inputs
advancement revoke @s only blobs:settings/user_settings/appearance/check_inputs
advancement revoke @s only blobs:settings/user_settings/accessibility/check_inputs
advancement revoke @s only blobs:settings/user_settings/notifications/check_inputs
advancement revoke @s only blobs:settings/user_settings/advanced/check_inputs

advancement revoke @s only blobs:settings/blob
advancement revoke @s only blobs:exit

execute if score @s exit matches 1 run dialog clear @s
execute if score @s exit matches 2 run dialog show @s blobs:blob/main
execute if score @s exit matches 3 run dialog show @s blobs:blob/user_settings
execute if score @s exit matches 4 run dialog show @s blobs:blob/server_config
execute if score @s exit matches -1 run function blobs:settings/user_settings/appearance/get_settings

scoreboard players reset @s exit
scoreboard players enable @s exit