scoreboard players reset @s blob
scoreboard players enable @s blob

advancement revoke @s only blobs:settings/global_settings

execute as @s run function blobs:render_thread/render/global_settings with entity @n[tag=Global_Storage] data.render_data.setting_modules