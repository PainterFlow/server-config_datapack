advancement revoke @s only waypoint:teleport

# --------------------------------------------------------------------------------- #

scoreboard players operation #Search waypoint.ID = @s waypoint.ID

execute if score @s waypoint matches 1001 run tp @s @n[type=armor_stand, tag=Waypoint, predicate=waypoint:same_id, nbt={data:{waypoint:1001}}]
execute if score @s waypoint matches 1002 run tp @s @n[type=armor_stand, tag=Waypoint, predicate=waypoint:same_id, nbt={data:{waypoint:1002}}]
execute if score @s waypoint matches 1003 run tp @s @n[type=armor_stand, tag=Waypoint, predicate=waypoint:same_id, nbt={data:{waypoint:1003}}]
execute if score @s waypoint matches 1004 run tp @s @n[type=armor_stand, tag=Waypoint, predicate=waypoint:same_id, nbt={data:{waypoint:1004}}]
execute if score @s waypoint matches 1005 run tp @s @n[type=armor_stand, tag=Waypoint, predicate=waypoint:same_id, nbt={data:{waypoint:1005}}]
execute if score @s waypoint matches 1006 run tp @s @n[type=armor_stand, tag=Waypoint, predicate=waypoint:same_id, nbt={data:{waypoint:1006}}]
execute if score @s waypoint matches 1007 run tp @s @n[type=armor_stand, tag=Waypoint, predicate=waypoint:same_id, nbt={data:{waypoint:1007}}]
execute if score @s waypoint matches 1008 run tp @s @n[type=armor_stand, tag=Waypoint, predicate=waypoint:same_id, nbt={data:{waypoint:1008}}]
execute if score @s waypoint matches 1009 run tp @s @n[type=armor_stand, tag=Waypoint, predicate=waypoint:same_id, nbt={data:{waypoint:1009}}]
execute if score @s waypoint matches 1010 run tp @s @n[type=armor_stand, tag=Waypoint, predicate=waypoint:same_id, nbt={data:{waypoint:1010}}]
execute if score @s waypoint matches 1011 run tp @s @n[type=armor_stand, tag=Waypoint, predicate=waypoint:same_id, nbt={data:{waypoint:1011}}]
execute if score @s waypoint matches 1012 run tp @s @n[type=armor_stand, tag=Waypoint, predicate=waypoint:same_id, nbt={data:{waypoint:1012}}]
execute if score @s waypoint matches 1013 run tp @s @n[type=armor_stand, tag=Waypoint, predicate=waypoint:same_id, nbt={data:{waypoint:1013}}]
execute if score @s waypoint matches 1014 run tp @s @n[type=armor_stand, tag=Waypoint, predicate=waypoint:same_id, nbt={data:{waypoint:1014}}]
execute if score @s waypoint matches 1015 run tp @s @n[type=armor_stand, tag=Waypoint, predicate=waypoint:same_id, nbt={data:{waypoint:1015}}]
execute if score @s waypoint matches 1016 run tp @s @n[type=armor_stand, tag=Waypoint, predicate=waypoint:same_id, nbt={data:{waypoint:1016}}]
execute if score @s waypoint matches 1017 run tp @s @n[type=armor_stand, tag=Waypoint, predicate=waypoint:same_id, nbt={data:{waypoint:1017}}]
execute if score @s waypoint matches 1018 run tp @s @n[type=armor_stand, tag=Waypoint, predicate=waypoint:same_id, nbt={data:{waypoint:1018}}]
execute if score @s waypoint matches 1019 run tp @s @n[type=armor_stand, tag=Waypoint, predicate=waypoint:same_id, nbt={data:{waypoint:1019}}]
execute if score @s waypoint matches 1020 run tp @s @n[type=armor_stand, tag=Waypoint, predicate=waypoint:same_id, nbt={data:{waypoint:1020}}]

# --------------------------------------------------------------------------------- #

scoreboard players reset @s waypoint
scoreboard players enable @s waypoint