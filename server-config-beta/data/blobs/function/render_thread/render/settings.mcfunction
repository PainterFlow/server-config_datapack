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
          {\
            "sprite": "minecraft:item/ender_eye",\
            "type": "object"\
          },\
          {\
            "text": " Fullbright: $(fullbright)",\
            "color": "yellow"\
          }\
        ]\
      },\
      "tooltip": {\
        "text": "Toggles Permanent Night Vision",\
        "color": "gray",\
        "italic": true\
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
            "sprite": "minecraft:item/white_harness",\
            "type": "object"\
          },\
          {\
            "text": " You are $(locator_bar) on the locator bar",\
            "color": "aqua"\
          }\
        ]\
      },\
      "tooltip": {\
        "text": "If this is off,\nother players will be unable to see you\non their Locator Bar,\nbut you can see them...",\
        "color": "gray",\
        "italic": true\
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
            "sprite": "minecraft:item/cookie",\
            "type": "object"\
          },\
          {\
            "text": " $(afk)",\
            "color": "aqua"\
          }\
        ]\
      },\
      "tooltip": {\
        "text": "This will not make you immortal,\nhowever you are not allowed to be killed.\nDo not abuse this!",\
        "color": "gray",\
        "italic": true\
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
            "sprite": "minecraft:item/nether_star",\
            "type": "object"\
          },\
          {\
            "text": " Homes on Locator Bar",\
            "color": "red",\
            "strikethrough": true\
          }\
        ],\
        "color": "dark_gray"\
      },\
      "tooltip": {\
        "text": "In Development",\
        "color": "dark_purple",\
        "italic": true\
      },\
      "width": 125,\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger blob set 1004"\
      }\
    },\
    {\
      "label": {\
        "text": "----------Back----------",\
        "color": "dark_gray"\
      },\
      "tooltip": {\
        "text": "",\
        "color": "gray",\
        "italic": true\
      },\
      "width": 125,\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger blob set 30"\
      }\
    },\
    {\
      "label": {\
        "text": "----------Back----------",\
        "color": "dark_gray"\
      },\
      "tooltip": {\
        "text": "",\
        "color": "gray",\
        "italic": true\
      },\
      "width": 125,\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger blob set 30"\
      }\
    },\
    {\
      "label": {\
        "text": "",\
        "extra": [\
          {\
            "sprite": "minecraft:block/lodestone_side",\
            "type": "object"\
          },\
          {\
            "text": " Home Menu",\
            "color": "red",\
            "strikethrough": true\
          }\
        ]\
      },\
      "tooltip": {\
        "text": "In Development",\
        "color": "dark_purple",\
        "italic": true\
      },\
      "width": 125,\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger home set 1"\
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
            "text": " Debug Menu",\
            "color": "light_purple"\
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