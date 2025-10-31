scoreboard players reset @s blob
scoreboard players enable @s blob
scoreboard players reset @s settings_appearance
scoreboard players enable @s settings_appearance

advancement revoke @s only blobs:settings/user_settings/appearance/get_settings

function blobs:render_thread/render/user_settings/appearance with entity @s data.render_data.settings.appearance