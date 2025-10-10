execute if entity @e[type=marker,tag=Spawn] as @n[tag=Spawn,type=marker] run tp @s ~ ~ ~
execute unless entity @e[type=marker,tag=Spawn] as @s run summon marker ~ ~ ~ {Tags:[Spawn]}

tellraw @a[tag=Debug] {text:"[BLOBS-SETTINGS-GLOBAL] ",color:"dark_purple",bold:1b,extra:[{text:"Moved Spawn",color:"gray",italic:1b,bold:0b}]}