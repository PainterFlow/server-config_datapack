execute if score @s waypoint.Amount matches 1..20 run data modify storage waypoints dialog.display.actions prepend value {label:{text:" ----------------- ", color:"dark_gray"}}
execute if score @s waypoint.Amount matches 1..20 run data modify storage waypoints dialog.display.actions prepend value {label:{text:" ----------------- ", color:"dark_gray"}}


execute unless score @s waypoint.Amount matches 2 unless score @s waypoint.Amount matches 4 unless score @s waypoint.Amount matches 6 unless score @s waypoint.Amount matches 8 unless score @s waypoint.Amount matches 10 unless score @s waypoint.Amount matches 12 unless score @s waypoint.Amount matches 14 unless score @s waypoint.Amount matches 16 unless score @s waypoint.Amount matches 18 unless score @s waypoint.Amount matches 20 run data modify storage waypoints dialog.display.actions prepend value {label: ""}

# --------------------------------------------------------------------------------- #

execute as @e[type=armor_stand, tag=Waypoint, predicate=waypoint:same_id] run function waypoint:handler/waypoints/get_data