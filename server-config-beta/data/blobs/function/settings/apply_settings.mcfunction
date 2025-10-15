

execute as @s run function blobs:handlers/get_functions/get_settings

tellraw @a[tag=Debug] {text:"[BLOBS-SETTINGS] ",color:"dark_purple",bold:1b,extra:[{text:"Setting Changed",color:"gray",italic:1b,bold:0b}]}