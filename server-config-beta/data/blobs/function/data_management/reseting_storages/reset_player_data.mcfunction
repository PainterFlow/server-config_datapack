advancement revoke @s only blobs:apply_settings
advancement revoke @s only blobs:get_settings
advancement revoke @s only blobs:spawn
advancement revoke @s only blobs:global_apply_settings
advancement revoke @s only blobs:data_management

item replace entity @s saddle with saddle 1
item modify entity @s saddle blobs:storage/storage

scoreboard players reset @s spawn
scoreboard players reset @s blob
scoreboard players enable @s spawn
scoreboard players enable @s blob


execute store result entity @s equipment.saddle.components."minecraft:custom_data".blob.unique_id double 1 run scoreboard players get @s unique_id
execute store result entity @s equipment.saddle.components."minecraft:custom_data".unique_id double 1 run scoreboard players get @s unique_id
execute as @s run function blobs:data_management/creating_storages/create_player_storage with entity @s equipment.saddle.components."minecraft:custom_data"

tag @s remove Debug
tag @s remove AFK
team leave @s
effect clear @s night_vision
attribute @s waypoint_transmit_range base reset
effect clear @s blindness
effect clear @s nausea

tellraw @a[tag=Debug] {text:"[BLOBS-DATA] ",color:"dark_purple",bold:1b,extra:[{text:"Reset Player Data",color:"gray",italic:1b,bold:0b}]}