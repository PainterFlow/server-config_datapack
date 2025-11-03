scoreboard players reset #_ id
$scoreboard players set #_ id $(id)

execute as @a if score @s id = #_ id run data modify entity @n[tag=Global_Storage] data.players insert 0 from entity @n[tag=Global_Storage] data.players[-1]

data remove entity @n[tag=Global_Storage] data.players[-1]

function blobs:__main/player_detector/loop with entity @n[tag=Global_Storage] data.players.id