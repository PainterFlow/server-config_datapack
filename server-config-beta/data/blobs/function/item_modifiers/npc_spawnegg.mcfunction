execute as @e if items entity @s player.cursor enchanted_book[stored_enchantments={"blobs:z_npc_spawn_egg":1}] run item replace entity @s player.cursor with enderman_spawn_egg[custom_data={npc:1b}]
execute as @e if items entity @s player.cursor enderman_spawn_egg[custom_data={npc:1b}] run item modify entity @s player.cursor blobs:npc_spawn_egg
execute as @e if items entity @s weapon.mainhand enchanted_book[stored_enchantments={"blobs:z_npc_spawn_egg":1}] run item replace entity @s weapon.mainhand with enderman_spawn_egg[custom_data={npc:1b}]
execute as @e if items entity @s weapon.mainhand enderman_spawn_egg[custom_data={npc:1b}] run item modify entity @s weapon.mainhand blobs:npc_spawn_egg
execute as @e if items entity @s weapon.offhand enchanted_book[stored_enchantments={"blobs:z_npc_spawn_egg":1}] run item replace entity @s weapon.offhand with enderman_spawn_egg[custom_data={npc:1b}]
execute as @e if items entity @s weapon.offhand enderman_spawn_egg[custom_data={npc:1b}] run item modify entity @s weapon.offhand blobs:npc_spawn_egg

tellraw @a[tag=Debug] {text:"[BLOBS-ITEMS] ",color:"dark_purple",bold:1b,extra:[{text:"Detectet non-converted Helper NPC spawn-egg | converting..."}]}