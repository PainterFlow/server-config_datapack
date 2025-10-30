scoreboard players reset @s input

# convert input to scoreboard
execute if data entity @s data.settings{tower_reset_notifications:1b} run scoreboard players set @s input 1
execute if data entity @s data.settings{tower_reset_notifications:0b} run scoreboard players set @s input 0

# modify data
execute if score @s input matches 1 run data modify entity @s data.settings.tower_reset_notifications set value 0b
execute if score @s input matches 0 run data modify entity @s data.settings.tower_reset_notifications set value 1b
execute if score @s input matches 1 run data modify entity @s data.render_data.settings.tower_reset_notifications set value "blobs.dialogs.inputs.muted"
execute if score @s input matches 0 run data modify entity @s data.render_data.settings.tower_reset_notifications set value "blobs.dialogs.inputs.true"

# debug msg
execute if score @s input matches 1 run function blobs:_debug/msgs/complex {tag:"debugSettingsThread",thread:"blobs.chat.debug.threads.settings",msg1:"blobs.internal.dialogs.user_settings",msg2:"blobs.chat.debug.threads.settings.changed_setting",msg3:"blobs.internal.dialogs.user_settings.tower_reset_notifications",msg4:"blobs.chat.other.intersection.to",msg5:"blobs.internal.dialogs.inputs.false",msg6:"blobs.chat.other.nothing"}
execute if score @s input matches 0 run function blobs:_debug/msgs/complex {tag:"debugSettingsThread",thread:"blobs.chat.debug.threads.settings",msg1:"blobs.internal.dialogs.user_settings",msg2:"blobs.chat.debug.threads.settings.changed_setting",msg3:"blobs.internal.dialogs.user_settings.tower_reset_notifications",msg4:"blobs.chat.other.intersection.to",msg5:"blobs.internal.dialogs.inputs.true",msg6:"blobs.chat.other.nothing"}

scoreboard players reset @s input

function blobs:settings/modules/user_modules/tower_reset_notifications
function blobs:handlers/get_functions/get_settings