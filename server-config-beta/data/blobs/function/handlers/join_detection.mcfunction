scoreboard players enable @s blob
scoreboard players enable @s spawn
data modify entity @s {} append value {custom:{unique_id:-1}}
item replace entity @s saddle with saddle 1
item modify entity @s saddle blobs:storage/storage

execute store result entity @s equipment.saddle.components."minecraft:custom_data".blob.unique_id double 1 run scoreboard players operation @s unique_id = .Global unique_id
scoreboard players add .Global unique_id 1

execute store result entity @s equipment.saddle.components."minecraft:custom_data".unique_id double 1 run scoreboard players operation @s unique_id = .Global unique_id
scoreboard players add .Global unique_id 1

execute store result entity @s Score double 1 run scoreboard players get @s unique_id


tellraw @a[tag=Debug] {text:"[BLOBS-HANDLERS] ",color:"dark_purple",bold:1b,extra:[{text:"New Player obtained storage",color:"gray",italic:1b,bold:0b}]}
execute as @s run function blobs:data_management/creating_storages/create_player_storage with entity @s Score