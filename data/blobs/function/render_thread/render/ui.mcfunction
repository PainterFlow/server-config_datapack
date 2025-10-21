$dialog show @s {\
  "type": "minecraft:multi_action",\
  "title": {\
    "text": "",\
    "extra": [\
      {\
        "sprite": "minecraft:item/paper",\
        "type": "object"\
      },\
      {\
        "text": " UI & HUD"\
      }\
    ]\
  },\
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
            "sprite": "minecraft:item/clock_00",\
            "type": "object"\
          },\
          {\
            "text": " $(daycounter) Daycounter",\
            "color": "yellow"\
          }\
        ]\
      },\
      "tooltip": {\
        "text": "Shows the daycounter!",\
        "color": "gray",\
        "italic": true\
      },\
      "width": 125,\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger ui set 1001"\
      }\
    },\
    {\
      "label": {\
        "text": "",\
        "extra": [\
          {\
            "sprite": "minecraft:item/copper_golem_spawn_egg",\
            "type": "object"\
          },\
          {\
            "text": " $(weather) Weather",\
            "color": "dark_aqua"\
          }\
        ]\
      },\
      "tooltip": {\
        "text": "Shows the weather(usefull in caves)",\
        "color": "gray",\
        "italic": true\
      },\
      "width": 125,\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger ui set 1002"\
      }\
    },\
    {\
      "label": {\
        "text": "",\
        "extra": [\
          {\
            "sprite": "minecraft:item/snowball"\
          },\
          {\
            "text": " $(temperature) Temperature Meter",\
            "color": "blue"\
          }\
        ]\
      },\
      "tooltip": {\
        "text": "Temperature Meter",\
        "color": "gray",\
        "italic": true\
      },\
      "width": 125,\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger ui set 1003"\
      }\
    },\
    {\
      "label": {\
        "text": "",\
        "extra": [\
          {\
            "sprite": "minecraft:item/writable_book",\
            "type": "object"\
          },\
          {\
            "text": " $(playtime) Playtime",\
            "color": "aqua"\
          }\
        ]\
      },\
      "tooltip": {\
        "text": "Shows your playtime on this World",\
        "color": "gray",\
        "italic": true\
      },\
      "width": 125,\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger ui set 1004"\
      }\
    },\
    {\
      "label": {\
        "text": "",\
        "extra": [\
          {\
            "sprite": "minecraft:item/recovery_compass_00",\
            "type": "object"\
          },\
          {\
            "text": " $(coords) Your Coords",\
            "color": "light_purple"\
          }\
        ]\
      },\
      "tooltip": {\
        "text": "Updates every tick!",\
        "color": "gray",\
        "italic": true\
      },\
      "width": 125,\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger ui set 1005"\
      }\
    },\
    {\
      "label": {\
        "text": "",\
        "extra": [\
          {\
            "sprite": "minecraft:item/compass_16",\
            "type": "object"\
          },\
          {\
            "text": " $(compass) Compass+",\
            "color": "green"\
          }\
        ]\
      },\
      "tooltip": {\
        "text": "Shows the coords of any\nCompass/Map your holding\nin your offhand!",\
        "color": "gray",\
        "italic": true\
      },\
      "width": 125,\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger ui set 1006"\
      }\
    }\
  ]\
}