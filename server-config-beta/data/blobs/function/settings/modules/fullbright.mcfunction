execute if data entity @s data.setting_modules{fullbright:1b} as @s run effect give @s night_vision infinite 255 true
execute if data entity @s data.setting_modules{fullbright:0b} as @s run effect clear @s night_vision

tellraw @a[tag=debugSettingsThread] {text:"[BLOBS-SETTINGS] ",color:"dark_purple",bold:1b,extra:[{text:"Player toggled Fullbright",color:"gray",italic:1b,bold:0b}]}

function blobs:data_management/parsing_functions/setting_render