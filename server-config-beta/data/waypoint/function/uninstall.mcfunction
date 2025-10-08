scoreboard objectives remove waypoint.ID
scoreboard objectives remove waypoint
scoreboard objectives remove waypoint.Amount
scoreboard objectives remove waypoint.Calc
scoreboard objectives remove waypoint.animation.duration
scoreboard objectives remove waypoint.animation.target

data remove storage waypoints dialog

kill @e[type=armor_stand, tag=Waypoint]
kill @e[type=item_display, tag=Waypoint.Animation]

forceload remove all

item replace entity @a saddle with air

# --------------------------------------------------------------------------------- #

tellraw @a {text:"Successfully uninstalled.", color:"red"}