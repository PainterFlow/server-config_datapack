scoreboard players reset @s waypoint
scoreboard players enable @s waypoint

advancement revoke @s only waypoint:remove_global_waypoint

# --------------------------------------------------------------------------------- #

execute unless entity @n[distance=..4, type=armor_stand, tag=Waypoint.Global] run return run tellraw @s {text:"- No waypoint found within a 4 block radius.",color:"red"}

scoreboard players remove .Global waypoint.Amount 1
tellraw @s {text:"- Removed waypoint: ",color:"green", extra:[{nbt:"CustomName", entity:"@n[distance=..4, type=armor_stand, tag=Waypoint.Global]", color:"red"}]}
kill @n[distance=..4, type=armor_stand, tag=Waypoint.Global]