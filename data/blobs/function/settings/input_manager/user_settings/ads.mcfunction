scoreboard players reset @s input

# convert input to scoreboard
execute if data entity @s data.settings{ads:1b} run scoreboard players set @s input 1
execute if data entity @s data.settings{ads:0b} run scoreboard players set @s input 0

# modify data
execute if score @s input matches 1 run data modify entity @s data.settings.ads set value 0b
execute if score @s input matches 0 run data modify entity @s data.settings.ads set value 1b
execute if score @s input matches 1 run data modify entity @s data.render_data.settings.ads set value "blobs.dialogs.inputs.hide"
execute if score @s input matches 0 run data modify entity @s data.render_data.settings.ads set value "blobs.dialogs.inputs.show"

# debug msg
execute if score @s input matches 1 run function blobs:_debug/msgs/complex {tag:"debugSettingsThread",thread:"blobs.chat.debug.threads.settings",msg1:"blobs.internal.dialogs.user_settings",msg2:"blobs.chat.debug.threads.settings.changed_setting",msg3:"blobs.internal.dialogs.user_settings.ads",msg4:"blobs.chat.other.intersection.to",msg5:"blobs.internal.dialogs.inputs.false",msg6:"blobs.chat.other.nothing"}
execute if score @s input matches 0 run function blobs:_debug/msgs/complex {tag:"debugSettingsThread",thread:"blobs.chat.debug.threads.settings",msg1:"blobs.internal.dialogs.user_settings",msg2:"blobs.chat.debug.threads.settings.changed_setting",msg3:"blobs.internal.dialogs.user_settings.ads",msg4:"blobs.chat.other.intersection.to",msg5:"blobs.internal.dialogs.inputs.true",msg6:"blobs.chat.other.nothing"}

scoreboard players reset @s input

function blobs:settings/modules/user_modules/ads
function blobs:handlers/get_functions/get_settings