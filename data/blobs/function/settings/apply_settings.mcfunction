advancement revoke @s only blobs:settings/blob

execute as @s if score @s blob matches 1001 run function blobs:settings/input_manager/user_settings/party_notifications
execute as @s if score @s blob matches 1002 run function blobs:settings/input_manager/user_settings/tower_reset_notifications
execute as @s if score @s blob matches 1003 run function blobs:settings/input_manager/user_settings/tower_reset_timer
execute as @s if score @s blob matches 1004 run function blobs:settings/input_manager/user_settings/custom_sounds
execute as @s if score @s blob matches 1005 run function blobs:settings/input_manager/user_settings/ads

advancement revoke @s only blobs:settings/apply_settings
scoreboard players reset @s blob
scoreboard players enable @s blob

function blobs:_debug/msgs/1_variable {tag:"debugSettingsThread",thread:"blobs.chat.debug.threads.settings",msg:"blobs.chat.debug.threads.settings.applying",variable1:"blobs.internal.dialogs.user_settings"}