scoreboard players reset @s blob
scoreboard players reset @s home
scoreboard players enable @s blob
scoreboard players enable @s home

advancement revoke @s only blobs:home

tellraw @a[tag=debugSettingsThread] {text:"[BLOBS-SETTINGS] ",color:"dark_purple",bold:1b,extra:[{text:"A player just got beta'd",color:"gray",italic:1b,bold:0b}]}

function blobs:handlers/get_functions/get_settings