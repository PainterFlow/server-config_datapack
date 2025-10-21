scoreboard players reset @s fullbright
execute if data entity @s data.setting_modules{fullbright:0b} run scoreboard players set @s fullbright 1
execute if data entity @s data.setting_modules{fullbright:1b} run scoreboard players set @s fullbright 2
execute if score @s fullbright matches 1 as @s run data modify entity @s data.setting_modules.fullbright set value 1b
execute if score @s fullbright matches 2 as @s run data modify entity @s data.setting_modules.fullbright set value 0b
scoreboard players reset @s fullbright

execute if data entity @s data.setting_modules{fullbright:1b} as @s run effect give @s night_vision infinite 255 true
execute if data entity @s data.setting_modules{fullbright:0b} as @s run effect clear @s night_vision

tellraw @a[tag=debugSettingsThread] {text:"[BLOBS-SETTINGS] ",color:"dark_purple",bold:1b,extra:[{text:"Player toggled Fullbright",color:"gray",italic:1b,bold:0b}]}

function blobs:data_management/parsing_functions/setting_render