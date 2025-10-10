summon mannequin 0 0 0 {Tags:["Global_Storage"],Invulnerable:1b,immovable:1b,NoGravity:1b,Silent:1b,active_effects:[{id:"invisibility",ambient:0b,amplifier:255,duration:-1,show_icon:0b,show_particles:0b}]}
execute at @n[tag=Global_Storage] run forceload add ~ ~ ~ ~
execute as @n[tag=Global_Storage] run effect give @s invisibility infinite 255 true
execute as @n[tag=Global_Storage] run item replace entity @s saddle with saddle
execute as @n[tag=Global_Storage] run item modify entity @s saddle blobs:settings/global

tellraw @a[tag=Debug] {text:"[BLOBS-DATA] ",color:"dark_purple",bold:1b,extra:[{text:"New Global Storage",color:"gray",italic:1b,bold:0b}]}