execute if data entity @s data.setting_modules{afk:1b} as @s run tag @s add AFK
execute if data entity @s data.setting_modules{afk:1b} as @s run team join afk

execute if data entity @s data.setting_modules{afk:0b} as @s run tag @s remove AFK
execute if data entity @s data.setting_modules{afk:0b} as @s run team leave @s

tellraw @a[tag=debugSettingsThread] {text:"[BLOBS-SETTINGS] ",color:"dark_purple",bold:1b,extra:[{text:"Player toggled AFK mode",color:"gray",italic:1b,bold:0b}]}

function blobs:data_management/parsing_functions/setting_render