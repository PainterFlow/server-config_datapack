execute as @e[type=#minecraft:arrows] unless entity @e[type=#minecraft:arrows,limit=1000] run kill @e[type=#minecraft:arrows]
execute as @e[type=item] unless entity @e[type=item,limit=1000] run kill @e[type=item]
execute as @e[type=wither_skull] unless entity @e[type=wither,distance=..100] run kill @s
execute as @e[type=wind_charge] unless entity @a[distance=..150] run kill @s

schedule function blobs:lag/loop 5s