advancement revoke @s only blobs:settings/apply_settings
advancement revoke @s only blobs:settings/blob
advancement revoke @s only blobs:spawn
advancement revoke @s only blobs:settings/global_apply_settings
advancement revoke @s only blobs:settings/data_management
advancement revoke @s only blobs:api/join_detection
advancement revoke @s only blobs:api/first_join_detection

scoreboard players reset @s spawn
scoreboard players reset @s blob
scoreboard players reset @s debug
scoreboard players reset @s home
scoreboard players reset @s ui
scoreboard players reset @s music
scoreboard players enable @s spawn
scoreboard players enable @s blob
scoreboard players enable @s debug
scoreboard players enable @s home
scoreboard players enable @s ui
scoreboard players enable @s music

tag @s remove Debug
tag @s remove AFK
team leave @s
effect clear @s night_vision
attribute @s waypoint_transmit_range base reset
effect clear @s blindness
effect clear @s nausea

tellraw @a[tag=Debug] {text:"[BLOBS-DATA] ",color:"dark_purple",bold:1b,extra:[{text:"Reset Player Data",color:"gray",italic:1b,bold:0b}]}