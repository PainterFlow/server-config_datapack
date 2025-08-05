execute unless entity @e[type=#minecraft:arrows,limit=1000] run kill @e[type=#minecraft:arrows]
execute unless entity @e[type=item,limit=1000] run kill @e[type=item]
execute unless entity @e[type=tnt,limit=500] run kill @e[type=tnt]
execute as @e[type=wither_skull] unless entity @e[type=wither,distance=..45] run kill @s
execute as @e[type=wind_charge] unless entity @a[distance=..45] run kill @s
msg @a[team=debug] "executed lagfix"

schedule function blobs:lag/loop 5s