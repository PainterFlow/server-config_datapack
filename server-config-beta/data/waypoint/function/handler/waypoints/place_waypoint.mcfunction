scoreboard players reset @s waypoint
scoreboard players enable @s waypoint

advancement revoke @s only waypoint:place_waypoint

tag @s add Owner

# --------------------------------------------------------------------------------- #

scoreboard players operation #Search waypoint.ID = @s waypoint.ID

execute store result score @s waypoint.Amount run execute if entity @e[type=armor_stand, tag=Waypoint, predicate=waypoint:same_id]

execute if score @s waypoint.Amount matches 20.. run return run tellraw @s {text:"- You have already placed the max amount of waypoints.",color:"red"}
execute unless predicate waypoint:on_ground run return run tellraw @s {text:"- You must be on the ground to place a waypoint.",color:"red"}
execute if entity @e[type=armor_stand, tag=Waypoint, distance=..5, predicate=waypoint:same_id] run return run tellraw @s {text:"- You are too close to another waypoint.",color:"red"}

# --------------------------------------------------------------------------------- #

tellraw @s [{text:"- Placing new waypoint.\n- You can rename this waypoint with a name tag.", color:"green"}]

execute align xyz positioned ~.5 ~ ~.5 summon armor_stand at @s run function waypoint:handler/waypoints/new_waypoint

# --------------------------------------------------------------------------------- #

tag @s remove Owner