$dialog show @s {\
    type:"multi_action",\
    title:"Personal Settings",\
    pause:0b,\
    actions:[\
        {\
            label:{\
                text:"Visibility: $(visibility)",\
                color:"green"\
            },\
            tooltip:{\
                text:"Click to change the visibility",\
                color:"gray"\
            },\
            action:{\
                type:"run_command",\
                command:"trigger waypoint set 10001"\
            }\
        },\
        {\
            label:{\
                text:"Size: $(size)",\
                color:"yellow"\
            },\
            tooltip:{\
                text:"Click to change the appearance",\
                color:"gray"\
            },\
            action:{\
                type:"run_command",\
                command:"trigger waypoint set 10002"\
            }\
        },\
        {\
            label:{\
                text:"Animation: $(animation)",\
                color:"light_purple"\
            },\
            tooltip:{\
                text:"Click to toggle the teleportation animation",\
                color:"gray"\
            },\
            action:{\
                type:"run_command",\
                command:"trigger waypoint set 10003"\
            }\
        },\
        {\
            label:"Back",\
            tooltip:{\
                text:"Click to go back",\
                color:"gray"\
            },\
            action:{\
                type:"run_command",\
                command:"trigger waypoint set 1"\
            }\
        }\
    ]\
}