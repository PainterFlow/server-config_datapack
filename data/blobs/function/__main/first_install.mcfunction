## <== Essentials ==>

scoreboard objectives add extensionCount dummy
scoreboard objectives add firstPlayerJoins dummy

scoreboard players set #_ firstPlayerJoins 0

scoreboard objectives add blob trigger
scoreboard players enable @a blob

scoreboard objectives add id dummy
scoreboard players set #counter id 1

## <== Settings ==>

scoreboard objectives add input dummy

scoreboard objectives add exit trigger
scoreboard players enable @a exit

# <-- User Settings -->

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

# <-- Global Config -->

scoreboard objectives add global_general trigger
scoreboard objectives add global_permissions trigger
scoreboard objectives add global_tower_gen trigger
scoreboard objectives add global_tower trigger
scoreboard objectives add global_actions trigger

scoreboard players enable @a global_general
scoreboard players enable @a global_permissions
scoreboard players enable @a global_tower_gen
scoreboard players enable @a global_tower
scoreboard players enable @a global_actions

## <== Permissions ==>

team add _blob_default Default
team modify _blob_default collisionRule always
team modify _blob_default color white
team modify _blob_default deathMessageVisibility always
team modify _blob_default friendlyFire true
team modify _blob_default nametagVisibility always
team modify _blob_default prefix ""
team modify _blob_default seeFriendlyInvisibles false
team modify _blob_default suffix ""

team add _blob_owner Default
team modify _blob_owner collisionRule always
team modify _blob_owner color red
team modify _blob_owner deathMessageVisibility always
team modify _blob_owner friendlyFire true
team modify _blob_owner nametagVisibility always
team modify _blob_owner prefix ""
team modify _blob_owner seeFriendlyInvisibles false
team modify _blob_owner suffix ""

team add _blob_staff Default
team modify _blob_staff collisionRule always
team modify _blob_staff color red
team modify _blob_staff deathMessageVisibility always
team modify _blob_staff friendlyFire true
team modify _blob_staff nametagVisibility always
team modify _blob_staff prefix ""
team modify _blob_staff seeFriendlyInvisibles false
team modify _blob_staff suffix ""

team add _blob_dev Default
team modify _blob_dev collisionRule always
team modify _blob_dev color aqua
team modify _blob_dev deathMessageVisibility always
team modify _blob_dev friendlyFire true
team modify _blob_dev nametagVisibility always
team modify _blob_dev prefix {text:"Official Dev",color:"light_purple",extra:[{text:" | ",color:gray}]}
team modify _blob_dev seeFriendlyInvisibles true
team modify _blob_dev suffix ""

## <== Run Functions ==>

# <-- Impulse -->

function blobs:__main/global_storage
function blobs:__main/__register_default

# <-- Repeating -->

function blobs:__main/player_detector/loop with entity @n[tag=Global_Storage] data.players[-1].id