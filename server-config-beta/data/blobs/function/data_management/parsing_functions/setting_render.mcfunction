execute if data entity @s data.setting_modules{fullbright:0b} run data modify entity @s data.render_data.setting_modules.fullbright set value "Off"
execute if data entity @s data.setting_modules{fullbright:1b} run data modify entity @s data.render_data.setting_modules.fullbright set value "On"
execute if data entity @s data.setting_modules{locator_bar:0b} run data modify entity @s data.render_data.setting_modules.locator_bar set value "visible"
execute if data entity @s data.setting_modules{locator_bar:1b} run data modify entity @s data.render_data.setting_modules.locator_bar set value "hidden"
execute if data entity @s data.setting_modules{afk:0b} run data modify entity @s data.render_data.setting_modules.afk set value "Not AFK"
execute if data entity @s data.setting_modules{afk:1b} run data modify entity @s data.render_data.setting_modules.afk set value "AFK"
execute if data entity @s data.setting_modules{show_homes_on_locator_bar:0b} run data modify entity @s data.render_data.setting_modules.show_homes_on_locator_bar set value "hidden"
execute if data entity @s data.setting_modules{show_homes_on_locator_bar:1b} run data modify entity @s data.render_data.setting_modules.show_homes_on_locator_bar set value "visible"

tellraw @a[tag=debugParsingThread] {text:"[BLOBS-PARSING] ",color:"dark_purple",bold:1b,extra:[{text:"Parsed Global Settings to Rendering Data",color:"gray",italic:1b,bold:0b}]}

scoreboard players reset @s blob
scoreboard players enable @s blob

advancement revoke @s only blobs:apply_settings

function blobs:handlers/get_functions/get_settings