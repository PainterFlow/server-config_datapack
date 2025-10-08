scoreboard players operation #Search waypoint.animation.target = @s waypoint.animation.target
scoreboard players remove @s waypoint.animation.duration 1

# --------------------------------------------------------------------------------- #

execute if score @s waypoint.animation.duration matches 5..200 run rotate @s ~ 90

# --------------------------------------------------------------------------------- #

execute if score @s waypoint.animation.duration matches 199 run rotate @s ~ 90



execute if score @s waypoint.animation.duration matches 180 on vehicle at @s run tp @s ~ ~25 ~
execute if score @s waypoint.animation.duration matches 180 at @s run playsound block.beacon.deactivate master @s ~ ~ ~ 0.7 0

execute if score @s waypoint.animation.duration matches 160 on vehicle at @s run tp @s ~ ~25 ~
execute if score @s waypoint.animation.duration matches 160 at @s run playsound block.beacon.deactivate master @s ~ ~ ~ 0.7 0

execute if score @s waypoint.animation.duration matches 140 on vehicle at @s run tp @s ~ ~25 ~
execute if score @s waypoint.animation.duration matches 140 at @s run playsound block.beacon.deactivate master @s ~ ~ ~ 0.7 0


execute if score @s waypoint.animation.duration matches 130 on vehicle run data modify entity @s teleport_duration set value 10s


execute if score @s waypoint.animation.duration matches 120 on vehicle at @n[type=armor_stand, tag=Waypoint, predicate=waypoint:has_target] positioned ~ ~75 ~ run tp @s ~ ~ ~
execute if score @s waypoint.animation.duration matches 120 at @s run playsound block.beacon.deactivate master @s ~ ~ ~ 0.7 0


execute if score @s waypoint.animation.duration matches 105 on vehicle run data modify entity @s teleport_duration set value 6s


execute if score @s waypoint.animation.duration matches 90 on vehicle at @s run tp @s ~ ~-25 ~
execute if score @s waypoint.animation.duration matches 90 at @s run playsound block.beacon.deactivate master @s ~ ~ ~ 0.7 0

execute if score @s waypoint.animation.duration matches 50 on vehicle at @s run tp @s ~ ~-25 ~
execute if score @s waypoint.animation.duration matches 50 at @s run playsound block.beacon.deactivate master @s ~ ~ ~ 0.7 0

execute if score @s waypoint.animation.duration matches 5 on vehicle at @s run tp @s ~ ~-25 ~
execute if score @s waypoint.animation.duration matches 5 at @s run playsound block.beacon.deactivate master @s ~ ~ ~ 0.7 0


execute if score @s waypoint.animation.duration matches 1 on vehicle run kill @s
execute if score @s waypoint.animation.duration matches 1 run tp @s @n[type=armor_stand, tag=Waypoint, predicate=waypoint:has_target]

# --------------------------------------------------------------------------------- #

execute if score @s waypoint.animation.duration matches 0 run effect clear @s resistance
execute if score @s waypoint.animation.duration matches 0 run effect clear @s invisibility
execute if score @s waypoint.animation.duration matches 0 as @n[type=armor_stand, tag=Waypoint, predicate=waypoint:has_target] run scoreboard players reset @s waypoint.animation.target
execute if score @s waypoint.animation.duration matches 0 run scoreboard players reset @s waypoint.animation.target
execute if score @s waypoint.animation.duration matches 0 run scoreboard players reset @s waypoint.animation.duration