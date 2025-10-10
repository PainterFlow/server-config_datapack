advancement revoke @s only blobs:new_player
advancement revoke @s only blobs:apply_settings
advancement revoke @s only blobs:get_settings
scoreboard players reset @s spawn
scoreboard players reset @s blob
scoreboard players enable @s spawn
scoreboard players enable @s blob

tellraw @a[tag=Debug] {text:"[BLOBS-DATA] ",color:"dark_purple",bold:1b,extra:[{text:"Reset Player Data",color:"gray",italic:1b,bold:0b}]}