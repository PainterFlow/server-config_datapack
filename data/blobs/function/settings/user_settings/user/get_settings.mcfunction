scoreboard players reset @s blob
scoreboard players enable @s blob
scoreboard players reset @s settings_user
scoreboard players enable @s settings_user

advancement revoke @s only blobs:settings/user_settings/user/get_settings

function blobs:render_thread/render/user_settings/user with entity @s data.render_data.settings.user