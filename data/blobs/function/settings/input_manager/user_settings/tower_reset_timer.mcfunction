scoreboard players reset @s input

# convert input to scoreboard
execute if data entity @s data.settings{tower_reset_timer:1b} run scoreboard players set @s input 1
execute if data entity @s data.settings{tower_reset_timer:0b} run scoreboard players set @s input 0

# modify data
execute if score @s input matches 1 run data modify entity @s data.settings.tower_reset_timer set value 0b
execute if score @s input matches 0 run data modify entity @s data.settings.tower_reset_timer set value 1b
execute if score @s input matches 1 run data modify entity @s data.render_data.settings.tower_reset_timer set value "blobs.dialogs.inputs.false"
execute if score @s input matches 0 run data modify entity @s data.render_data.settings.tower_reset_timer set value "blobs.dialogs.inputs.true"

scoreboard players reset @s input

function blobs:settings/modules/user_modules/tower_reset_timer
function blobs:handlers/get_functions/get_settings