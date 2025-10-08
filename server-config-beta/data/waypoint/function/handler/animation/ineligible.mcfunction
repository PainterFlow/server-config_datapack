scoreboard players reset @s waypoint.animation.target
scoreboard players reset @n[type=armor_stand, tag=Waypoint, predicate=waypoint:same_id, predicate=waypoint:has_target] waypoint.animation.target

execute positioned over motion_blocking_no_leaves unless entity @s[distance=..1] run tellraw @s {text:"Either you or the target waypoint is not under direct sky access.\nSwitching to normal warping!",color:"red"}

function waypoint:handler/waypoints/teleport