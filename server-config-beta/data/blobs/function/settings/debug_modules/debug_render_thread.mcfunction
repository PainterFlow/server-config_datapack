scoreboard players reset @s debugRenderThread
execute if data entity @s data.debug{debug_render_thread:0b} run scoreboard players set @s debugRenderThread 1
execute if data entity @s data.debug{debug_render_thread:1b} run scoreboard players set @s debugRenderThread 2
execute if score @s debugRenderThread matches 1 as @s run data modify entity @s data.debug.debug_render_thread set value 1b
execute if score @s debugRenderThread matches 2 as @s run data modify entity @s data.debug.debug_render_thread set value 0b
scoreboard players reset @s debugRenderThread

execute if data entity @s data.debug{debug_render_thread:1b} run tag @s add debugRenderThread
execute if data entity @s data.debug{debug_render_thread:0b} run tag @s remove debugRenderThread

tellraw @a[tag=debugSettingsThread] {text:"[BLOBS-SETTINGS-DEBUG] ",color:"dark_purple",bold:1b,extra:[{text:"Toggled debugRenderThread",color:"gray",italic:1b,bold:0b}]}

function blobs:data_management/parsing_functions/debug_render