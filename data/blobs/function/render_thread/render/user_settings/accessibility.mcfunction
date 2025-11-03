$dialog show @s {\
    "type": "multi_action",\
    "title": {\
        "translate": "blobs.dialogs.user_settings.accessibility"\
    },\
    "columns": 1,\
    "after_action": "none",\
    "pause": false,\
    "can_close_with_escape": true,\
    "body": [\
        {\
            "type": "plain_message",\
            "contents": {\
                "translate": "blobs.dialogs.user_settings.accessibility.tooltip"\
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
            "command": "trigger blob set 30"\
        }\
    },\
    "actions": [\
        {\
            "label": {\
                "translate": "blobs.dialogs.user_settings.accessibility.tower_reset_timer",\
                "extra": [\
                    {\
                        "translate": "$(tower_reset_timer)"\
                    }\
                ]\
            },\
            "tooltip": {\
                "translate": "blobs.dialogs.user_settings.accessibility.tower_reset_timer.tooltip",\
                "color": "gray",\
                "italic": true\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger settings_accessibility set 101"\
            },\
            "width": 175\
        }\
    ]\
}