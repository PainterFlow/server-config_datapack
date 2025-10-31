execute if score #_ firstPlayerJoins matches 0 run function blobs:__main/load_0_0

scoreboard players enable @s blob
scoreboard players enable @a settings_user
scoreboard players enable @a settings_privacy
scoreboard players enable @a settings_appearance
scoreboard players enable @a settings_accessibility
scoreboard players enable @a settings_notifications
scoreboard players enable @a settings_advanced

data modify entity @s data merge value {\
    blob: 1b,\
    version: 3,\
    secondary_version: 2,\
    settings: {\
        ads: 0b,\
        party_notifications: 1b,\
        tower_reset_notifications: 1b,\
        tower_reset_timer: 0b,\
        custom_sound_effects: 1b\
    },\
    render_data: {\
        settings: {\
            ads: "blobs.dialogs.inputs.hide",\
            party_notifications: "blobs.dialogs.inputs.true",\
            tower_reset_notifications: "blobs.dialogs.inputs.true",\
            tower_reset_timer: "blobs.dialogs.inputs.hide",\
            custom_sound_effects: "blobs.dialogs.inputs.true"\
        }\
    }\
}