advancement revoke @s only blobs:settings/debug_apply
advancement revoke @s only blobs:settings/debug

execute as @s if score @s debug matches 10 run function blobs:settings/input_manager/debug_settings/_toggle_all_threads
execute as @s if score @s debug matches 11 run function blobs:settings/input_manager/debug_settings/main_thread
execute as @s if score @s debug matches 12 run function blobs:settings/input_manager/debug_settings/warn_thread
execute as @s if score @s debug matches 13 run function blobs:settings/input_manager/debug_settings/data_thread
execute as @s if score @s debug matches 14 run function blobs:settings/input_manager/debug_settings/ui_thread
execute as @s if score @s debug matches 15 run function blobs:settings/input_manager/debug_settings/settings_thread
execute as @s if score @s debug matches 16 run function blobs:settings/input_manager/debug_settings/api_thread
execute as @s if score @s debug matches 17 run function blobs:settings/input_manager/debug_settings/functions_thread
execute as @s if score @s debug matches 18 run function blobs:settings/input_manager/debug_settings/custom_features_thread
execute as @s if score @s debug matches 19 run function blobs:settings/input_manager/debug_settings/tower_thread

function blobs:_debug/msgs/1_variable {tag:"debugSettingsThread",thread:"blobs.chat.debug.threads.settings",msg:"blobs.chat.debug.threads.settings.applying",variable1:"blobs.internal.dialogs.debug_settings"}