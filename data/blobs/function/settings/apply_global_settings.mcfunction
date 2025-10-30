advancement revoke @s only blobs:settings/global_apply_settings

execute if score @s blob matches 10001 as @s run say e

tellraw @a[tag=debugSettingsThread] {text:"[BLOBS-SETTINGS-GLOBAL] ",color:"dark_purple",bold:1b,extra:[{text:"Global Setting Changed",color:"gray",italic:1b,bold:0b}]}

function blobs:_debug/msgs/basic {tag:"debugSettingsThread",thread:"blobs.chat.debug.threads.settings",msg:"blobs.chat.debug.threads.settings.apply_global_setting"}

function blobs:_debug/msgs/1_variable {tag:"debugSettingsThread",thread:"blobs.chat.debug.threads.settings",msg:"blobs.chat.debug.threads.settings.applying",variable1:"blobs.internal.dialogs.global_settings"}