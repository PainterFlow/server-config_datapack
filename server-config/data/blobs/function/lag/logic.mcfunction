execute if score #count arrowCount >= #limit arrowCountLimit run kill @e[type=arrow]
execute if score #count explosiveCount >= #limit explosiveCountLimit run kill @e[type=tnt]
execute if score #count itemCount >= #limit itemCountLimit run kill @e[type=item]
execute as @e[type=wither_skull] at @s unless entity @e[type=wither,distance=..45] run kill @s
execute as @e[type=wind_charge] at @s unless entity @a[distance=..45] run kill @s
execute as @e[type=breeze_wind_charge] at @s unless entity @a[distance=..45] run kill @s