summon mannequin 0 0 0 {Tags:[Global_Storage],Invulnerable:1b,immovable:1b,NoGravity:1b,Silent:1b,active_effects:[{id:"invisibility",ambient:0b,amplifier:255,duration:-1,show_icon:0b,show_particles:0b}]}
execute at @n[tag=Global_Storage,type=mannequin] run forceload add ~ ~ ~ ~
execute as @n[tag=Global_Storage,type=mannequin] run effect give @s invisibility infinite 255 true
execute as @n[tag=Global_Storage,type=mannequin] run item replace entity @s saddle with saddle
execute as @n[tag=Global_Storage,type=mannequin] run item modify entity @s saddle blobs:storage/global

execute as @n[tag=Global_Storage,type=mannequin] run function blobs:data_management/creating_storages/create_global_storage with entity @s equipment.saddle.components."minecraft:custom_data".global

tellraw @a[tag=Debug] {text:"[BLOBS-HANDLERS] ",color:"dark_purple",bold:1b,extra:[{text:"New Global Storage",color:"gray",italic:1b,bold:0b}]}