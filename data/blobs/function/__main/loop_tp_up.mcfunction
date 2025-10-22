execute as @n[tag=spawnCheck] unless predicate blobs:__main/spawn_check run tp @s ~ ~1 ~
execute as @n[tag=spawnCheck] if predicate blobs:__main/spawn_check run tp @n[type=player] @s
execute as @n[tag=spawnCheck] if predicate blobs:__main/spawn_check run scoreboard players set #_ firstPlayerJoins 1
execute as @n[tag=spawnCheck] if predicate blobs:__main/spawn_check run scoreboard players set #tp firstPlayerJoins 0
execute as @n[tag=spawnCheck] if predicate blobs:__main/spawn_check store result entity @n[tag=Global_Storage] data.warps.spawn.x double 1 run data get entity @s Pos[0]
execute as @n[tag=spawnCheck] if predicate blobs:__main/spawn_check store result entity @n[tag=Global_Storage] data.warps.spawn.y double 1 run data get entity @s Pos[1]
execute as @n[tag=spawnCheck] if predicate blobs:__main/spawn_check store result entity @n[tag=Global_Storage] data.warps.spawn.z double 1 run data get entity @s Pos[2]
execute as @n[tag=spawnCheck] if predicate blobs:__main/spawn_check run kill @s

execute as @n[tag=spawnCheck] unless predicate blobs:__main/spawn_check run tellraw @a[name=PainterFlow11] {text:"Fail Spawn Check"}
execute as @n[tag=spawnCheck] if predicate blobs:__main/spawn_check run tellraw @a[name=PainterFlow11] {text:"Successfull Spawn Check"}