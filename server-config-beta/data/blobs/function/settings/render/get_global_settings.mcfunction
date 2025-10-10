scoreboard players reset @s blob
scoreboard players enable @s blob

advancement revoke @s only blobs:global_get_settings
advancement revoke @s only blobs:blob

function blobs:settings/render/display_global with entity @n[tag=Global_Storage,type=mannequin] equipment.saddle.components."minecraft:custom_data".global

tellraw @a[tag=Debug] {text:"[BLOBS-SETTINGS] ",color:"dark_purple",bold:1b,extra:[{text:"Getting Global Settings",color:"gray",italic:1b,bold:0b}]}