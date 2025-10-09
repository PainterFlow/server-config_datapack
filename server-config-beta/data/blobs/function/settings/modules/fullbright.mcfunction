execute if data entity @s equipment.saddle.components."minecraft:custom_data".settings{fullbright:"On"} as @s run effect give @s night_vision infinite 255 true
execute if data entity @s equipment.saddle.components."minecraft:custom_data".settings{fullbright:"Off"} as @s run effect clear @s night_vision
item modify entity @s saddle blobs:settings/fullbright

$tellraw @a[tag=Debug] {text:"[BLOBS-SETTINGS] ",color:"dark_purple",bold:1b,extra:[{text:"Player toggled Fullbright $(fullbright)"}]}