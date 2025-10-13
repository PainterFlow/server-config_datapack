$data remove storage blob Players[$(unique_id)].blob
$execute as @s run data modify storage minecraft:blob Players append value {unique_id:$(unique_id),blob:-1}
execute as @s run function blobs:data_management/creating_storages/create_player_saddle_storage with entity @s equipment.saddle.components."minecraft:custom_data"