forceload add 0 0
execute if entity @e[tag=Global_Storage] run function blobs:__main/load_reload
execute unless entity @e[tag=Global_Storage] run function blobs:__main/first_install

kill @e[tag=player_detector]

tellraw @a {text:"----Blob----",color:"gray"}
tellraw @a {text:"Loaded Blob Datapack",color:"green"}
tellraw @a {text:"Thank you for using my Datapack",color:"gold"}
tellraw @a {text:"Made by: PainterFlow11",color:"gold"}
tellraw @a {text:"Version: 1.0"}
tellraw @a {text:"----Blob----",color:"gray"}