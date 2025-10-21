advancement revoke @s only blobs:settings/blob
advancement revoke @s only blobs:settings/debug
advancement revoke @s only blobs:settings/home
advancement revoke @s only blobs:exit
advancement revoke @s only blobs:settings/data_management

dialog show @s blobs:blob/main

scoreboard players reset @s blob
scoreboard players reset @s spawn
scoreboard players reset @s debug
scoreboard players reset @s home
scoreboard players reset @s render_thread
scoreboard players enable @s blob
scoreboard players enable @s spawn
scoreboard players enable @s debug
scoreboard players enable @s home
scoreboard players enable @s render_thread

tellraw @a[tag=debugRenderThread] {text:"[BLOBS-RENDER] ",color:"dark_purple",bold:1b,extra:[{text:"Exit Dialog",color:"gray",italic:1b,bold:0b}]}