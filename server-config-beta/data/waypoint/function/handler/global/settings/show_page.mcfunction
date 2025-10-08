$dialog show @s {\
    type:"multi_action",\
    title:"Global Settings",\
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
                command:"trigger waypoint set 1100001"\
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
                command:"trigger waypoint set 1100002"\
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
                command:"trigger waypoint set 1000000"\
            }\
        }\
    ]\
}