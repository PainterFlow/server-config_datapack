scoreboard players reset @s baby_mode
execute if data entity @n[tag=Global_Storage] data.setting_modules{baby_mode:0b} run scoreboard players set @s baby_mode 1
execute if data entity @n[tag=Global_Storage] data.setting_modules{baby_mode:1b} run scoreboard players set @s baby_mode 2
execute if score @s baby_mode matches 1 as @n[tag=Global_Storage] run data modify entity @n[tag=Global_Storage] data.setting_modules.baby_mode set value 1b
execute if score @s baby_mode matches 2 as @n[tag=Global_Storage] run data modify entity @n[tag=Global_Storage] data.setting_modules.baby_mode set value 0b
scoreboard players reset @s baby_mode

execute if data entity @n[tag=Global_Storage] data.setting_modules{baby_mode:1b} as @s run gamerule drowningDamage false
execute if data entity @n[tag=Global_Storage] data.setting_modules{baby_mode:1b} as @s run gamerule fireDamage false
execute if data entity @n[tag=Global_Storage] data.setting_modules{baby_mode:1b} as @s run gamerule fallDamage false
execute if data entity @n[tag=Global_Storage] data.setting_modules{baby_mode:1b} as @s run gamerule freezeDamage false
execute if data entity @n[tag=Global_Storage] data.setting_modules{baby_mode:1b} as @s run gamerule keepInventory true
execute if data entity @n[tag=Global_Storage] data.setting_modules{baby_mode:1b} as @s run gamerule freezeDamage false

execute if data entity @n[tag=Global_Storage] data.setting_modules{baby_mode:0b} as @s run gamerule drowningDamage true
execute if data entity @n[tag=Global_Storage] data.setting_modules{baby_mode:0b} as @s run gamerule fireDamage true
execute if data entity @n[tag=Global_Storage] data.setting_modules{baby_mode:0b} as @s run gamerule fallDamage true
execute if data entity @n[tag=Global_Storage] data.setting_modules{baby_mode:0b} as @s run gamerule freezeDamage true
execute if data entity @n[tag=Global_Storage] data.setting_modules{baby_mode:0b} as @s run gamerule keepInventory false
execute if data entity @n[tag=Global_Storage] data.setting_modules{baby_mode:0b} as @s run gamerule freezeDamage true

tellraw @a[tag=debugSettingsThread] {text:"[BLOBS-SETTINGS-GLOBAL] ",color:"dark_purple",bold:1b,extra:[{text:"Toggled Baby Mode",color:"gray",italic:1b,bold:0b}]}

function blobs:data_management/parsing_functions/global_setting_render