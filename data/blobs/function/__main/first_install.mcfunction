## <== Tags & Teams ==>

## <== Scoreboards ==>

# <-- Essential Scoreboards -->

scoreboard objectives add extensionCount dummy
scoreboard objectives add firstPlayerJoins dummy
scoreboard objectives add input dummy

scoreboard players set #_ firstPlayerJoins 0

scoreboard objectives add blob trigger
scoreboard players enable @a blob

# <-- Triggers -->

scoreboard objectives add debug trigger
scoreboard players enable @a debug

# <-- Player Settings Scoreboard -->

scoreboard objectives add user_Ads dummy
scoreboard objectives add user_PartyNotifications dummy
scoreboard objectives add user_ResetNotifications dummy
scoreboard objectives add user_ShowTowerResetTimer dummy
scoreboard objectives add user_MuteCustomSoundEffects dummy

# <-- Global Settings Scoreboard -->

scoreboard objectives add global_AllowParties dummy
scoreboard objectives add global_PartyPermissions dummy
scoreboard objectives add global_AfterJoining dummy
scoreboard objectives add global_TowerLives dummy
scoreboard objectives add global_AFKkicking dummy
scoreboard objectives add global_TowerTimer dummy
scoreboard objectives add global_MaxTowers dummy

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



## <== Other ==>

tellraw @a[tag=debugMainThread] {text:"[BLOBS-MAIN] ",color:"dark_purple",bold:1b,extra:[{text:"Installed Datapack",color:"gray",italic:1b,bold:0b}]}

## <== Run Functions ==>

function blobs:__main/global_storage
function blobs:__main/__register_default