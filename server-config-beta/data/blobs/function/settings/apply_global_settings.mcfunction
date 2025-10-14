advancement revoke @s only blobs:global_apply_settings

execute as @s run function blobs:data_management/parsing_functions/global_setting_update with entity @n[tag=Global_Storage] data.setting_modules

tellraw @a[tag=Debug] {text:"[BLOBS-SETTINGS-GLOBAL] ",color:"dark_purple",bold:1b,extra:[{text:"Global Setting Changed",color:"gray",italic:1b,bold:0b}]}