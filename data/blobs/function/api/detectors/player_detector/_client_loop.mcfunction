$execute store success entity @s data.found_detector byte 1 as @e[tag=player_detector] if data entity @s data{id:$(id_comp)}

execute unless data entity @s data{found_detector:1b} run function blobs:api/detectors/player_detector/join with entity @s data