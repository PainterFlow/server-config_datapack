summon mannequin 0 0 0 {Tags:[Global_Storage],Invulnerable:1b,immovable:1b,NoGravity:1b,Silent:1b,active_effects:[{id:"invisibility",ambient:0b,amplifier:255,duration:-1,show_icon:0b,show_particles:0b}]}

function blobs:_debug/msgs/basic {tag:"debugMainThread",thread:"blobs.chat.debug.threads.main",msg:"blobs.chat.debug.threads.main.new_global_storage"}

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