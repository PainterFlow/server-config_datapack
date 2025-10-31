scoreboard players reset @s blob
scoreboard players enable @s blob
scoreboard players reset @s settings_privacy
scoreboard players enable @s settings_privacy

advancement revoke @s only blobs:settings/user_settings/privacy/get_settings

function blobs:render_thread/render/user_settings/privacy with entity @s data.render_data.settings.privacy