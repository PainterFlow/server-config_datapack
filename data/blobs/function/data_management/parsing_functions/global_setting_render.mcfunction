tellraw @a[tag=debugParsingThread] {text:"[BLOBS-PARSING] ",color:"dark_purple",bold:1b,extra:[{text:"Parsed Global Settings to Rendering Data",color:"gray",italic:1b,bold:0b}]}

scoreboard players reset @s blob
scoreboard players enable @s blob

advancement revoke @s only blobs:settings/global_apply_settings
advancement revoke @s only blobs:settings/global_settings

function blobs:handlers/get_functions/get_global_settings