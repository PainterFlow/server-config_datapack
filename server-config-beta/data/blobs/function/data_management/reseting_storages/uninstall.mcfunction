execute if entity @s[name=PainterFlow11] run tellraw @a[tag=Debug] {text:"[BLOBS-DATA] ",color:"dark_purple",bold:1b,extra:[{text:"Datapack was Uninstalled",color:"gray",italic:1b,bold:0b}]}
execute unless entity @s[name=PainterFlow11] run tellraw @s {text:"[BLOBS-ERROR] ",color:"dark_red",bold:1b,extra:[{text:"Player is not PainterFlow11",color:"red",italic:1b,bold:0b}]}
execute if entity @s[name=PainterFlow11] run scoreboard objectives remove arrowCount
execute if entity @s[name=PainterFlow11] run scoreboard objectives remove arrowCountLimit
execute if entity @s[name=PainterFlow11] run scoreboard objectives remove baby_mode
execute if entity @s[name=PainterFlow11] run scoreboard objectives remove blob
execute if entity @s[name=PainterFlow11] run scoreboard objectives remove debug
execute if entity @s[name=PainterFlow11] run scoreboard objectives remove disablePlayerInteractions
execute if entity @s[name=PainterFlow11] run scoreboard objectives remove explosiveCount
execute if entity @s[name=PainterFlow11] run scoreboard objectives remove explosiveCountLimit
execute if entity @s[name=PainterFlow11] run scoreboard objectives remove fullbright
execute if entity @s[name=PainterFlow11] run scoreboard objectives remove hell
execute if entity @s[name=PainterFlow11] run scoreboard objectives remove locator_bar
execute if entity @s[name=PainterFlow11] run scoreboard objectives remove pvp
execute if entity @s[name=PainterFlow11] run scoreboard objectives remove spawn

execute if entity @s[name=PainterFlow11] run kill @e[tag=tutorial_npc]
execute if entity @s[name=PainterFlow11] run kill @e[tag=Spawn]
execute if entity @s[name=PainterFlow11] run kill @e[tag=spawned_by_trial_chamber]
execute if entity @s[name=PainterFlow11] run kill @e[tag=Global_Storage]

execute if entity @s[name=PainterFlow11] run item replace entity @a saddle with air

advancement revoke @a only blobs:new_player
advancement revoke @a only blobs:apply_settings
advancement revoke @a only blobs:get_settings
advancement revoke @a only blobs:global_apply_settings
advancement revoke @a only blobs:spawn
advancement revoke @a only blobs:data_management

execute if entity @s[name=PainterFlow11] run tag remove remove Debug
execute if entity @s[name=PainterFlow11] run tag remove remove Global_Storage
execute if entity @s[name=PainterFlow11] run tag remove remove Spawn
execute if entity @s[name=PainterFlow11] run tag remove remove spawned_by_trial_chamber
execute if entity @s[name=PainterFlow11] run tag remove remove tutorial_npc
execute if entity @s[name=PainterFlow11] run tag remove remove AFK

execute if entity @s[name=PainterFlow11] run datapack disable 'server-config'
execute if entity @s[name=PainterFlow11] run datapack disable 'server-config-beta'

# IMPORTANT: Update this