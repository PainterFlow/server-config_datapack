execute if score .Global waypoint.Amount matches 1..20 run data modify storage waypoints:global dialog.display.actions prepend value {label:{text:" ----------------- ", color:"dark_gray"}}
execute if score .Global waypoint.Amount matches 1..20 run data modify storage waypoints:global dialog.display.actions prepend value {label:{text:" ----------------- ", color:"dark_gray"}}


execute unless score .Global waypoint.Amount matches 2 unless score .Global waypoint.Amount matches 4 unless score .Global waypoint.Amount matches 6 unless score .Global waypoint.Amount matches 8 unless score .Global waypoint.Amount matches 10 unless score .Global waypoint.Amount matches 12 unless score .Global waypoint.Amount matches 14 unless score .Global waypoint.Amount matches 16 unless score .Global waypoint.Amount matches 18 unless score .Global waypoint.Amount matches 20 run data modify storage waypoints:global dialog.display.actions prepend value {label: ""}

# --------------------------------------------------------------------------------- #

execute as @e[type=armor_stand, tag=Waypoint.Global] run function waypoint:handler/global/get_data