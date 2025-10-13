execute as @e[tag=Global_Storage] run data remove storage blob Global_Storage.global
execute as @e[tag=Global_Storage] run kill @s
forceload remove 0 0 0 0
schedule function blobs:handlers/global_storage 1t

tellraw @a[tag=Debug] {text:"[BLOBS-DATA] ",color:"dark_purple",bold:1b,extra:[{text:"Reset Server Data",color:"gray",italic:1b,bold:0b}]}