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

scoreboard objectives add ui trigger
scoreboard players enable @a ui

scoreboard objectives add music trigger
scoreboard players enable @a music

scoreboard objectives add render_thread trigger
scoreboard players enable @a render_thread

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

# <-- Debug Tags & Scoreboard -->

tag add add debugMainThread
tag add add debugWarnThread
tag add add debugDataThread
tag add add debugRenderThread
tag add add debugHandlerThread
tag add add debugSettingsThread
tag add add debugAPI_Thread
tag add add debugParsingThread
tag add add debugCustomFeaturesThread

scoreboard objectives add debugMainThread dummy
scoreboard objectives add debugWarnThread dummy
scoreboard objectives add debugDataThread dummy
scoreboard objectives add debugRenderThread dummy
scoreboard objectives add debugHandlerThread dummy
scoreboard objectives add debugSettingsThread dummy
scoreboard objectives add debugAPI_Thread dummy
scoreboard objectives add debugParsingThread dummy
scoreboard objectives add debugCustomFeaturesThread dummy



forceload add 0 0 0 0