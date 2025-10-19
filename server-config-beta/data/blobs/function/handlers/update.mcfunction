# execute unless data entity @s data{version:3} run tellraw @s {text:"[BLOB-MAIN] ",color:"dark_purple",bold:1b,extra:[{text:"Due to a server update, we had to reset your custom player data, please check your custom server settings",bold:0b,color:"red"}]}
execute unless data entity @s data{version:3} run function blobs:data_management/reset_functions/reset_player_data
execute unless data entity @s data{version:3} run tellraw @a[tag=debugMainThread] {text:"[BLOB-MAIN] ",color:"gold",bold:1b,extra:[{text:"Player Data got reset due to a Server Update",bold:0b,color:"red"}]}


execute as @n[tag=Global_Storage] unless data entity @s data{version:3} run tellraw @a[tag=debugMainThread] {text:"[BLOB-MAIN] ",color:"gold",bold:1b,extra:[{text:"Due to a server update, we had to reset the server data, please check the settings",bold:0b,color:"red"}]}
execute as @n[tag=Global_Storage] unless data entity @s data{version:3} run function blobs:data_management/reset_functions/reset_global_storage_data