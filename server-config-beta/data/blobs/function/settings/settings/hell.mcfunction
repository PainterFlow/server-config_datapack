execute if data entity @s equipment.saddle.components."minecraft:custom_data".settings{hell:"Yes"} as @s run effect give @s blindness infinite 255 true
execute if data entity @s equipment.saddle.components."minecraft:custom_data".settings{hell:"Yes"} as @s run effect give @s nausea infinite 255 true
execute if data entity @s equipment.saddle.components."minecraft:custom_data".settings{hell:"No"} as @s run effect clear @s blindness
execute if data entity @s equipment.saddle.components."minecraft:custom_data".settings{hell:"No"} as @s run effect clear @s nausea