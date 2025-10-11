advancement revoke @s only blobs:new_player
advancement revoke @s only blobs:apply_settings
advancement revoke @s only blobs:get_settings
advancement revoke @s only blobs:spawn
advancement revoke @s only blobs:global_apply_settings

scoreboard players reset @s spawn
scoreboard players reset @s blob
scoreboard players enable @s spawn
scoreboard players enable @s blob

tag @s remove Debug
effect clear @s night_vision
attribute @s waypoint_transmit_range base reset
effect clear @s blindness
effect clear @s nausea

tellraw @a[tag=Debug] {text:"[BLOBS-DATA] ",color:"dark_purple",bold:1b,extra:[{text:"Reset Player Data",color:"gray",italic:1b,bold:0b}]}