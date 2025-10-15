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