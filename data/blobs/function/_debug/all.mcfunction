execute unless data entity @s data{found_detector:1b} run function blobs:api/detectors/player_detector/join with entity @s data
execute as @s run function blobs:api/detectors/player_detector/_server_loop with entity @s data
execute as @a run function blobs:api/detectors/player_detector/_client_loop with entity @s data