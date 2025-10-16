$dialog show @s {\
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
      "type": "minecraft:show_dialog",\
      "dialog": "blobs:npc/npc"\
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
    },\
    {\
      "label": {\
        "text": "Baby Mode: $(baby_mode)"\
      },\
      "tooltip": {\
        "text": "Disable any Dangers",\
        "color": "gray",\
        "italic": true\
      },\
      "width": 125,\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger blob set 10002"\
      }\
    },\
    {\
      "label": {\
        "text": "PVP: $(pvp)"\
      },\
      "tooltip": {\
        "text": "Toggles PVP",\
        "color": "gray",\
        "italic": true\
      },\
      "width": 125,\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger blob set 10003"\
      }\
    },\
    {\
      "label": {\
        "text": "Player Actions are $(disable_player_interactions)"\
      },\
      "tooltip": {\
        "text": "Toggle Player Interactions",\
        "color": "gray",\
        "italic": true\
      },\
      "width": 125,\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger blob set 10004"\
      }\
    }\
  ]\
}