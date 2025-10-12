$execute as @s run data modify storage blob Players[$(unique_id)].unique_id set value $(unique_id)
$execute as @s run data modify storage blob Players[$(unique_id)].blob set value $(blob)

tellraw @a[tag=Debug] {text:"[BLOBS-DATA-SYNC] ",color:"dark_purple",bold:1b,extra:[{text:"Synced Saddle to Player Storage",color:"gray",italic:1b,bold:0b}]}