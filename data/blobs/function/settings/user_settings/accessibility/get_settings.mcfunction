scoreboard players reset @s blob
scoreboard players enable @s blob
scoreboard players reset @s settings_accessibility
scoreboard players enable @s settings_accessibility

advancement revoke @s only blobs:settings/user_settings/accessibility/get_settings

function blobs:render_thread/render/user_settings/accessibility with entity @s data.render_data.settings.accessibility