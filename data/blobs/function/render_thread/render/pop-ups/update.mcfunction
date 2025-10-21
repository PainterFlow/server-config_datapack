dialog show @s {\
  "type": "minecraft:confirmation",\
  "title": {\
    "text": "Minor Update",\
    "color": "green"\
  },\
  "can_close_with_escape": true,\
  "pause": true,\
  "no": {\
    "label": {\
      "text": "Do not update my player Data",\
      "color": "red",\
      "bold": true\
    },\
    "tooltip": {\
      "text": "Ignoring an Update can lead\nlead to data corruption\n",\
      "color": "red",\
      "italic": true\
    },\
    "action": {\
      "type": "minecraft:run_command",\
      "command": "trigger blob set 10"\
    }\
  },\
  "yes": {\
    "label": {\
      "text": "Update my player Data",\
      "color": "green",\
      "bold": true\
    },\
    "tooltip": {\
      "text": "This will reset all your server settings!",\
      "color": "green",\
      "italic": true\
    },\
    "action": {\
      "type": "minecraft:run_command",\
      "command": "trigger blob set 11"\
    }\
  }\
}