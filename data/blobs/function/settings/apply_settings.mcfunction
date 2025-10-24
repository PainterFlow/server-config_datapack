advancement revoke @s only blobs:settings/blob

execute as @s if score @s blob matches 1001 run function blobs:settings/modules/fullbright
execute as @s if score @s blob matches 1002 run function blobs:settings/modules/locator_bar
execute as @s if score @s blob matches 1003 run function blobs:settings/modules/afk

tellraw @a[tag=debugSettingsThread] {text:"[BLOBS-SETTINGS] ",color:"dark_purple",bold:1b,extra:[{text:"Setting Changed",color:"gray",italic:1b,bold:0b}]}