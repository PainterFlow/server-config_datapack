$dialog show @s {\
  "type": "minecraft:multi_action",\
  "title": {\
    "text": "",\
    "extra": [\
      {\
        "sprite": "minecraft:block/test_block_start",\
        "type": "object"\
      },\
      {\
        "text": " Settings",\
        "color": "gray",\
        "underlined": false\
      }\
    ]\
  },\
  "columns": 2,\
  "can_close_with_escape": true,\
  "pause": false,\
  "exit_action": {\
    "label": {\
      "text": "Back"\
    },\
    "width": 100,\
    "action": {\
      "type": "minecraft:run_command",\
      "command": "trigger blob set 30"\
    }\
  },\
  "actions": [\
    {\
      "label": {\
        "text": "",\
        "extra": [\
          "",\
          {\
            "translate": "blobs.user_settings.party_notifications"\
          },\
          {\
            "translate": " $(party_notifications)"\
          }\
        ]\
      },\
      "width": 125,\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger blob set 1001"\
      }\
    },\
    {\
      "label": {\
        "text": "",\
        "extra": [\
          {\
            "translate": "blobs.user_settings.tower_reset_notifications"\
          },\
          {\
            "text": " $(tower_reset_notifications)"\
          }\
        ]\
      },\
      "width": 125,\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger blob set 1002"\
      }\
    },\
    {\
      "label": {\
        "text": "",\
        "extra": [\
          {\
            "translate": "blobs.user_settings.tower_reset_timer"\
          },\
          {\
            "text": " $(tower_reset_timer)"\
          }\
        ]\
      },\
      "width": 125,\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger blob set 1003"\
      }\
    },\
    {\
      "label": {\
        "text": "",\
        "extra": [\
          {\
            "translate": "blobs.user_settings.custom_sound_effects"\
          },\
          {\
            "text": " $(custom_sound_effects)"\
          }\
        ]\
      },\
      "width": 125,\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger blob set 1004"\
      }\
    },\
    {\
      "label": {\
        "text": "",\
        "extra": [\
          {\
            "translate": "blobs.user_settings.ads"\
          },\
          {\
            "text": " $(ads)"\
          }\
        ]\
      },\
      "width": 125,\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger blob set 1005"\
      }\
    },\
    {\
      "label": {\
        "text": "",\
        "extra": [\
          {\
            "sprite": "minecraft:block/structure_block",\
            "type": "object"\
          },\
          {\
            "translate": "blobs.debug_menu.title"\
          }\
        ]\
      },\
      "tooltip": {\
        "text": "Debug Category, Devs Only",\
        "color": "red",\
        "italic": true\
      },\
      "width": 125,\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger debug set 1"\
      }\
    }\
  ]\
}