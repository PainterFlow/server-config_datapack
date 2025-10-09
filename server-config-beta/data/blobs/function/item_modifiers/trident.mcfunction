execute as @e if items entity @s player.cursor trident run item modify entity @s player.cursor blobs:trident
execute as @e if items entity @s weapon.mainhand trident run item modify entity @s weapon.mainhand blobs:trident
execute as @e if items entity @s weapon.offhand trident run item modify entity @s weapon.offhand blobs:trident

tellraw @a[tag=Debug] {text:"[BLOBS-ITEMS] ",color:"dark_purple",bold:1b,extra:[{text:"Detectet non-converted Trident | converting..."}]}