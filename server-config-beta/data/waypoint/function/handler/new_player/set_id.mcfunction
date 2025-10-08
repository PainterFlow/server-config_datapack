scoreboard players enable @s waypoint

scoreboard players operation @s waypoint.ID = .Global waypoint.ID
scoreboard players add .Global waypoint.ID 1

tag @s add Waypoint.Animation

item replace entity @s saddle with saddle[custom_data={settings:{size:"normal", visibility:"visible", animation:"enabled"}}] 1