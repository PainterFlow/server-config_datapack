scoreboard players reset @s waypoint
scoreboard players enable @s waypoint

advancement revoke @s only waypoint:remove_waypoint

# --------------------------------------------------------------------------------- #

scoreboard players operation #Search waypoint.ID = @s waypoint.ID
execute unless entity @n[distance=..4, type=armor_stand, tag=Waypoint, predicate=waypoint:same_id] run return run tellraw @s {text:"- No waypoint found within a 4 block radius.",color:"red"}

scoreboard players remove @s waypoint.Amount 1
tellraw @s {text:"- Removed waypoint: ",color:"green", extra:[{nbt:"CustomName", entity:"@n[distance=..4, type=armor_stand, tag=Waypoint, predicate=waypoint:same_id]", color:"red"}]}
kill @n[distance=..4, type=armor_stand, tag=Waypoint, predicate=waypoint:same_id]