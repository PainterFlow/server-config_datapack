scoreboard players reset @s pvp
execute if data entity @n[tag=Global_Storage] data.setting_modules{pvp:0b} run scoreboard players set @s pvp 1
execute if data entity @n[tag=Global_Storage] data.setting_modules{pvp:1b} run scoreboard players set @s pvp 2
execute if score @s pvp matches 1 as @n[tag=Global_Storage] run data modify entity @n[tag=Global_Storage] data.setting_modules.pvp set value 1b
execute if score @s pvp matches 2 as @n[tag=Global_Storage] run data modify entity @n[tag=Global_Storage] data.setting_modules.pvp set value 0b
scoreboard players reset @s pvp

execute if data entity @n[tag=Global_Storage] data.setting_modules{pvp:1b} as @s run gamerule pvp true
execute if data entity @n[tag=Global_Storage] data.setting_modules{pvp:1b} as @s run effect clear @a resistance

execute if data entity @n[tag=Global_Storage] data.setting_modules{pvp:0b} as @s run gamerule pvp false
execute if data entity @n[tag=Global_Storage] data.setting_modules{pvp:0b} as @s run effect give @a resistance infinite 255 true

tellraw @a[tag=debugSettingsThread] {text:"[BLOBS-SETTINGS-GLOBAL] ",color:"dark_purple",bold:1b,extra:[{text:"Toggled PVP",color:"gray",italic:1b,bold:0b}]}

function blobs:data_management/parsing_functions/global_setting_render