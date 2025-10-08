data modify storage waypoints:global dialog.add_waypoint set value {label:"", tooltip:"Click to teleport.", action:{type:"run_command", command:""}}
data modify storage waypoints:global dialog.add_waypoint.label set from entity @s CustomName
data modify storage waypoints:global dialog.add_waypoint.action.command set from entity @s data.command

data modify storage waypoints:global dialog.display.actions prepend from storage waypoints:global dialog.add_waypoint