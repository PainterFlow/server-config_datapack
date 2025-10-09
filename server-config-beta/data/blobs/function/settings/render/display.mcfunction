$dialog show @s {\
  "type": "minecraft:multi_action",\
  "title": {\
    "text": "",\
    "extra": [\
      {\
        "text": " Settings",\
        "color": "gray",\
        "underlined": false\
      },\
      {\
        "sprite": "minecraft:block/test_block_start",\
        "type": "object"\
      }\
    ]\
  },\
  "columns": 2,\
  "actions": [\
    {\
      "label": {\
        "text": "Fullbright: $(fullbright)"\
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
        "text": "Locator Bar Icon: $(locator_bar)"\
      },\
      "tooltip": {\
        "text": "If this is Hidden,\nother players will be unable to see you\non their Locator Bar,\nbut you can see them...",\
        "color": "gray",\
        "italic": true\
      },\
      "width": 125,\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger blobs set 1002"\
      }\
    },\
    {\
      "label": {\
        "text": "$(hell)",\
        "color": "red",\
        "bold": true\
      },\
      "tooltip": {\
        "text": "What even is the point of this?",\
        "color": "red",\
        "bold": true,\
        "italic": false\
      },\
      "width": 125,\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger blob 1003"\
      }\
    },\
    {\
      "label": {\
        "text": "Debug Mode: $(debug)",\
        "color": "dark_purple"\
      },\
      "tooltip": {\
        "text": "Do not turn this on\nif you don't know what your doing",\
        "color": "red",\
        "italic": true\
      },\
      "width": 125,\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger blob set 1004"\
      }\
    }\
  ]\
}