execute if data entity @n[tag=Global_Storage] data.setting_modules{baby_mode:0b} run data modify entity @n[tag=Global_Storage] data.render_data.setting_modules.baby_mode set value "Disabled"
execute if data entity @n[tag=Global_Storage] data.setting_modules{baby_mode:1b} run data modify entity @n[tag=Global_Storage] data.render_data.setting_modules.baby_mode set value "Enabled"
execute if data entity @n[tag=Global_Storage] data.setting_modules{disable_player_interactions:0b} run data modify entity @n[tag=Global_Storage] data.render_data.setting_modules.disable_player_interactions set value "Enabled"
execute if data entity @n[tag=Global_Storage] data.setting_modules{disable_player_interactions:1b} run data modify entity @n[tag=Global_Storage] data.render_data.setting_modules.disable_player_interactions set value "Disabled"
execute if data entity @n[tag=Global_Storage] data.setting_modules{pvp:0b} run data modify entity @n[tag=Global_Storage] data.render_data.setting_modules.pvp set value "Disabled"
execute if data entity @n[tag=Global_Storage] data.setting_modules{pvp:1b} run data modify entity @n[tag=Global_Storage] data.render_data.setting_modules.pvp set value "Enabled"

tellraw @a[tag=debugParsingThread] {text:"[BLOBS-PARSING] ",color:"dark_purple",bold:1b,extra:[{text:"Parsed Global Settings to Rendering Data",color:"gray",italic:1b,bold:0b}]}

scoreboard players reset @s blob
scoreboard players enable @s blob

advancement revoke @s only blobs:settings/global_apply_settings

function blobs:handlers/get_functions/get_global_settings