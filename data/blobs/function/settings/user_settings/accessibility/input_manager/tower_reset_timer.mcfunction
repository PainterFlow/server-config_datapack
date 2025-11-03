scoreboard players reset @s input

# convert input to scoreboard
execute if data entity @s data.settings.accessibility{tower_reset_timer:1b} run scoreboard players set @s input 1
execute if data entity @s data.settings.accessibility{tower_reset_timer:0b} run scoreboard players set @s input 0

# modify data
execute if score @s input matches 1 run data modify entity @s data.settings.accessibility.tower_reset_timer set value 0b
execute if score @s input matches 0 run data modify entity @s data.settings.accessibility.tower_reset_timer set value 1b
execute if score @s input matches 1 run data modify entity @s data.render_data.settings.accessibility.tower_reset_timer set value "blobs.dialogs.inputs.hide"
execute if score @s input matches 0 run data modify entity @s data.render_data.settings.accessibility.tower_reset_timer set value "blobs.dialogs.inputs.show"

scoreboard players reset @s input

function blobs:settings/user_settings/accessibility/get_settings