execute if entity @n[tag=Global_Storage] if predicate blobs:lag_loop_check run function blobs:lag/loop
function blobs:item_modifiers/trident
function blobs:item_modifiers/npc_spawnegg
function blobs:item_modifiers/potions
function blobs:item_modifiers/axe
function blobs:item_modifiers/_banned_items
item replace entity @e[tag=tutorial_npc,type=mannequin] armor.chest with netherite_chestplate[enchantments={"blobs:z_npc_spawn_egg":1},equippable={asset_id:"a",slot:"chest",damage_on_hurt:false},unbreakable={}]