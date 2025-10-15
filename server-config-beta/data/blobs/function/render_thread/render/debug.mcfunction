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
      "command": "function blobs:settings/exit_settings"\
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
            "text": " Debug Main Thread",\
            "color": "$(color)"\
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
            "color": "$(color)"\
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
            "color": "$(color)"\
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
            "color": "$(color)"\
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
            "color": "$(color)"\
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
            "color": "$(color)"\
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
            "text": " Debug Permissions Thread",\
            "color": "$(color)"\
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
            "text": " Debug API Thread",\
            "color": "$(color)"\
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
            "text": " Debug Parsing Thread",\
            "color": "$(color)"\
          }\
        ]\
      },\
      "width": 125,\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger debug set 19"\
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
            "color": "$(color)"\
          }\
        ]\
      },\
      "width": 125,\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger debug set 20"\
      }\
    }\
  ]\
}