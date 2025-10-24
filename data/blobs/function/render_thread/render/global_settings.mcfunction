dialog show @s {\
  "type": "minecraft:multi_action",\
  "title": {\
    "text": "",\
    "extra": [\
      {\
        "sprite": "minecraft:item/command_block_minecart",\
        "type": "object"\
      },\
      {\
        "text": " Global Settings",\
        "color": "aqua"\
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
        "text": "Set Spawn"\
      },\
      "tooltip": {\
        "text": "Sets the Spawn to your current location",\
        "color": "gray",\
        "italic": true\
      },\
      "width": 125,\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger blob set 10001"\
      }\
    }\
  ]\
}