execute as @e[tag=Global_Storage] run kill @s
schedule function blobs:data_management/global_storage 1t

tellraw @a[tag=debugDataThread] {text:"[BLOBS-DATA] ",color:"dark_purple",bold:1b,extra:[{text:"Reset Server Data",color:"gray",italic:1b,bold:0b}]}
tellraw @a[tag=debugWarnThread] {text:"[BLOBS-WARN] ",color:"red",bold:1b,extra:[{text:"Global Server Data got reset",color:"gray",italic:1b,bold:0b}]}