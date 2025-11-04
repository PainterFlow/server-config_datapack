$execute store success entity @s data.found_player byte 1 as @a if score @s id matches $(id_comp)

execute unless data entity @s data{found_player:1b} run function blobs:api/detectors/player_detector/left with entity @s data