$dialog show @s {\
  "type": "minecraft:multi_action",\
  "title": {\
    "text": "",\
    "extra": [\
      {\
        "sprite": "minecraft:block/structure_block"\
      },\
      {\
        "text": " Debug Settings",\
        "color": "light_purple"\
      }\
    ]\
  },\
  "body": [\
    {\
      "type": "minecraft:plain_message",\
      "contents": {\
        "text": "These Options are highly experimental!\nBe carfull with what you are clicking in here!\n",\
        "extra": [\
          {\
            "sprite": "minecraft:block/test_block_log",\
            "type": "object",\
            "bold": false\
          },\
          {\
            "text": " = Chat Logs",\
            "color": "gray",\
            "bold": false\
          }\
        ],\
        "color": "red",\
        "bold": true\
      }\
    }\
  ],\
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
  "columns": 2,\
  "actions": [\
    {\
      "label": {\
        "text": "",\
        "extra": [\
          {\
            "sprite": "minecraft:block/test_block_log",\
            "type": "object"\
          },\
          {\
            "text": " Enable all Threads",\
            "color": "blue"\
          }\
        ]\
      },\
      "width": 125,\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger debug set 10"\
      }\
    },\
    {\
      "label": {\
        "text": "",\
        "extra": [\
          {\
            "sprite": "minecraft:block/test_block_log",\
            "type": "object"\
          },\
          {\
            "text": " Debug Main Thread",\
            "color": "$(debug_main_thread)"\
          }\
        ]\
      },\
      "width": 125,\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger debug set 11"\
      }\
    },\
    {\
      "label": {\
        "text": "",\
        "extra": [\
          {\
            "sprite": "minecraft:block/test_block_log",\
            "type": "object"\
          },\
          {\
            "text": " Debug Warn Thread",\
            "color": "$(debug_warn_thread)"\
          }\
        ]\
      },\
      "width": 125,\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger debug set 12"\
      }\
    },\
    {\
      "label": {\
        "text": "",\
        "extra": [\
          {\
            "sprite": "minecraft:block/test_block_log",\
            "type": "object"\
          },\
          {\
            "text": " Debug Data Thread",\
            "color": "$(debug_data_thread)"\
          }\
        ]\
      },\
      "width": 125,\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger debug set 13"\
      }\
    },\
    {\
      "label": {\
        "text": "",\
        "extra": [\
          {\
            "sprite": "minecraft:block/test_block_log",\
            "type": "object"\
          },\
          {\
            "text": " Debug Render Thread",\
            "color": "$(debug_render_thread)"\
          }\
        ]\
      },\
      "width": 125,\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger debug set 14"\
      }\
    },\
    {\
      "label": {\
        "text": "",\
        "extra": [\
          {\
            "sprite": "minecraft:block/test_block_log",\
            "type": "object"\
          },\
          {\
            "text": " Debug Handler Thread",\
            "color": "$(debug_handler_thread)"\
          }\
        ]\
      },\
      "width": 125,\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger debug set 15"\
      }\
    },\
    {\
      "label": {\
        "text": "",\
        "extra": [\
          {\
            "sprite": "minecraft:block/test_block_log",\
            "type": "object"\
          },\
          {\
            "text": " Debug Settings Thread",\
            "color": "$(debug_settings_thread)"\
          }\
        ]\
      },\
      "width": 125,\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger debug set 16"\
      }\
    },\
    {\
      "label": {\
        "text": "",\
        "extra": [\
          {\
            "sprite": "minecraft:block/test_block_log",\
            "type": "object"\
          },\
          {\
            "text": " Debug API Thread",\
            "color": "$(debug_api_thread)"\
          }\
        ]\
      },\
      "width": 125,\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger debug set 17"\
      }\
    },\
    {\
      "label": {\
        "text": "",\
        "extra": [\
          {\
            "sprite": "minecraft:block/test_block_log",\
            "type": "object"\
          },\
          {\
            "text": " Debug Parsing Thread",\
            "color": "$(debug_parsing_thread)"\
          }\
        ]\
      },\
      "width": 125,\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger debug set 18"\
      }\
    },\
    {\
      "label": {\
        "text": "",\
        "extra": [\
          {\
            "sprite": "minecraft:block/test_block_log",\
            "type": "object"\
          },\
          {\
            "text": " Debug Custom Features Thread",\
            "color": "$(debug_custom_features_thread)"\
          }\
        ]\
      },\
      "width": 125,\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger debug set 19"\
      }\
    }\
  ]\
}