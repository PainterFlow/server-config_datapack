## <== Scoreboards ==>

scoreboard players reset @s blob
scoreboard players enable @s blob


## <== Advancements ==>

# <-- __main -->

advancement revoke @s only blobs:exit
advancement revoke @s only blobs:extensions

# <-- settings -->

advancement revoke @s only blobs:settings/apply_settings
advancement revoke @s only blobs:settings/global_apply_settings

advancement revoke @s only blobs:settings/blob
advancement revoke @s only blobs:settings/global_settings

advancement revoke @s only blobs:settings/data_management

# <-- API -->

advancement revoke @s only blobs:api/detectors/first_join_detection
advancement revoke @s only blobs:api/detectors/join_detection


## <== Tags ==>

tag @s remove AFK


## <== Teams ==>

team leave @s


## <== Other... ==>

effect clear @s night_vision
attribute @s waypoint_transmit_range base reset