advancement revoke @s only waypoint:global_animation_teleport

execute if score @s waypoint.animation.duration matches 1.. run return fail

execute positioned over motion_blocking_no_leaves unless entity @s[distance=..1] run return run function waypoint:handler/animation/ineligible

# --------------------------------------------------------------------------------- #

scoreboard players operation @s waypoint.animation.target = @s waypoint.ID

execute if score @s waypoint matches 1000001 run scoreboard players operation @n[type=armor_stand, tag=Waypoint.Global, nbt={data:{waypoint:1000001}}] waypoint.animation.target = @s waypoint.animation.target
execute if score @s waypoint matches 1000002 run scoreboard players operation @n[type=armor_stand, tag=Waypoint.Global, nbt={data:{waypoint:1000002}}] waypoint.animation.target = @s waypoint.animation.target
execute if score @s waypoint matches 1000003 run scoreboard players operation @n[type=armor_stand, tag=Waypoint.Global, nbt={data:{waypoint:1000003}}] waypoint.animation.target = @s waypoint.animation.target
execute if score @s waypoint matches 1000004 run scoreboard players operation @n[type=armor_stand, tag=Waypoint.Global, nbt={data:{waypoint:1000004}}] waypoint.animation.target = @s waypoint.animation.target
execute if score @s waypoint matches 1000005 run scoreboard players operation @n[type=armor_stand, tag=Waypoint.Global, nbt={data:{waypoint:1000005}}] waypoint.animation.target = @s waypoint.animation.target
execute if score @s waypoint matches 1000006 run scoreboard players operation @n[type=armor_stand, tag=Waypoint.Global, nbt={data:{waypoint:1000006}}] waypoint.animation.target = @s waypoint.animation.target
execute if score @s waypoint matches 1000007 run scoreboard players operation @n[type=armor_stand, tag=Waypoint.Global, nbt={data:{waypoint:1000007}}] waypoint.animation.target = @s waypoint.animation.target
execute if score @s waypoint matches 1000008 run scoreboard players operation @n[type=armor_stand, tag=Waypoint.Global, nbt={data:{waypoint:1000008}}] waypoint.animation.target = @s waypoint.animation.target
execute if score @s waypoint matches 1000009 run scoreboard players operation @n[type=armor_stand, tag=Waypoint.Global, nbt={data:{waypoint:1000009}}] waypoint.animation.target = @s waypoint.animation.target
execute if score @s waypoint matches 1000010 run scoreboard players operation @n[type=armor_stand, tag=Waypoint.Global, nbt={data:{waypoint:1000010}}] waypoint.animation.target = @s waypoint.animation.target
execute if score @s waypoint matches 1000011 run scoreboard players operation @n[type=armor_stand, tag=Waypoint.Global, nbt={data:{waypoint:1000011}}] waypoint.animation.target = @s waypoint.animation.target
execute if score @s waypoint matches 1000012 run scoreboard players operation @n[type=armor_stand, tag=Waypoint.Global, nbt={data:{waypoint:1000012}}] waypoint.animation.target = @s waypoint.animation.target
execute if score @s waypoint matches 1000013 run scoreboard players operation @n[type=armor_stand, tag=Waypoint.Global, nbt={data:{waypoint:1000013}}] waypoint.animation.target = @s waypoint.animation.target
execute if score @s waypoint matches 1000014 run scoreboard players operation @n[type=armor_stand, tag=Waypoint.Global, nbt={data:{waypoint:1000014}}] waypoint.animation.target = @s waypoint.animation.target
execute if score @s waypoint matches 1000015 run scoreboard players operation @n[type=armor_stand, tag=Waypoint.Global, nbt={data:{waypoint:1000015}}] waypoint.animation.target = @s waypoint.animation.target
execute if score @s waypoint matches 1000016 run scoreboard players operation @n[type=armor_stand, tag=Waypoint.Global, nbt={data:{waypoint:1000016}}] waypoint.animation.target = @s waypoint.animation.target
execute if score @s waypoint matches 1000017 run scoreboard players operation @n[type=armor_stand, tag=Waypoint.Global, nbt={data:{waypoint:1000017}}] waypoint.animation.target = @s waypoint.animation.target
execute if score @s waypoint matches 1000018 run scoreboard players operation @n[type=armor_stand, tag=Waypoint.Global, nbt={data:{waypoint:1000018}}] waypoint.animation.target = @s waypoint.animation.target
execute if score @s waypoint matches 1000019 run scoreboard players operation @n[type=armor_stand, tag=Waypoint.Global, nbt={data:{waypoint:1000019}}] waypoint.animation.target = @s waypoint.animation.target
execute if score @s waypoint matches 1000020 run scoreboard players operation @n[type=armor_stand, tag=Waypoint.Global, nbt={data:{waypoint:1000020}}] waypoint.animation.target = @s waypoint.animation.target

# --------------------------------------------------------------------------------- #

scoreboard players operation #Search waypoint.animation.target = @s waypoint.animation.target
execute unless entity @n[distance=..10000, type=armor_stand, tag=Waypoint.Global, predicate=waypoint:has_target] run return run function waypoint:handler/animation/ineligible
execute positioned as @n[type=armor_stand, tag=Waypoint.Global, predicate=waypoint:has_target] positioned over motion_blocking_no_leaves unless entity @n[distance=..1] run return run function waypoint:handler/animation/ineligible

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