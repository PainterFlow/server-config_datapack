scoreboard players reset @s spawn
scoreboard players enable @s spawn

advancement revoke @s only blobs:spawn

function blobs:custom_cmd/spawn/tp with entity @n[tag=Global_Storage] data.warps.spawn