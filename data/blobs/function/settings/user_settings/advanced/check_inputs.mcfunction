scoreboard players reset @s blob
scoreboard players enable @s blob
advancement revoke @s only blobs:settings/blob



advancement revoke @s only blobs:settings/user_settings/advanced/check_inputs

function blobs:settings/user_settings/advanced/get_settings with entity @s data.render_data.settings.advanced