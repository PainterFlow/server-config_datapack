tellraw @a[tag=Debug] {text:"[BLOBS-MAIN] ",color:"dark_purple",bold:1b,extra:[{text:"Loaded Data Pack",color:"gray",italic:1b,bold:0b}]}
execute unless entity @e[tag=Global_Storage] run function blobs:data_management/global_storage
forceload add 0 0 0 0

tag add add Debug
tag add add AFK
team add afk
team modify afk collisionRule never
team modify afk deathMessageVisibility always
team modify afk color aqua
team modify afk nametagVisibility never
team modify afk prefix {text:"AFK ",color:"aqua",extra:[{text:"| ",color:"dark_gray"}]}
scoreboard objectives add spawn trigger
scoreboard players enable @a spawn
scoreboard objectives add blob trigger
scoreboard players enable @a blob
scoreboard objectives add arrowCount dummy
scoreboard objectives add explosiveCount dummy
scoreboard objectives add unique_id dummy
scoreboard objectives add unique_id_already_exists dummy

scoreboard objectives add arrowCountLimit dummy
scoreboard objectives add explosiveCountLimit dummy
scoreboard players set #limit arrowCountLimit 700
scoreboard players set #limit explosiveCountLimit 500

scoreboard objectives add fullbright dummy
scoreboard objectives add locator_bar dummy
scoreboard objectives add hell dummy
scoreboard objectives add debug dummy
scoreboard players set #def fullbright 1001
scoreboard players set #def locator_bar 1002
scoreboard players set #def hell 1003
scoreboard players set #def debug 1004

scoreboard objectives add spawn dummy
scoreboard objectives add baby_mode dummy
scoreboard objectives add pvp dummy
scoreboard objectives add disablePlayerInteractions dummy
scoreboard players set #def spawn 10001
scoreboard players set #def baby_mode 10002
scoreboard players set #def pvp 10003
scoreboard players set #def disablePlayerInteractions 10004

scoreboard objectives add toggleCheck dummy

execute unless data storage blob exists:1b run data merge storage blob {Global_Storage:{},Players:[],exists:1b}
data merge storage minecraft:blob_temp {unique_id:{id:-1}}

execute as @a run function blobs:handlers/update
function blobs:lag/loop