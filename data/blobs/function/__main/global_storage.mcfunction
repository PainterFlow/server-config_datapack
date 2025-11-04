summon mannequin 0 0 0 {Tags:[Global_Storage,_entityBlob_backend,__Blob],Invulnerable:1b,immovable:1b,NoGravity:1b,Silent:1b,active_effects:[{id:"invisibility",ambient:0b,amplifier:255,duration:-1,show_icon:0b,show_particles:0b}]}

execute as @e[tag=Global_Storage] run data modify entity @s data merge value {\
    blob: 1b,\
    version: 3,\
    secondary_version: 2,\
    setting_modules: {\
        allow_parties: 1b,\
        party_permissions: 0b,\
        after_joining: 1b,\
        tower_lives: 3,\
        afk_kicking: 0b,\
        tower_timer: 0\
    },\
    render_data: {\
        extensions: [],\
        setting_modules: {\
        }\
    }\
}

data modify entity @n[tag=Global_Storage] data.players set value []