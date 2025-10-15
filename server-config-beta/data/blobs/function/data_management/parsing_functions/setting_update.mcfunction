scoreboard players reset @s fullbright
execute if data entity @s data.setting_modules{fullbright:0b} run scoreboard players set @s fullbright 1
execute if data entity @s data.setting_modules{fullbright:1b} run scoreboard players set @s fullbright 2
execute if score @s fullbright matches 1 as @s run data modify entity @s data.setting_modules.fullbright set value 1b
execute if score @s fullbright matches 2 as @s run data modify entity @s data.setting_modules.fullbright set value 0b
scoreboard players reset @s fullbright

scoreboard players reset @s locator_bar
execute if data entity @s data.setting_modules{locator_bar:0b} run scoreboard players set @s locator_bar 1
execute if data entity @s data.setting_modules{locator_bar:1b} run scoreboard players set @s locator_bar 2
execute if score @s locator_bar matches 1 as @s run data modify entity @s data.setting_modules.locator_bar set value 1b
execute if score @s locator_bar matches 2 as @s run data modify entity @s data.setting_modules.locator_bar set value 0b
scoreboard players reset @s locator_bar

tellraw @a[tag=Debug] {text:"[BLOBS-PARSING] ",color:"dark_purple",bold:1b,extra:[{text:"Updated User Settings",color:"gray",italic:1b,bold:0b}]}

execute as @s if score @s blob matches 1001 run function blobs:settings/modules/fullbright
execute as @s if score @s blob matches 1002 run function blobs:settings/modules/locator_bar