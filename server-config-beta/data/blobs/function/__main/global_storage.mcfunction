summon mannequin 0 0 0 {Tags:[Global_Storage],Invulnerable:1b,immovable:1b,NoGravity:1b,Silent:1b,active_effects:[{id:"invisibility",ambient:0b,amplifier:255,duration:-1,show_icon:0b,show_particles:0b}]}

tellraw @a[tag=debugMainThread] {text:"[BLOBS-MAIN] ",color:"dark_purple",bold:1b,extra:[{text:"New Global Storage",color:"gray",italic:1b,bold:0b}]}

data modify entity @n[tag=Global_Storage] data merge value {\
    blob: 1b,\
    version: 3,\
    secondary_version: 2,\
    namespaces: [],\
    warps: {\
        spawn: {\
            x: 0,\
            y: 0,\
            z: 0\
        }\
    },\
    setting_modules: {\
        baby_mode: 0b,\
        disable_player_interactions: 0b,\
        pvp: 1b\
    },\
    render_data: {\
        extensions: [],\
        setting_modules: {\
            baby_mode: "Disabled",\
            disable_player_interactions: "Enabled",\
            pvp: "Enabled"\
        }\
    }\
}