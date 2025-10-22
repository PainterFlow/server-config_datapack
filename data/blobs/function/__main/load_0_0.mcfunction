tp @s 0 63 0
effect give @s resistance 60 4 true
effect give @s fire_resistance 1000 255 true
effect give @s water_breathing 1000 255 true
effect give @s blindness 60 255 true

execute unless predicate blobs:__main/spawn_check run summon mannequin 0 63 0 {Tags:[spawnCheck],immovable:1b,Invulnerable:1b,Glowing:1b,NoGravity:1b}
execute unless predicate blobs:__main/spawn_check run scoreboard players set #tp firstPlayerJoins 1