scoreboard players reset @s input

# convert input to scoreboard
execute if data entity @s data.settings.privacy{party_requests:1b} run scoreboard players set @s input 1
execute if data entity @s data.settings.privacy{party_requests:0b} run scoreboard players set @s input 0

# modify data
execute if score @s input matches 1 run data modify entity @s data.settings.privacy.party_requests set value 0b
execute if score @s input matches 0 run data modify entity @s data.settings.privacy.party_requests set value 1b
execute if score @s input matches 1 run data modify entity @s data.render_data.privacy.settings.party_requests set value "blobs.dialogs.inputs.disabled"
execute if score @s input matches 0 run data modify entity @s data.render_data.privacy.settings.party_requests set value "blobs.dialogs.inputs.enabled"

scoreboard players reset @s input

function blobs:settings/user_settings/privacy/modules/party_requests
function blobs:settings/user_settings/privacy/get_settings