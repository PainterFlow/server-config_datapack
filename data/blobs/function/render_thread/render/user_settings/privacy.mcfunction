$dialog show @s {\
    "type": "multi_action",\
    "title": {\
        "translate": "blobs.dialogs.user_settings.privacy"\
    },\
    "columns": 1,\
    "after_action": "none",\
    "pause": false,\
    "can_close_with_escape": true,\
    "body": [\
        {\
            "type": "plain_message",\
            "contents": {\
                "translate": "blobs.dialogs.user_settings.privacy.description"\
            },\
            "width": 225\
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
                "translate": "blobs.dialogs.user_settings.privacy.party_requests",\
                "extra": [\
                    {\
                        "translate": "$(party_requests)"\
                    }\
                ]\
            },\
            "tooltip": {\
                "translate": "blobs.dialogs.user_settings.privacy.party_requests.tooltip",\
                "color": "gray",\
                "italic": true\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger settings_privacy set 101"\
            },\
            "width": 175\
        },\
        {\
            "label": {\
                "translate": "blobs.dialogs.user_settings.privacy.friend_requests",\
                "extra": [\
                    {\
                        "translate": "$(friend_requests)"\
                    }\
                ]\
            },\
            "tooltip": {\
                "translate": "blobs.dialogs.user_settings.privacy.friend_requests.tooltip",\
                "color": "gray",\
                "italic": true\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger settings_privacy set 102"\
            },\
            "width": 175\
        },\
        {\
            "label": {\
                "translate": "blobs.dialogs.user_settings.privacy.send_status_to_friends",\
                "extra": [\
                    {\
                        "translate": "$(send_status_to_friends)"\
                    }\
                ]\
            },\
            "tooltip": {\
                "translate": "blobs.dialogs.user_settings.privacy.send_status_to_friends.tooltip",\
                "color": "gray",\
                "italic": true\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger settings_privacy set 103"\
            },\
            "width": 175\
        }\
    ]\
}