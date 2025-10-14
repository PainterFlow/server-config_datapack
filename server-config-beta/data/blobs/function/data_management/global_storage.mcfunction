summon mannequin 0 0 0 {Tags:[Global_Storage],Invulnerable:1b,immovable:1b,NoGravity:1b,Silent:1b,active_effects:[{id:"invisibility",ambient:0b,amplifier:255,duration:-1,show_icon:0b,show_particles:0b}]}
execute as @n[tag=Global_Storage,type=mannequin] run effect give @s invisibility infinite 255 true
tellraw @a[tag=Debug] {text:"[BLOBS-HANDLERS] ",color:"dark_purple",bold:1b,extra:[{text:"New Global Storage",color:"gray",italic:1b,bold:0b}]}

data modify entity @n[tag=Global_Storage,type=mannequin] data merge value {\
    blob: 1b,\
    version: 3,\
    secondary_version: 2,\
    permissions: [],\
    setting_modules: {\
        path: {\
            path: "setting_modules"\
        },\
        baby_mode: {\
            data: {\
                path: "setting_modules",\
                val: 1b,\
                name: "baby_mode",\
                true: 1b,\
                false: 0b\
            }\
        },\
        disable_player_interactions: {\
            data: {\
                path: "setting_modules",\
                val: 1b,\
                name: "disable_player_interactions"\
            }\
        },\
        pvp: {\
            data: {\
                path: "setting_modules",\
                val: 1b,\
                name: "pvp",\
                true: 1b,\
                false: 0b\
            }\
        },\
    },\
    render_data: {\
        setting_modules: {\
            path: {\
                path: "render_data.setting_modules"\
            },\
            baby_mode: {\
                data: {\
                    path: "setting_modules",\
                    val: 1b,\
                    name: "baby_mode",\
                    true: "Enabled",\
                    false: "Disabled"\
                }\
            },\
            disable_player_interactions: {\
                data: {\
                    path: "setting_modules",\
                    val: "Enable",\
                    name: "disable_player_interactions",\
                    true: "Disable",\
                    false: "Enable"\
                }\
            },\
            pvp: {\
                data: {\
                    path: "setting_modules",\
                    val: "Enabled",\
                    name: "pvp",\
                    true: "Enabled",\
                    false: "Disabled"\
                }\
            }\
        }\
    }\
}