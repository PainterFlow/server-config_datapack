execute as @e if items entity @s player.cursor saddle if predicate blobs:storage/storage run item replace entity @s player.cursor with air
execute as @e if items entity @s weapon.mainhand saddle if predicate blobs:storage/storage run item replace entity @s weapon.mainhand with air
execute as @e if items entity @s weapon.offhand saddle if predicate blobs:storage/storage run item replace entity @s weapon.offhand with air

execute as @e if items entity @s player.cursor saddle if predicate blobs:storage/global_storage run item replace entity @s player.cursor with air
execute as @e if items entity @s weapon.mainhand saddle if predicate blobs:storage/global_storage run item replace entity @s weapon.mainhand with air
execute as @e if items entity @s weapon.offhand saddle if predicate blobs:storage/global_storage run item replace entity @s weapon.offhand with air