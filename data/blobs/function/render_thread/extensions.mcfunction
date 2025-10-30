advancement revoke @s only blobs:extensions

scoreboard players reset @s blob
scoreboard players enable @s blob

function blobs:render_thread/render/extensions with entity @n[tag=Global_Storage] data.render_data
