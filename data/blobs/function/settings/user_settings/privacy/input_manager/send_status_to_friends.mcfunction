scoreboard players reset @s input

# convert input to scoreboard
execute if data entity @s data.settings.privacy{send_status_to_friends:1b} run scoreboard players set @s input 1
execute if data entity @s data.settings.privacy{send_status_to_friends:0b} run scoreboard players set @s input 0

# modify data
execute if score @s input matches 1 run data modify entity @s data.settings.privacy.send_status_to_friends set value 0b
execute if score @s input matches 0 run data modify entity @s data.settings.privacy.send_status_to_friends set value 1b
execute if score @s input matches 1 run data modify entity @s data.render_data.settings.privacy.send_status_to_friends set value "blobs.dialogs.inputs.false"
execute if score @s input matches 0 run data modify entity @s data.render_data.settings.privacy.send_status_to_friends set value "blobs.dialogs.inputs.true"

scoreboard players reset @s input

function blobs:settings/user_settings/privacy/get_settings