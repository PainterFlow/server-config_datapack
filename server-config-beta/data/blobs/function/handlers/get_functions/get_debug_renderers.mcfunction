scoreboard players reset @s blob
scoreboard players enable @s blob

advancement revoke @s only blobs:get_settings
advancement revoke @s only blobs:blob

function blobs:render_thread/render/debug with entity @s data.render_data.debug

tellraw @a[tag=Debug] {text:"[BLOBS-SETTINGS] ",color:"dark_purple",bold:1b,extra:[{text:"Getting Settings",color:"gray",italic:1b,bold:0b}]}