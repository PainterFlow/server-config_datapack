scoreboard players reset @s blob
scoreboard players enable @s blob

advancement revoke @s only blobs:get_settings

function blobs:settings/render/display with entity @s equipment.saddle.components."minecraft:custom_data".settings