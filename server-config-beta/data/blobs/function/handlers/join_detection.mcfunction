scoreboard players enable @s blob
scoreboard players enable @s spawn
scoreboard players enable @s debug
scoreboard players enable @s home

tellraw @a[tag=debugHandlerThread] {text:"[BLOBS-HANDLERS] ",color:"dark_purple",bold:1b,extra:[{text:"New Player Joined the Game",color:"gray",italic:1b,bold:0b}]}

execute if entity @n[tag=Spawn] run tp @s @n[tag=Spawn]

data modify entity @s data merge value {\
    blob: 1b,\
    version: 3,\
    secondary_version: 2,\
    permissions: [],\
    setting_modules: {\
        fullbright: 0b,\
        locator_bar: 1b,\
        afk: 0b,\
        show_homes_on_locator_bar: 0b\
    },\
    debug: {\
        debug_main_thread: 0b,\
        debug_warn_thread: 0b,\
        debug_data_thread: 0b,\
        debug_render_thread: 0b,\
        debug_handler_thread: 0b,\
        debug_settings_thread: 0b,\
        debug_permissions_thread: 0b,\
        debug_api_thread: 0b,\
        debug_items_thread: 0b,\
        debug_custom_features_thread: 0b\
    },\
    render_data: {\
        setting_modules: {\
            fullbright: "Off",\
            locator_bar: "visible",\
            afk: "Not AFK",\
            show_homes_on_locator_bar: "hidden"\
        },\
        debug: {\
            debug_main_thread: "False",\
            debug_warn_thread: "False",\
            debug_data_thread: "False",\
            debug_render_thread: "False",\
            debug_handler_thread: "False",\
            debug_settings_thread: "False",\
            debug_permissions_thread: "False",\
            debug_api_thread: "False",\
            debug_parsing_thread: "False",\
            debug_custom_features_thread: "False"\
        }\
    }\
}