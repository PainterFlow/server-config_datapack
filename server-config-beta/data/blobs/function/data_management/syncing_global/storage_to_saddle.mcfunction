execute as @s run item replace entity @s saddle with saddle 1
$execute as @s run data modify entity @s equipment.saddle.components."minecraft:custom_data".blob set value $(unique_id)

tellraw @a[tag=Debug] {text:"[BLOBS-DATA-SYNC] ",color:"dark_purple",bold:1b,extra:[{text:"Synced Global Storage to Saddle",color:"gray",italic:1b,bold:0b}]}