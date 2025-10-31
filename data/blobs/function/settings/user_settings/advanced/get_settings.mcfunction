scoreboard players reset @s blob
scoreboard players enable @s blob
scoreboard players reset @s settings_advanced
scoreboard players enable @s settings_advanced

advancement revoke @s only blobs:settings/user_settings/advanced/get_settings

function blobs:render_thread/render/user_settings/advanced with entity @s data.render_data.settings.advanced