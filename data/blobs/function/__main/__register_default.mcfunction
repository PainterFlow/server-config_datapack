summon mannequin 0 5 0 {Tags:[_Blob,_entityBlob_backend],Invulnerable:1b,immovable:1b,NoGravity:1b,Silent:1b,active_effects:[{id:"invisibility",ambient:0b,amplifier:255,duration:-1,show_icon:0b,show_particles:0b}]}

execute as @e[tag=_Blob] run data modify entity @s data merge value {\
    extension: {\
        name: "blob",\
        version: -1,\
        secondary_version: -1,\
        trigger: "blob",\
        storage: "",\
        scoreboard: "",\
        entity_tag: "_Blob",\
        button: {\
            "label": {\
                "text": "",\
                "extra": [\
                {\
                    "sprite": "minecraft:block/allium",\
                    "type": "object"\
                },\
                {\
                    "text": " Blob",\
                    "color": "green"\
                }\
                ]\
            },\
            "tooltip": {\
                "text": "Main Extension!\nAlways Required.",\
                "color": "gray",\
                "italic": true\
            },\
            "width": 125,\
            "action": {\
                "type": "minecraft:show_dialog",\
                "dialog": "blobs:blob_extension"\
            }\
        }\
    }\
}

function blobs:__main/register_extension with entity @n[tag=_Blob] data.extension