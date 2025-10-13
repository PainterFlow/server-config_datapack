$execute as @s run data modify storage blob Global_Storage set value $(global)

tellraw @a[tag=Debug] {text:"[BLOBS-DATA-SYNC] ",color:"dark_purple",bold:1b,extra:[{text:"Synced Saddle to Global Storage",color:"gray",italic:1b,bold:0b}]}