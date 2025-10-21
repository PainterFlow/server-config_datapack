$dialog show @s {\
  "type": "minecraft:multi_action",\
  "title": {\
    "text": "",\
    "extra": [\
      {\
        "sprite": "minecraft:block/chiseled_bookshelf_occupied",\
        "type": "object"\
      },\
      {\
        "text": " Extensions",\
        "color": "gold"\
      }\
    ]\
  },\
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
  "columns": 1,\
  "actions": $(extensions)\
}