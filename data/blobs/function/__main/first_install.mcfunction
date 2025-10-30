## <== Tags & Teams ==>

## <== Scoreboards ==>

# <-- Essential Scoreboards -->

scoreboard objectives add extensionCount dummy
scoreboard objectives add firstPlayerJoins dummy
scoreboard objectives add input dummy
scoreboard objectives add debug_msgs dummy

scoreboard players set #_ firstPlayerJoins 0

scoreboard objectives add blob trigger
scoreboard players enable @a blob

# <-- Triggers -->

scoreboard objectives add debug trigger
scoreboard players enable @a debug

# <-- Debug Tags & Scoreboard -->

tag add add debugMainThread
tag add add debugWarnThread
tag add add debugDataThread
tag add add debugUI_Thread
tag add add debugSettingsThread
tag add add debugAPI_Thread
tag add add debugFunctionsThread
tag add add debugCustomFeaturesThread
tag add add debugTowerThread


## <== Other ==>

function blobs:_debug/msgs/basic {tag:"debugMainThread",thread:"blobs.chat.debug.threads.main",msg:"blobs.chat.debug.threads.main.first_install"}

## <== Run Functions ==>

function blobs:__main/global_storage
function blobs:__main/__register_default