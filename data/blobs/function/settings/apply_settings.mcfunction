advancement revoke @s only blobs:settings/blob

execute as @s if score @s blob matches 1001 run

tellraw @a[tag=debugSettingsThread] {text:"[BLOBS-SETTINGS] ",color:"dark_purple",bold:1b,extra:[{text:"Setting Changed",color:"gray",italic:1b,bold:0b}]}