scoreboard players reset @s input

# convert input to scoreboard
execute if data entity @s data.settings.notifications{queue:1b} run scoreboard players set @s input 1
execute if data entity @s data.settings.notifications{queue:0b} run scoreboard players set @s input 0

# modify data
execute if score @s input matches 1 run data modify entity @s data.settings.notifications.queue set value 0b
execute if score @s input matches 0 run data modify entity @s data.settings.notifications.queue set value 1b
execute if score @s input matches 1 run data modify entity @s data.render_data.settings.notifications.queue set value "blobs.dialogs.inputs.muted"
execute if score @s input matches 0 run data modify entity @s data.render_data.settings.notifications.queue set value "blobs.dialogs.inputs.unmuted"

scoreboard players reset @s input

function blobs:settings/user_settings/notifications/get_settings