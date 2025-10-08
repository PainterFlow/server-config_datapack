scoreboard players reset @s waypoint
scoreboard players enable @s waypoint

advancement revoke @s only waypoint:settings

# --------------------------------------------------------------------------------- #

function waypoint:handler/settings/show_page with entity @s equipment.saddle.components."minecraft:custom_data".settings