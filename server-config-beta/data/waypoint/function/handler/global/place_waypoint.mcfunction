scoreboard players reset @s waypoint
scoreboard players enable @s waypoint

advancement revoke @s only waypoint:place_global_waypoint

tag @s add Owner

# --------------------------------------------------------------------------------- #

execute store result score .Global waypoint.Amount run execute if entity @e[type=armor_stand, tag=Waypoint.Global]

execute if score .Global waypoint.Amount matches 20.. run return run tellraw @s {text:"- You have already placed the max amount of global waypoints.",color:"red"}
execute unless predicate waypoint:on_ground run return run tellraw @s {text:"- You must be on the ground to place a waypoint.",color:"red"}
execute if entity @e[distance=..5, type=armor_stand, tag=Waypoint.Global] run return run tellraw @s {text:"- You are too close to another waypoint.",color:"red"}

# --------------------------------------------------------------------------------- #

tellraw @s [{text:"- Placing new global waypoint.\n- You can rename this global waypoint with a name tag.", color:"green"}]

execute align xyz positioned ~.5 ~ ~.5 summon armor_stand at @s run function waypoint:handler/global/new_waypoint

# --------------------------------------------------------------------------------- #

tag @s remove Owner