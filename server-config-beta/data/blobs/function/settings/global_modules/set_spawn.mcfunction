execute store result entity @n[tag=Global_Storage] data.warps.spawn.x double 1 run data get entity @s Pos[0]
execute store result entity @n[tag=Global_Storage] data.warps.spawn.y double 1 run data get entity @s Pos[1]
execute store result entity @n[tag=Global_Storage] data.warps.spawn.z double 1 run data get entity @s Pos[2]

tellraw @a[tag=debugSettingsThread] {text:"[BLOBS-SETTINGS-GLOBAL] ",color:"dark_purple",bold:1b,extra:[{text:"Moved Spawn",color:"gray",italic:1b,bold:0b}]}

function blobs:data_management/parsing_functions/global_setting_render