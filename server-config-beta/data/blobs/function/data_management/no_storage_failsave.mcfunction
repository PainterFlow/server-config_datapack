execute as @a unless items entity @s saddle saddle run item replace entity @s saddle with saddle 1
$execute as @a unless items entity @s saddle saddle run function blobs:data_management/syncing_players/storage_to_saddle with storage blob Players[$(unique_id)]

execute as @n[tag=Global_Storage,type=mannequin] unless items entity @s saddle saddle run item replace entity @s saddle with saddle 1
execute as @n[tag=Global_Storage,type=mannequin] unless items entity @s saddle saddle run function blobs:data_management/syncing_global/storage_to_saddle