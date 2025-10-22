execute if score #_ firstPlayerJoins matches 0 run function blobs:__main/load_0_0

scoreboard players enable @s blob
scoreboard players enable @s spawn
scoreboard players enable @s debug
scoreboard players enable @s home

scoreboard players set #_ firstPlayerJoins 1


tellraw @a[tag=debugAPI_Thread] {text:"[BLOBS-API] ",color:"dark_purple",bold:1b,extra:[{text:"First Join",color:"gray",italic:1b,bold:0b}]}

data modify entity @s data merge value {\
    blob: 1b,\
    version: 3,\
    secondary_version: 2,\
    setting_modules: {\
        fullbright: 0b,\
        locator_bar: 1b,\
        afk: 0b,\
        show_homes_on_locator_bar: 0b\
    },\
    ui: {\
        daycounter: 0b,\
        weather: 0b,\
        temperature: 0b,\
        playtime: 0b,\
        coords: 0b,\
        compass: 1b\
    },\
    debug: {\
        debug_main_thread: 0b,\
        debug_warn_thread: 0b,\
        debug_data_thread: 0b,\
        debug_render_thread: 0b,\
        debug_handler_thread: 0b,\
        debug_settings_thread: 0b,\
        debug_api_thread: 0b,\
        debug_parsing_thread: 0b,\
        debug_custom_features_thread: 0b\
    },\
    render_data: {\
        setting_modules: {\
            fullbright: "Off",\
            locator_bar: "visible",\
            afk: "Not AFK",\
            show_homes_on_locator_bar: "hidden"\
        },\
        ui: {\
            daycounter: "Hide",\
            weather: "Hide",\
            temperature: "Hide",\
            playtime: "Hide",\
            coords: "Hide",\
            compass: "Show"\
        },\
        debug: {\
            debug_main_thread: "red",\
            debug_warn_thread: "red",\
            debug_data_thread: "red",\
            debug_render_thread: "red",\
            debug_handler_thread: "red",\
            debug_settings_thread: "red",\
            debug_api_thread: "red",\
            debug_parsing_thread: "red",\
            debug_custom_features_thread: "red"\
        }\
    }\
}