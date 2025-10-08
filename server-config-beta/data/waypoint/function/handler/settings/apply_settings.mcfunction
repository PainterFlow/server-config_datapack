advancement revoke @s only waypoint:apply_settings

# --------------------------------------------------------------------------------- #

execute if score @s waypoint matches 10001 run item modify entity @s saddle waypoint:visibility
execute if score @s waypoint matches 10002 run item modify entity @s saddle waypoint:size
execute if score @s waypoint matches 10003 run item modify entity @s saddle waypoint:animation

# --------------------------------------------------------------------------------- #

scoreboard players operation #Search waypoint.ID = @s waypoint.ID

execute if data entity @s equipment.saddle.components."minecraft:custom_data".settings{visibility:"invisible"} as @e[type=armor_stand, tag=Waypoint, predicate=waypoint:same_id] run data modify entity @s Invisible set value 1b
execute if data entity @s equipment.saddle.components."minecraft:custom_data".settings{visibility:"invisible"} as @e[type=armor_stand, tag=Waypoint, predicate=waypoint:same_id] run data remove entity @s equipment.head
execute if data entity @s equipment.saddle.components."minecraft:custom_data".settings{visibility:"visible"} as @e[type=armor_stand, tag=Waypoint, predicate=waypoint:same_id] run data modify entity @s Invisible set value 0b
execute if data entity @s equipment.saddle.components."minecraft:custom_data".settings{visibility:"visible"} as @e[type=armor_stand, tag=Waypoint, predicate=waypoint:same_id] run data modify entity @s equipment.head set value {id:leather_helmet}

execute if data entity @s equipment.saddle.components."minecraft:custom_data".settings{size:"small"} as @e[type=armor_stand, tag=Waypoint, predicate=waypoint:same_id] run data modify entity @s Small set value 1b
execute if data entity @s equipment.saddle.components."minecraft:custom_data".settings{size:"normal"} as @e[type=armor_stand, tag=Waypoint, predicate=waypoint:same_id] run data modify entity @s Small set value 0b

execute if data entity @s equipment.saddle.components."minecraft:custom_data".settings{animation:"disabled"} run tag @s remove Waypoint.Animation
execute if data entity @s equipment.saddle.components."minecraft:custom_data".settings{animation:"enabled"} run tag @s add Waypoint.Animation

function waypoint:handler/settings/get_settings