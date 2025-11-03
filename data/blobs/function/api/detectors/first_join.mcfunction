execute if score #_ firstPlayerJoins matches 0 run function blobs:__main/load_0_0

scoreboard players enable @s exit
scoreboard players enable @s blob
scoreboard players enable @s settings_user
scoreboard players enable @s settings_privacy
scoreboard players enable @s settings_appearance
scoreboard players enable @s settings_accessibility
scoreboard players enable @s settings_notifications
scoreboard players enable @s settings_advanced

scoreboard players enable @s 

data modify entity @s data merge value {\
    blob: 1b,\
    version: 1,\
    settings: {\
        user: {\
        },\
        privacy: {\
            party_requests: 2f,\
            friend_requests: 1b,\
            send_status_to_friends: 1b\
        },\
        appearance: {\
            toggle_cosmetics: 1b\
        },\
        accessibility: {\
            tower_reset_timer: 0b\
        },\
        notifications: {\
            ping_sound: 1b,\
            tower_reset: 1b,\
            events: 1b,\
            queue: 1b,\
            friends: 1b,\
            ads: 1b\
        },\
        advanced: {\
        },\
    },\
    render_data: {\
        settings: {\
            user: {\
            },\
            privacy: {\
                party_requests: "blobs.dialogs.inputs.everyone",\
                friend_requests: "blobs.dialogs.inputs.enabled",\
                send_status_to_friends: "blobs.dialogs.inputs.true"\
            },\
            appearance: {\
                toggle_cosmetics: "blobs.dialogs.inputs.show"\
            },\
            accessibility: {\
                tower_reset_timer: "blobs.dialogs.inputs.hide"\
            },\
            notifications: {\
                ping_sound: "blobs.dialogs.inputs.unmuted",\
                tower_reset: "blobs.dialogs.inputs.unmuted",\
                events: "blobs.dialogs.inputs.unmuted",\
                queue: "blobs.dialogs.inputs.unmuted",\
                friends: "blobs.dialogs.inputs.unmuted",\
                ads: "blobs.dialogs.inputs.visible"\
            },\
            advanced: {\
            },\
        }\
    }\
}