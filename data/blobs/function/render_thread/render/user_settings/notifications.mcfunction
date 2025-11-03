$dialog show @s {\
    "type": "multi_action",\
    "title": {\
        "translate": "blobs.dialogs.user_settings.notifications"\
    },\
    "columns": 1,\
    "after_action": "none",\
    "pause": false,\
    "can_close_with_escape": true,\
    "body": [\
        {\
            "type": "plain_message",\
            "contents": {\
                "translate": "blobs.dialogs.user_settings.notifications.description"\
            }\
        }\
    ],\
    "exit_action": {\
        "label": {\
            "translate": "blobs.dialogs.labels.back"\
        },\
        "width": 100,\
        "action": {\
            "type": "run_command",\
            "command": "trigger exit set 3"\
        }\
    },\
    "actions": [\
        {\
            "label": {\
                "translate": "blobs.dialogs.user_settings.notifications.ping_sound",\
                "extra": [\
                    {\
                        "translate": "$(ping_sound)"\
                    }\
                ]\
            },\
            "tooltip": {\
                "translate": "blobs.dialogs.user_settings.notifications.ping_sound.tooltip",\
                "color": "gray",\
                "italic": true\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger settings_notifications set 101"\
            },\
            "width": 175\
        },\
        {\
            "label": {\
                "translate": "blobs.dialogs.user_settings.notifications.tower_reset",\
                "extra": [\
                    {\
                        "translate": "$(tower_reset)"\
                    }\
                ]\
            },\
            "tooltip": {\
                "translate": "blobs.dialogs.user_settings.notifications.tower_reset.tooltip",\
                "color": "gray",\
                "italic": true\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger settings_notifications set 102"\
            },\
            "width": 175\
        },\
        {\
            "label": {\
                "translate": "blobs.dialogs.user_settings.notifications.events",\
                "extra": [\
                    {\
                        "translate": "$(events)"\
                    }\
                ]\
            },\
            "tooltip": {\
                "translate": "blobs.dialogs.user_settings.notifications.events.tooltip",\
                "color": "gray",\
                "italic": true\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger settings_notifications set 103"\
            },\
            "width": 175\
        },\
        {\
            "label": {\
                "translate": "blobs.dialogs.user_settings.notifications.queue",\
                "extra": [\
                    {\
                        "translate": "$(queue)"\
                    }\
                ]\
            },\
            "tooltip": {\
                "translate": "blobs.dialogs.user_settings.notifications.queue.tooltip",\
                "color": "gray",\
                "italic": true\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger settings_notifications set 104"\
            },\
            "width": 175\
        },\
        {\
            "label": {\
                "translate": "blobs.dialogs.user_settings.notifications.friends",\
                "extra": [\
                    {\
                        "translate": "$(friends)"\
                    }\
                ]\
            },\
            "tooltip": {\
                "translate": "blobs.dialogs.user_settings.notifications.friends.tooltip",\
                "color": "gray",\
                "italic": true\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger settings_notifications set 105"\
            },\
            "width": 175\
        },\
        {\
            "label": {\
                "translate": "blobs.dialogs.user_settings.notifications.ads",\
                "extra": [\
                    {\
                        "translate": "$(ads)"\
                    }\
                ]\
            },\
            "tooltip": {\
                "translate": "blobs.dialogs.user_settings.notifications.ads.tooltip",\
                "color": "gray",\
                "italic": true\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger settings_notifications set 106"\
            },\
            "width": 175\
        }\
    ]\
}