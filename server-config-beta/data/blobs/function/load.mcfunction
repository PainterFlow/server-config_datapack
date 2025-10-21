execute if entity @e[tag=Global_Storage] run function blobs:__main/load_reload
execute unless entity @e[tag=Global_Storage] run function blobs:__main/first_install

## <== Update & Other ==>

data merge storage minecraft:blob_temp {unique_id:{id:-1}}
# execute as @a run function blobs:handlers/update

tellraw @a {text:"----Blob----",color:"gray"}
tellraw @a {text:"Loaded Blob Datapack",color:"green"}
tellraw @a {text:"Thank you for using my Datapack",color:"gold"}
tellraw @a {text:"Made by: PainterFlow11",color:"gold"}
tellraw @a {text:"Version: 1.0"}
tellraw @a {text:"----Blob----",color:"gray"}

tellraw @a[tag=debugMainThread] {text:"[BLOBS-MAIN] ",color:"dark_purple",bold:1b,extra:[{text:"Loaded Data Pack",color:"gray",italic:1b,bold:0b}]}