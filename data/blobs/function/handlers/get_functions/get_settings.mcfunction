scoreboard players reset @s blob
scoreboard players enable @s blob

advancement revoke @s only blobs:settings/blob

function blobs:render_thread/render/settings with entity @s data.render_data.settings