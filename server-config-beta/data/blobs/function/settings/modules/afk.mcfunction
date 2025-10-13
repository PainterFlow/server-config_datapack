item modify entity @s saddle blobs:storage/afk
execute if data entity @s equipment.saddle.components."minecraft:custom_data".blob.setting_modules{afk:"AFK"} as @s run tag @s add AFK
execute if data entity @s equipment.saddle.components."minecraft:custom_data".blob.setting_modules{afk:"AFK"} as @s run team join afk

execute if data entity @s equipment.saddle.components."minecraft:custom_data".blob.setting_modules{afk:"Not AFK"} as @s run tag @s remove AFK
execute if data entity @s equipment.saddle.components."minecraft:custom_data".blob.setting_modules{afk:"Not AFK"} as @s run team leave @s