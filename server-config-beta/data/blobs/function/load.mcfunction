execute unless entity @e[tag=Global_Storage] run function blobs:data_management/global_storage
forceload add 0 0 0 0


## <== Tags & Teams ==>

tag add add AFK
team add afk
team modify afk collisionRule never
team modify afk deathMessageVisibility always
team modify afk color aqua
team modify afk nametagVisibility never
team modify afk prefix {text:"AFK ",color:"aqua",extra:[{text:"| ",color:"dark_gray"}]}


## <== Scoreboards ==>


# <-- Essential Scoreboards -->

scoreboard objectives add blob trigger
scoreboard players enable @a blob

scoreboard objectives add debug trigger
scoreboard players enable @a debug

scoreboard objectives add spawn trigger
scoreboard players enable @a spawn

scoreboard objectives add home trigger
scoreboard players enable @a home

scoreboard objectives add exit trigger
scoreboard players enable @a exit

# <-- Performance Fixes Scoreboards -->

scoreboard objectives add arrowCount dummy
scoreboard objectives add explosiveCount dummy
scoreboard objectives add arrowCountLimit dummy
scoreboard objectives add explosiveCountLimit dummy
scoreboard players set #limit arrowCountLimit 700
scoreboard players set #limit explosiveCountLimit 500


# <-- Player Settings Scoreboard -->

scoreboard objectives add fullbright dummy
scoreboard objectives add locator_bar dummy
scoreboard objectives add afk dummy
scoreboard objectives add showHomesOnLocatorBar dummy

# <-- Global Settings Scoreboard -->

scoreboard objectives add set_spawn dummy
scoreboard objectives add baby_mode dummy
scoreboard objectives add pvp dummy
scoreboard objectives add disablePlayerInteractions dummy

# <-- Debug Tags -->

tag add add debugMainThread
tag add add debugWarnThread
tag add add debugDataThread
tag add add debugRenderThread
tag add add debugHandlerThread
tag add add debugSettingsThread
tag add add debugPermissionsThread
tag add add debugAPI_Thread
tag add add debugParsingThread
tag add add debugCustomFeaturesThread

## <== Update & Other ==>

data merge storage minecraft:blob_temp {unique_id:{id:-1}}
execute as @a run function blobs:handlers/update

function blobs:lag/loop


tellraw @a[tag=debugMainThread] {text:"[BLOBS-MAIN] ",color:"dark_purple",bold:1b,extra:[{text:"Loaded Data Pack",color:"gray",italic:1b,bold:0b}]}