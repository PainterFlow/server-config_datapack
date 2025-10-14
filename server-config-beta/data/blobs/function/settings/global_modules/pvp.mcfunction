execute if data entity @s data.setting_modules{pvp:1b} as @s run gamerule pvp true
execute if data entity @s data.setting_modules{pvp:1b} as @s run effect clear @a resistance

execute if data entity @s data.setting_modules{pvp:0b} as @s run gamerule pvp false
execute if data entity @s data.setting_modules{pvp:0b} as @s run effect give @a resistance infinite 255 true

tellraw @a[tag=Debug] {text:"[BLOBS-SETTINGS-GLOBAL] ",color:"dark_purple",bold:1b,extra:[{text:"Toggled PVP",color:"gray",italic:1b,bold:0b}]}