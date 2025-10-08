tellraw @a [{text: "Vanderflys", color: "gold"},{text:": Thank you for using ", color:"white"},{text:"Better Waypoints", color:"aqua"},{text:".", color:"white"}]

# --------------------------------------------------------------------------------- #

scoreboard objectives add waypoint.ID dummy
scoreboard objectives add waypoint trigger
scoreboard objectives add waypoint.Amount dummy
scoreboard objectives add waypoint.Calc dummy
scoreboard objectives add waypoint.animation.duration dummy
scoreboard objectives add waypoint.animation.target dummy

scoreboard players set #1000 waypoint.Calc 1000
scoreboard players set #1000000 waypoint.Calc 1000000

scoreboard players enable @a waypoint
execute unless score .Global waypoint.ID matches 0.. run scoreboard players set .Global waypoint.ID 0
execute as @a unless score @s waypoint.ID matches 0.. run advancement revoke @a only waypoint:new_player

execute as @a unless score @s waypoint.Amount matches 0.. run scoreboard players set @s waypoint.Amount 0
execute unless score .Global waypoint.Amount matches 0.. run scoreboard players set .Global waypoint.Amount 0

execute unless data storage waypoints:global settings run data modify storage waypoints:global settings set value {size:"normal", visibility:"visible", animation:"enabled"}
execute as @a[advancements={waypoint:new_player=true}] unless items entity @s saddle * run advancement revoke @s only waypoint:new_player

function waypoint:handler/reset_data