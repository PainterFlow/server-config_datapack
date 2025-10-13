$execute as @s run data modify entity @s equipment.saddle.components."minecraft:custom_data".global set value $(global)

tellraw @a[tag=Debug] {text:"[BLOBS-DATA-SYNC] ",color:"dark_purple",bold:1b,extra:[{text:"Synced Global Storage to Saddle",color:"gray",italic:1b,bold:0b}]}