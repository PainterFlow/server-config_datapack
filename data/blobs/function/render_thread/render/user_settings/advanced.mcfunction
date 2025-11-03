dialog show @s {\
    "type": "multi_action",\
    "title": {\
        "translate": "blobs.dialogs.user_settings.advanced"\
    },\
    "columns": 1,\
    "after_action": "none",\
    "pause": false,\
    "can_close_with_escape": true,\
    "body": [\
        {\
            "type": "plain_message",\
            "contents": {\
                "translate": "blobs.dialogs.user_settings.advanced.description"\
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
                "translate": "blobs.dialogs.labels.temp"\
            },\
            "tooltip": {\
                "translate": "blobs.dialogs.labels.temp.tooltip",\
                "color": "gray",\
                "italic": true\
            },\
            "width": 175\
        }\
    ]\
}