scoreboard players enable @s blob
item replace entity @s saddle with saddle 1
item modify entity @s saddle blobs:settings/settings

tellraw @a[tag=Debug] {text:"[BLOBS-PLAYER-HANDLER] ",color:"dark_purple",bold:1b,extra:[{text:"New Player obtained storage",color:"gray",italic:1b,bold:0b}]}
execute run data get entity @s[tag=Debug] equipment.saddle