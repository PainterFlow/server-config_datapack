dialog show @s {\
    "type": "multi_action",\
    "title": {\
        "translate": "blobs.dialogs.user_settings.user"\
    },\
    "columns": 1,\
    "after_action": "none",\
    "pause": false,\
    "can_close_with_escape": true,\
    "body": [\
        {\
            "type": "plain_message",\
            "contents": {\
                "translate": "blobs.dialogs.user_settings.user.description"\
            }\
        },\
        {\
            "type": "plain_message",\
            "contents": {\
                "translate": "blobs.version"\
            }\
        },\
        {\
            "type": "plain_message",\
            "contents": {\
                "translate": "blobs.version.player"\
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
                "translate": "blobs.dialogs.user_settings.user.fix_data",\
                "fallback": "Fix/Update Player Data"\
            },\
            "tooltip": {\
                "translate": "blobs.dialogs.user_settings.user.fix_data.tooltip",\
                "color": "red",\
                "italic": true\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger settings_user set 101"\
            },\
            "width": 175\
        }\
    ]\
}