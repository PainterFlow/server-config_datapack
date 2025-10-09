scoreboard players reset @s blob
scoreboard players enable @s blob

advancement revoke @s only blobs:get_settings
advancement revoke @s only blobs:blob

function blobs:settings/render/display with entity @s equipment.saddle.components."minecraft:custom_data".settings

tellraw @a[tag=Debug] {text:"[BLOBS-SETTINGS] ",color:"dark_purple",bold:1b,extra:[{text:"Something Called Settings",color:"gray",italic:1b,bold:0b}]}