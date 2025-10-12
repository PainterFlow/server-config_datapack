execute as @s run item replace entity @s saddle with saddle 1
$execute as @s run data modify entity @s equipment.saddle.components."minecraft:custom_data".blob.unique_id set value $(unique_id)
$execute as @s run data modify entity @s equipment.saddle.components."minecraft:custom_data".blob.blob set value $(blob)
$execute as @s run data modify entity @s equipment.saddle.components."minecraft:custom_data".blob.version set value $(version)
$execute as @s run data modify entity @s equipment.saddle.components."minecraft:custom_data".blob.secondary_version set value $(secondary_version)
$execute as @s run data modify entity @s equipment.saddle.components."minecraft:custom_data".blob.permissions set value $(permissions)
$execute as @s run data modify entity @s equipment.saddle.components."minecraft:custom_data".blob.setting_modules set value $(setting_modules)

tellraw @a[tag=Debug] {text:"[BLOBS-DATA-SYNC] ",color:"dark_purple",bold:1b,extra:[{text:"Synced Player Storage to Saddle",color:"gray",italic:1b,bold:0b}]}