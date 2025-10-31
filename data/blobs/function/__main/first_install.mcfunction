## <== Essentials ==>

scoreboard objectives add extensionCount dummy
scoreboard objectives add firstPlayerJoins dummy

scoreboard players set #_ firstPlayerJoins 0

scoreboard objectives add blob trigger
scoreboard players enable @a blob


## <== Settings ==>

scoreboard objectives add input dummy

scoreboard objectives add settings_user trigger
scoreboard objectives add settings_privacy trigger
scoreboard objectives add settings_appearance trigger
scoreboard objectives add settings_accessibility trigger
scoreboard objectives add settings_notifications trigger
scoreboard objectives add settings_advanced trigger

scoreboard players enable @a settings_user
scoreboard players enable @a settings_privacy
scoreboard players enable @a settings_appearance
scoreboard players enable @a settings_accessibility
scoreboard players enable @a settings_notifications
scoreboard players enable @a settings_advanced

## <== Run Functions ==>

function blobs:__main/global_storage
function blobs:__main/__register_default