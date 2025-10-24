advancement revoke @s only blobs:settings/global_apply_settings

execute if score @s blob matches 10001 as @s run function blobs:settings/global_modules/set_spawn

tellraw @a[tag=debugSettingsThread] {text:"[BLOBS-SETTINGS-GLOBAL] ",color:"dark_purple",bold:1b,extra:[{text:"Global Setting Changed",color:"gray",italic:1b,bold:0b}]}