scoreboard players reset @s input

# convert input to scoreboard
execute if data entity @s data.settings{custom_sound_effects:1b} run scoreboard players set @s input 1
execute if data entity @s data.settings{custom_sound_effects:0b} run scoreboard players set @s input 0

# modify data
execute if score @s input matches 1 run data modify entity @s data.settings.custom_sound_effects set value 0b
execute if score @s input matches 0 run data modify entity @s data.settings.custom_sound_effects set value 1b
execute if score @s input matches 1 run data modify entity @s data.render_data.settings.custom_sound_effects set value "blobs.dialogs.inputs.muted"
execute if score @s input matches 0 run data modify entity @s data.render_data.settings.custom_sound_effects set value "blobs.dialogs.inputs.true"

scoreboard players reset @s input

function blobs:settings/modules/user_modules/custom_sounds
function blobs:handlers/get_functions/get_settings