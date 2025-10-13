execute as @s run item replace entity @s saddle with saddle[custom_data={blob:-1,unique_id:-1}] 1
data merge storage blob_temp {unique_id:{id:-1}}
$execute as @s run function blobs:data_management/syncing_players/storage_to_saddle with storage blob Players[$(unique_id)]