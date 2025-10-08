scoreboard players reset @s waypoint
scoreboard players enable @s waypoint

advancement revoke @s only waypoint:global_settings
advancement revoke @s only waypoint:apply_global_settings

# --------------------------------------------------------------------------------- #

function waypoint:handler/global/settings/show_page with storage waypoints:global settings