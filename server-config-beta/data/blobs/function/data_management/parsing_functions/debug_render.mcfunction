execute if data entity @s data.debug{debug_main_thread:0b} run data modify entity @s data.render_data.debug.debug_main_thread set value "red"
execute if data entity @s data.debug{debug_main_thread:1b} run data modify entity @s data.render_data.debug.debug_main_thread set value "green"
execute if data entity @s data.debug{debug_warn_thread:0b} run data modify entity @s data.render_data.debug.debug_warn_thread set value "red"
execute if data entity @s data.debug{debug_warn_thread:1b} run data modify entity @s data.render_data.debug.debug_warn_thread set value "green"
execute if data entity @s data.debug{debug_data_thread:0b} run data modify entity @s data.render_data.debug.debug_data_thread set value "red"
execute if data entity @s data.debug{debug_data_thread:1b} run data modify entity @s data.render_data.debug.debug_data_thread set value "green"
execute if data entity @s data.debug{debug_render_thread:0b} run data modify entity @s data.render_data.debug.debug_render_thread set value "red"
execute if data entity @s data.debug{debug_render_thread:1b} run data modify entity @s data.render_data.debug.debug_render_thread set value "green"
execute if data entity @s data.debug{debug_handler_thread:0b} run data modify entity @s data.render_data.debug.debug_handler_thread set value "red"
execute if data entity @s data.debug{debug_handler_thread:1b} run data modify entity @s data.render_data.debug.debug_handler_thread set value "green"
execute if data entity @s data.debug{debug_settings_thread:0b} run data modify entity @s data.render_data.debug.debug_settings_thread set value "red"
execute if data entity @s data.debug{debug_settings_thread:1b} run data modify entity @s data.render_data.debug.debug_settings_thread set value "green"
execute if data entity @s data.debug{debug_api_thread:0b} run data modify entity @s data.render_data.debug.debug_api_thread set value "red"
execute if data entity @s data.debug{debug_api_thread:1b} run data modify entity @s data.render_data.debug.debug_api_thread set value "green"
execute if data entity @s data.debug{debug_parsing_thread:0b} run data modify entity @s data.render_data.debug.debug_parsing_thread set value "red"
execute if data entity @s data.debug{debug_parsing_thread:1b} run data modify entity @s data.render_data.debug.debug_parsing_thread set value "green"
execute if data entity @s data.debug{debug_custom_features_thread:0b} run data modify entity @s data.render_data.debug.debug_custom_features_thread set value "red"
execute if data entity @s data.debug{debug_custom_features_thread:1b} run data modify entity @s data.render_data.debug.debug_custom_features_thread set value "green"

tellraw @a[tag=debugParsingThread] {text:"[BLOBS-PARSING] ",color:"dark_purple",bold:1b,extra:[{text:"Parsed Debug Settings to Rendering Data",color:"gray",italic:1b,bold:0b}]}

scoreboard players reset @s debug
scoreboard players enable @s debug

advancement revoke @s only blobs:settings/debug
advancement revoke @s only blobs:settings/debug_apply

function blobs:handlers/get_functions/get_debug_renderers