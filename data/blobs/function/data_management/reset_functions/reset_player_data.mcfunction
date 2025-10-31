## <== Scoreboards ==>

scoreboard players reset @s blob
scoreboard players enable @s blob


## <== Advancements ==>

# <-- __main -->

advancement revoke @s only blobs:exit
advancement revoke @s only blobs:extensions

# <-- settings -->

advancement revoke @s only blobs:settings/apply_settings
advancement revoke @s only blobs:settings/debug_apply
advancement revoke @s only blobs:settings/global_apply_settings

advancement revoke @s only blobs:settings/blob
advancement revoke @s only blobs:settings/debug
advancement revoke @s only blobs:settings/global_settings

advancement revoke @s only blobs:settings/data_management

# <-- API -->

advancement revoke @s only blobs:api/detectors/first_join_detection
advancement revoke @s only blobs:api/detectors/join_detection


## <== Tags ==>

tag @s remove debugAPI_Thread
tag @s remove debugHandlerThread
tag @s remove debugCustomFeaturesThread
tag @s remove debugDataThread
tag @s remove debugMainThread
tag @s remove debugParsingThread
tag @s remove debugRenderThread
tag @s remove debugSettingsThread
tag @s remove debugWarnThread
tag @s remove AFK


## <== Teams ==>

team leave @s


## <== Other... ==>

effect clear @s night_vision
attribute @s waypoint_transmit_range base reset

tellraw @a[tag=debugMainThread] {text:"[BLOBS-MAIN] ",color:"dark_purple",bold:1b,extra:[{text:"Reset Player Data",color:"gray",italic:1b,bold:0b}]}