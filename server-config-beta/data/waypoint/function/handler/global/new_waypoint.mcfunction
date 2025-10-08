tag @s add Waypoint
tag @s add Waypoint.Global
scoreboard players add .Global waypoint.Amount 1

data merge entity @s {CustomName:"Unnamed Global Waypoint", NoGravity:1b, Silent:1b, Invulnerable:1b, CustomNameVisible:1b, NoBasePlate:1b, equipment:{head:{id:leather_helmet}}, DisabledSlots:4132864}
data modify entity @s Rotation[0] set from entity @p[tag=Owner] Rotation[0]

scoreboard players operation #data waypoint.Calc = .Global waypoint.Amount
scoreboard players operation #data waypoint.Calc += #1000000 waypoint.Calc

tellraw @p [{score:{name:"#data", objective:"waypoint.Calc"}, extra:[{text:" /20 Global Waypoints Placed", color:"gray"}]}]

execute store result entity @s data.waypoint int 1 run scoreboard players get #data waypoint.Calc
function waypoint:handler/waypoints/set_data with entity @s data

execute if data storage waypoints:global settings{size:"small"} run data modify entity @s Small set value 1b
execute if data storage waypoints:global settings{visibility:"invisible"} run data modify entity @s Invisible set value 1b
execute if data storage waypoints:global settings{visibility:"invisible"} run data remove entity @s equipment.head

forceload add ~ ~