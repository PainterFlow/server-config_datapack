advancement revoke @s only waypoint:apply_global_settings

# --------------------------------------------------------------------------------- #

execute if score @s waypoint matches 1100001 run function waypoint:handler/global/settings/visibility
execute if score @s waypoint matches 1100002 run function waypoint:handler/global/settings/size

# --------------------------------------------------------------------------------- #

execute if data storage waypoints:global settings{visibility:"invisible"} as @e[type=armor_stand, tag=Waypoint.Global] run data modify entity @s Invisible set value 1b
execute if data storage waypoints:global settings{visibility:"invisible"} as @e[type=armor_stand, tag=Waypoint.Global] run data remove entity @s equipment.head
execute if data storage waypoints:global settings{visibility:"visible"} as @e[type=armor_stand, tag=Waypoint.Global] run data modify entity @s Invisible set value 0b
execute if data storage waypoints:global settings{visibility:"visible"} as @e[type=armor_stand, tag=Waypoint.Global] run data modify entity @s equipment.head set value {id:leather_helmet}

execute if data storage waypoints:global settings{size:"small"} as @e[type=armor_stand, tag=Waypoint.Global] run data modify entity @s Small set value 1b
execute if data storage waypoints:global settings{size:"normal"} as @e[type=armor_stand, tag=Waypoint.Global] run data modify entity @s Small set value 0b

execute if data entity @s equipment.saddle.components."minecraft:custom_data".settings{animation:"disabled"} run tag @s remove Waypoint.Animation
execute if data entity @s equipment.saddle.components."minecraft:custom_data".settings{animation:"enabled"} run tag @s add Waypoint.Animation

function waypoint:handler/global/settings/get_settings