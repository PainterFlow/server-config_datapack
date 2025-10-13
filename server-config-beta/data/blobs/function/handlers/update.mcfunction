execute unless predicate blobs:storage/update_storage run tellraw @s {text:"[BLOB-DATA] ",color:"dark_purple",bold:1b,extra:[{text:"Due to a server update, we had to reset your custom player data, please check your custom server settings",bold:0b,color:"red"}]}
execute unless predicate blobs:storage/update_storage run tellraw @a[tag=Debug] {text:"[BLOB-DATA] ",color:"dark_purple",bold:1b,extra:[{text:"Player Data got reset due to a Server Update",bold:0b,color:"red"}]}

$execute unless predicate blobs:storage/update_storage run function blobs:data_management/reset_player_data with storage blob Players[$(unique_id)]

execute as @n[tag=Global_Storage] unless predicate blobs:storage/update_global_storage run tellraw @a[tag=Debug] {text:"[BLOB-DATA] ",color:"dark_purple",bold:1b,extra:[{text:"Due to a server update, we had to reset the server data, please check the settings",bold:0b,color:"red"}]}
execute as @n[tag=Global_Storage] unless predicate blobs:storage/update_global_storage run function blobs:data_management/reseting_storages/reset_global_storage_data