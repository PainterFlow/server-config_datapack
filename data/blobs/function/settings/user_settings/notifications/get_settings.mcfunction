scoreboard players reset @s blob
scoreboard players enable @s blob
scoreboard players reset @s settings_notifications
scoreboard players enable @s settings_notifications

advancement revoke @s only blobs:settings/user_settings/notifications/get_settings

function blobs:render_thread/render/user_settings/notifications with entity @s data.render_data.settings.notifications