execute if data entity @n[tag=Global_Storage] data.setting_modules{baby_mode:0b} run data modify entity @n[tag=Global_Storage] data.render_data.setting_modules.baby_mode set value "Disabled"
execute if data entity @n[tag=Global_Storage] data.setting_modules{baby_mode:1b} run data modify entity @n[tag=Global_Storage] data.render_data.setting_modules.baby_mode set value "Enabled"
execute if data entity @n[tag=Global_Storage] data.setting_modules{disable_player_interactions:0b} run data modify entity @n[tag=Global_Storage] data.render_data.setting_modules.disable_player_interactions set value "Enabled"
execute if data entity @n[tag=Global_Storage] data.setting_modules{disable_player_interactions:1b} run data modify entity @n[tag=Global_Storage] data.render_data.setting_modules.disable_player_interactions set value "Disabled"
execute if data entity @n[tag=Global_Storage] data.setting_modules{pvp:0b} run data modify entity @n[tag=Global_Storage] data.render_data.setting_modules.pvp set value "Disabled"
execute if data entity @n[tag=Global_Storage] data.setting_modules{pvp:1b} run data modify entity @n[tag=Global_Storage] data.render_data.setting_modules.pvp set value "Enabled"

execute as @s run function blobs:handlers/get_functions/get_global_settings with entity @n[tag=Global_Storage] data.render_data.setting_modules