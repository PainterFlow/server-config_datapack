## <== Tags & Teams ==>

## <== Scoreboards ==>

# <-- Essential Scoreboards -->

scoreboard objectives add extensionCount dummy
scoreboard objectives add firstPlayerJoins dummy
scoreboard objectives add input dummy

scoreboard players set #_ firstPlayerJoins 0

scoreboard objectives add blob trigger
scoreboard players enable @a blob

## <== Run Functions ==>

function blobs:__main/global_storage
function blobs:__main/__register_default