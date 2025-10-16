scoreboard players reset @s locator_bar
execute if data entity @s data.setting_modules{locator_bar:0b} run scoreboard players set @s locator_bar 1
execute if data entity @s data.setting_modules{locator_bar:1b} run scoreboard players set @s locator_bar 2
execute if score @s locator_bar matches 1 as @s run data modify entity @s data.setting_modules.locator_bar set value 1b
execute if score @s locator_bar matches 2 as @s run data modify entity @s data.setting_modules.locator_bar set value 0b
scoreboard players reset @s locator_bar

execute if data entity @s data.setting_modules{locator_bar:1b} as @s run attribute @s waypoint_transmit_range base set 0
execute if data entity @s data.setting_modules{locator_bar:0b} as @s run attribute @s waypoint_transmit_range base reset

tellraw @a[tag=debugSettingsThread] {text:"[BLOBS-SETTINGS] ",color:"dark_purple",bold:1b,extra:[{text:"Player Made himself Visible/Invisible on the Locator Bar",color:"gray",italic:1b,bold:0b}]}

function blobs:data_management/parsing_functions/setting_render