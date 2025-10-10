item modify entity @s saddle blobs:settings/global_baby_mode
execute if data entity @s equipment.saddle.components."minecraft:custom_data".global{baby_mode:"Enabled"} as @s run gamerule drowningDamage false
execute if data entity @s equipment.saddle.components."minecraft:custom_data".global{baby_mode:"Enabled"} as @s run gamerule fireDamage false
execute if data entity @s equipment.saddle.components."minecraft:custom_data".global{baby_mode:"Enabled"} as @s run gamerule fallDamage false
execute if data entity @s equipment.saddle.components."minecraft:custom_data".global{baby_mode:"Enabled"} as @s run gamerule freezeDamage false
execute if data entity @s equipment.saddle.components."minecraft:custom_data".global{baby_mode:"Enabled"} as @s run gamerule keepInventory true
execute if data entity @s equipment.saddle.components."minecraft:custom_data".global{baby_mode:"Enabled"} as @s run gamerule freezeDamage false

execute if data entity @s equipment.saddle.components."minecraft:custom_data".global{baby_mode:"Disabled"} as @s run gamerule drowningDamage true
execute if data entity @s equipment.saddle.components."minecraft:custom_data".global{baby_mode:"Disabled"} as @s run gamerule fireDamage true
execute if data entity @s equipment.saddle.components."minecraft:custom_data".global{baby_mode:"Disabled"} as @s run gamerule fallDamage true
execute if data entity @s equipment.saddle.components."minecraft:custom_data".global{baby_mode:"Disabled"} as @s run gamerule freezeDamage true
execute if data entity @s equipment.saddle.components."minecraft:custom_data".global{baby_mode:"Disabled"} as @s run gamerule keepInventory false
execute if data entity @s equipment.saddle.components."minecraft:custom_data".global{baby_mode:"Disabled"} as @s run gamerule freezeDamage true

tellraw @a[tag=Debug] {text:"[BLOBS-SETTINGS-GLOBAL] ",color:"dark_purple",bold:1b,extra:[{text:"Toggled Baby Mode",color:"gray",italic:1b,bold:0b}]}