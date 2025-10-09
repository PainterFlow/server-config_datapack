execute if data entity @s equipment.saddle.components."minecraft:custom_data".settings{locator_bar:"Visible"} as @s run attribute @s waypoint_transmit_range base set 0
execute if data entity @s equipment.saddle.components."minecraft:custom_data".settings{locator_bar:"Hidden"} as @s run attribute @s waypoint_transmit_range base reset
item modify entity @s saddle blobs:settings/locator_bar

$tellraw @a[tag=Debug] {text:"[BLOBS-SETTINGS] ",color:"dark_purple",bold:1b,extra:[{text:"Player Made himself $(locator_bar) on the Locator Bar",color:"gray",italic:1b,bold:0b}]}