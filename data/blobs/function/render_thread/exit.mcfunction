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

advancement revoke @s only blobs:settings/blob
advancement revoke @s only blobs:exit

dialog show @s blobs:blob/main