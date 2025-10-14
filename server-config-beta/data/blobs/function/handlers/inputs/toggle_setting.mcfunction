scoreboard players reset @s toggleCheck
$execute if data entity @s data.$(path).$(name){val:$(false)} run scoreboard players set @s toggleCheck 1
$execute if data entity @s data.$(path).$(name){val:$(true)} run scoreboard players set @s toggleCheck 2
$execute if score @s toggleCheck matches 1 run execute if data entity @s data.$(path).$(name){val:$(false)} run data modify entity @s data.$(path).$(name).val set value $(true)
$execute if score @s toggleCheck matches 2 run execute if data entity @s data.$(path).$(name){val:$(true)} run data modify entity @s data.$(path).$(name).val set value $(false)
scoreboard players reset @s toggleCheck