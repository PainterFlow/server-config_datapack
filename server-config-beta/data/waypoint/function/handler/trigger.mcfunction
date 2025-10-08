scoreboard players reset @s waypoint
scoreboard players enable @s waypoint

advancement revoke @s only waypoint:trigger

# --------------------------------------------------------------------------------- #

execute if score @s waypoint.animation.duration matches 1.. run return run tellraw @s {text:"You cannot use this menu while you're in the teleportation animation.", color:"red"}

function waypoint:handler/reset_data

scoreboard players operation #Search waypoint.ID = @s waypoint.ID
execute store result score @s waypoint.Amount run execute if entity @e[type=armor_stand, tag=Waypoint, predicate=waypoint:same_id]
execute if score @s waypoint.Amount matches 1.. run function waypoint:handler/waypoints/get_waypoints

function waypoint:handler/main_menu with storage waypoints dialog