scoreboard players reset @s blob
scoreboard players reset @s debug
scoreboard players enable @s blob
scoreboard players enable @s debug

advancement revoke @s only blobs:settings/blob
advancement revoke @s only blobs:settings/debug
advancement revoke @s only blobs:exit
advancement revoke @s only blobs:settings/data_management

dialog show @s blobs:blob/main

tellraw @a[tag=debugRenderThread] {text:"[BLOBS-RENDER] ",color:"dark_purple",bold:1b,extra:[{text:"Exit Dialog",color:"gray",italic:1b,bold:0b}]}