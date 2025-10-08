advancement revoke @s only waypoint:animation_teleport

execute if score @s waypoint.animation.duration matches 1.. run return fail

execute positioned over motion_blocking_no_leaves unless entity @s[distance=..1] run return run function waypoint:handler/animation/ineligible

# --------------------------------------------------------------------------------- #

scoreboard players operation #Search waypoint.ID = @s waypoint.ID
scoreboard players operation @s waypoint.animation.target = @s waypoint.ID

execute if score @s waypoint matches 1001 run scoreboard players operation @n[type=armor_stand, tag=Waypoint, predicate=waypoint:same_id, nbt={data:{waypoint:1001}}] waypoint.animation.target = @s waypoint.animation.target
execute if score @s waypoint matches 1002 run scoreboard players operation @n[type=armor_stand, tag=Waypoint, predicate=waypoint:same_id, nbt={data:{waypoint:1002}}] waypoint.animation.target = @s waypoint.animation.target
execute if score @s waypoint matches 1003 run scoreboard players operation @n[type=armor_stand, tag=Waypoint, predicate=waypoint:same_id, nbt={data:{waypoint:1003}}] waypoint.animation.target = @s waypoint.animation.target
execute if score @s waypoint matches 1004 run scoreboard players operation @n[type=armor_stand, tag=Waypoint, predicate=waypoint:same_id, nbt={data:{waypoint:1004}}] waypoint.animation.target = @s waypoint.animation.target
execute if score @s waypoint matches 1005 run scoreboard players operation @n[type=armor_stand, tag=Waypoint, predicate=waypoint:same_id, nbt={data:{waypoint:1005}}] waypoint.animation.target = @s waypoint.animation.target
execute if score @s waypoint matches 1006 run scoreboard players operation @n[type=armor_stand, tag=Waypoint, predicate=waypoint:same_id, nbt={data:{waypoint:1006}}] waypoint.animation.target = @s waypoint.animation.target
execute if score @s waypoint matches 1007 run scoreboard players operation @n[type=armor_stand, tag=Waypoint, predicate=waypoint:same_id, nbt={data:{waypoint:1007}}] waypoint.animation.target = @s waypoint.animation.target
execute if score @s waypoint matches 1008 run scoreboard players operation @n[type=armor_stand, tag=Waypoint, predicate=waypoint:same_id, nbt={data:{waypoint:1008}}] waypoint.animation.target = @s waypoint.animation.target
execute if score @s waypoint matches 1009 run scoreboard players operation @n[type=armor_stand, tag=Waypoint, predicate=waypoint:same_id, nbt={data:{waypoint:1009}}] waypoint.animation.target = @s waypoint.animation.target
execute if score @s waypoint matches 1010 run scoreboard players operation @n[type=armor_stand, tag=Waypoint, predicate=waypoint:same_id, nbt={data:{waypoint:1010}}] waypoint.animation.target = @s waypoint.animation.target
execute if score @s waypoint matches 1011 run scoreboard players operation @n[type=armor_stand, tag=Waypoint, predicate=waypoint:same_id, nbt={data:{waypoint:1011}}] waypoint.animation.target = @s waypoint.animation.target
execute if score @s waypoint matches 1012 run scoreboard players operation @n[type=armor_stand, tag=Waypoint, predicate=waypoint:same_id, nbt={data:{waypoint:1012}}] waypoint.animation.target = @s waypoint.animation.target
execute if score @s waypoint matches 1013 run scoreboard players operation @n[type=armor_stand, tag=Waypoint, predicate=waypoint:same_id, nbt={data:{waypoint:1013}}] waypoint.animation.target = @s waypoint.animation.target
execute if score @s waypoint matches 1014 run scoreboard players operation @n[type=armor_stand, tag=Waypoint, predicate=waypoint:same_id, nbt={data:{waypoint:1014}}] waypoint.animation.target = @s waypoint.animation.target
execute if score @s waypoint matches 1015 run scoreboard players operation @n[type=armor_stand, tag=Waypoint, predicate=waypoint:same_id, nbt={data:{waypoint:1015}}] waypoint.animation.target = @s waypoint.animation.target
execute if score @s waypoint matches 1016 run scoreboard players operation @n[type=armor_stand, tag=Waypoint, predicate=waypoint:same_id, nbt={data:{waypoint:1016}}] waypoint.animation.target = @s waypoint.animation.target
execute if score @s waypoint matches 1017 run scoreboard players operation @n[type=armor_stand, tag=Waypoint, predicate=waypoint:same_id, nbt={data:{waypoint:1017}}] waypoint.animation.target = @s waypoint.animation.target
execute if score @s waypoint matches 1018 run scoreboard players operation @n[type=armor_stand, tag=Waypoint, predicate=waypoint:same_id, nbt={data:{waypoint:1018}}] waypoint.animation.target = @s waypoint.animation.target
execute if score @s waypoint matches 1019 run scoreboard players operation @n[type=armor_stand, tag=Waypoint, predicate=waypoint:same_id, nbt={data:{waypoint:1019}}] waypoint.animation.target = @s waypoint.animation.target
execute if score @s waypoint matches 1020 run scoreboard players operation @n[type=armor_stand, tag=Waypoint, predicate=waypoint:same_id, nbt={data:{waypoint:1020}}] waypoint.animation.target = @s waypoint.animation.target

# --------------------------------------------------------------------------------- #

scoreboard players operation #Search waypoint.animation.target = @s waypoint.animation.target
execute unless entity @n[distance=..1000, type=armor_stand, tag=Waypoint, predicate=waypoint:same_id, predicate=waypoint:has_target] run return run function waypoint:handler/animation/ineligible
execute positioned as @n[type=armor_stand, tag=Waypoint, predicate=waypoint:same_id, predicate=waypoint:has_target] positioned over motion_blocking_no_leaves unless entity @n[distance=..1] run return run function waypoint:handler/animation/ineligible

# --------------------------------------------------------------------------------- #

effect give @s resistance infinite 255 true
effect give @s invisibility infinite 1 true
scoreboard players set @s waypoint.animation.duration 200

execute at @s positioned ~ ~2 ~ run summon item_display ~ ~ ~ {Tags:[Waypoint.Animation, New], teleport_duration:3s}
scoreboard players operation @n[distance=..6, type=item_display, tag=New] waypoint.animation.target = @s waypoint.animation.target
tag @n[distance=..6, type=item_display, tag=New] remove New

ride @s mount @n[distance=..6, type=item_display, tag=Waypoint.Animation, predicate=waypoint:has_target]
rotate @s ~ 90

# --------------------------------------------------------------------------------- #

scoreboard players reset @s waypoint
scoreboard players enable @s waypoint