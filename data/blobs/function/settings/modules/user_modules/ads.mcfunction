execute if data entity @s data.settings{ads:1b} run tag @s add display_ads
execute if data entity @s data.settings{ads:0b} run tag @s remove display_ads

function blobs:_debug/msgs/2_variables {tag:"debugSettingsThread",thread:"blobs.chat.debug.threads.settings",msg:"blobs.chat.debug.threads.settings.running_module",variable1:"blobs.internal.dialogs.user_settings.ads",intersection:"blobs.other.intersection.from",variable2:"blobs.internal.dialogs.user_settings"}