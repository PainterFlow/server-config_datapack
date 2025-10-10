$advancement revoke $(p) only blobs:new_player
$advancement revoke $(p) only blobs:apply_settings
$advancement revoke $(p) only blobs:get_settings
$scoreboard players reset $(p) spawn
$scoreboard players reset $(p) blob
$scoreboard players enable $(p) spawn
$scoreboard players enable $(p) blob

$tellraw @a[tag=Debug] {text:"[BLOBS-DATA] ",color:"dark_purple",bold:1b,extra:[{text:"Reset $(p) Player Data",color:"gray",italic:1b,bold:0b}]}