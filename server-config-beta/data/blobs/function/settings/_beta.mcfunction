scoreboard players reset @s blob
scoreboard players reset @s home
scoreboard players enable @s blob
scoreboard players enable @s home

advancement revoke @s only blobs:home

tellraw @a[tag=debugSettingsThread] {text:"[BLOBS-SETTINGS] ",color:"dark_purple",bold:1b,extra:[{text:"A player just got beta'd",color:"gray",italic:1b,bold:0b}]}

function blobs:handlers/get_functions/get_settings

# scoreboard players reset @s showHomesOnLocatorBar
# execute if data entity @s data.setting_modules{show_homes_on_locator_bar:0b} run scoreboard players set @s showHomesOnLocatorBar 1
# execute if data entity @s data.setting_modules{show_homes_on_locator_bar:1b} run scoreboard players set @s showHomesOnLocatorBar 2
# execute if score @s showHomesOnLocatorBar matches 1 as @s run data modify entity @s data.setting_modules.show_homes_on_locator_bar set value 1b
# execute if score @s showHomesOnLocatorBar matches 2 as @s run data modify entity @s data.setting_modules.show_homes_on_locator_bar set value 0b
# scoreboard players reset @s showHomesOnLocatorBar