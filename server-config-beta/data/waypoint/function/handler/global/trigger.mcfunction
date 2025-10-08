scoreboard players reset @s waypoint
scoreboard players enable @s waypoint

advancement revoke @s only waypoint:global

# --------------------------------------------------------------------------------- #

execute if score @s waypoint.animation.duration matches 1.. run return run tellraw @s {text:"You cannot use this menu while you're in the teleportation animation.", color:"red"}

function waypoint:handler/reset_data

execute store result score .Global waypoint.Amount run execute if entity @e[type=armor_stand, tag=Waypoint.Global]
execute if score .Global waypoint.Amount matches 1.. run function waypoint:handler/global/get_waypoints

function waypoint:handler/main_menu with storage waypoints:global dialog