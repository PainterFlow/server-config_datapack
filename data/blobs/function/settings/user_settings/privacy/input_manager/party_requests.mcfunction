scoreboard players reset @s input

# convert input to scoreboard
execute if data entity @s data.settings.privacy{party_requests:2f} run scoreboard players set @s input 2
execute if data entity @s data.settings.privacy{party_requests:1f} run scoreboard players set @s input 1
execute if data entity @s data.settings.privacy{party_requests:0f} run scoreboard players set @s input 0

# modify data
execute if score @s input matches 2 run data modify entity @s data.settings.privacy.party_requests set value 0f
execute if score @s input matches 1 run data modify entity @s data.settings.privacy.party_requests set value 2f
execute if score @s input matches 0 run data modify entity @s data.settings.privacy.party_requests set value 1f
execute if score @s input matches 2 run data modify entity @s data.render_data.privacy.settings.party_requests set value "blobs.dialogs.inputs.false"
execute if score @s input matches 1 run data modify entity @s data.render_data.privacy.settings.party_requests set value "blobs.dialogs.inputs.everyone"
execute if score @s input matches 0 run data modify entity @s data.render_data.privacy.settings.party_requests set value "blobs.dialogs.inputs.only_friends"

scoreboard players reset @s input

function blobs:settings/user_settings/privacy/get_settings