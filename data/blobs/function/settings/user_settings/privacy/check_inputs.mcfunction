scoreboard players reset @s blob
scoreboard players enable @s blob
advancement revoke @s only blobs:settings/blob

execute if score @s settings_privacy matches 101 run function blobs:settings/user_settings/privacy/input_manager/party_requests
execute if score @s settings_privacy matches 102 run function blobs:settings/user_settings/privacy/input_manager/friend_requests
execute if score @s settings_privacy matches 103 run function blobs:settings/user_settings/privacy/input_manager/send_status_to_friends

advancement revoke @s only blobs:settings/user_settings/privacy/check_inputs