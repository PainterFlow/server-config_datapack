summon mannequin 0 0 0 {Tags:[Global_Storage],Invulnerable:1b,immovable:1b,NoGravity:1b,Silent:1b,active_effects:[{id:"invisibility",ambient:0b,amplifier:255,duration:-1,show_icon:0b,show_particles:0b}]}
execute as @n[tag=Global_Storage,type=mannequin] run effect give @s invisibility infinite 255 true

tellraw @a[tag=debugHandlerThread] {text:"[BLOBS-HANDLERS] ",color:"dark_purple",bold:1b,extra:[{text:"New Global Storage",color:"gray",italic:1b,bold:0b}]}
tellraw @a[tag=debugDataThread] {text:"[BLOBS-DATA] ",color:"dark_purple",bold:1b,extra:[{text:"New Global Storage",color:"gray",italic:1b,bold:0b}]}

data modify entity @n[tag=Global_Storage,type=mannequin] data merge value {\
    blob: 1b,\
    version: 3,\
    secondary_version: 2,\
    features: {\
    },\
    setting_modules: {\
        baby_mode: 0b,\
        disable_player_interactions: 0b,\
        pvp: 1b\
    },\
    render_data: {\
        features: {\
        },\
        setting_modules: {\
            baby_mode: "Disabled",\
            disable_player_interactions: "Enabled",\
            pvp: "Enabled"\
        }\
    }\
}