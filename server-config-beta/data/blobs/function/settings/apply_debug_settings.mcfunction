advancement revoke @s only blobs:debug
advancement revoke @s only blobs:debug_apply

execute as @s if score @s debug matches 10 run function blobs:settings/debug_modules/debug_all_threads
execute as @s if score @s debug matches 11 run function blobs:settings/debug_modules/debug_main_thread
execute as @s if score @s debug matches 12 run function blobs:settings/debug_modules/debug_warn_thread
execute as @s if score @s debug matches 13 run function blobs:settings/debug_modules/debug_data_thread
execute as @s if score @s debug matches 14 run function blobs:settings/debug_modules/debug_render_thread
execute as @s if score @s debug matches 15 run function blobs:settings/debug_modules/debug_handler_thread
execute as @s if score @s debug matches 16 run function blobs:settings/debug_modules/debug_settings_thread
execute as @s if score @s debug matches 17 run function blobs:settings/debug_modules/debug_api_thread
execute as @s if score @s debug matches 18 run function blobs:settings/debug_modules/debug_parsing_thread
execute as @s if score @s debug matches 19 run function blobs:settings/debug_modules/debug_custom_features_thread

tellraw @a[tag=debugSettingsThread] {text:"[BLOBS-SETTINGS-DEBUG] ",color:"dark_purple",bold:1b,extra:[{text:"Debug Setting Changed",color:"gray",italic:1b,bold:0b}]}