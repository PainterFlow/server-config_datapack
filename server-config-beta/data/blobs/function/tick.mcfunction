function blobs:item_modifiers/trident
function blobs:item_modifiers/npc_spawnegg
function blobs:item_modifiers/potions
function blobs:item_modifiers/axe
function blobs:item_modifiers/_banned_items
item replace entity @e[tag=tutorial_npc,type=mannequin] armor.chest with netherite_chestplate[enchantments={"blobs:z_npc_spawn_egg":1},equippable={asset_id:"a",slot:"chest",damage_on_hurt:false},unbreakable={}]

execute as @n[tag=Global_Storage] unless items entity @s saddle saddle run function blobs:data_management/storage_failsave_global
execute as @a unless items entity @s saddle saddle run execute store result storage blob_temp id double 1 run scoreboard players get @s unique_id
execute as @a unless items entity @s saddle saddle run function blobs:data_management/storage_failsave_player with storage blob_temp