scoreboard players set .Global unique_id -1
execute as @a run scoreboard players operation @s unique_id = .Global unique_id
data modify storage blob Players set value []
advancement revoke @a only blobs:new_player