data modify storage waypoints dialog.display set value \
{\
    type:"multi_action",\
    pause: 0b,\
    title:"Personal Better Waypoints Menu",\
    actions:[\
        {\
            label:{\
                text:"Place Waypoint",\
                color:"green"\
            },\
            tooltip:{\
                text:"Click to place a waypoint",\
                color:"gray"\
            },\
            action:{\
                type:"run_command",\
                command:"trigger waypoint set 100"\
            }\
        },\
        {\
            label:{\
                text:"Remove Waypoint",\
                color:"red"\
            },\
            tooltip:{\
                text:"This removes the closest waypoint within a 4 block radius",\
                color:"gray"\
            },\
            action:{\
                type:"run_command",\
                command:"trigger waypoint set -100"\
            }\
        },\
        {\
            label:{\
                text:"Settings",\
                color:"yellow"\
            },\
            tooltip:{\
                text:"Click to open your personal settings",\
                color:"gray"\
            },\
            action:{\
                type:"run_command",\
                command:"trigger waypoint set 50"\
            }\
        },\
        {\
            label:{\
                text:"Global Waypoints",\
                color:"dark_aqua"\
            },\
            tooltip:{\
                text:"Click to view the global waypoints",\
                color:"gray"\
            },\
            action:{\
                type:"run_command",\
                command:"trigger waypoint set 1000000"\
            }\
        },\
    ]\
}

data modify storage waypoints:global dialog.display set value \
{\
    type: "multi_action",\
    title: "Global Better Waypoints Menu",\
    actions: [\
        {\
            label: {\
                text: "Place Waypoint",\
                color: "green"\
            },\
            tooltip: {\
                text: "Click to place a global waypoint",\
                color: "gray"\
            },\
            action: {\
                type: "run_command",\
                command: "trigger waypoint set 1000100"\
            }\
        },\
        {\
            label: {\
                text: "Remove Waypoint",\
                color: "red"\
            },\
            tooltip: {\
                text: "This removes the closest global waypoint within a 4 block radius",\
                color: "gray"\
            },\
            action: {\
                type: "run_command",\
                command: "trigger waypoint set 1000200"\
            }\
        },\
        {\
            label: {\
                text: "Settings",\
                color: "yellow"\
            },\
            tooltip: {\
                text: "Click to open the global settings",\
                color: "gray"\
            },\
            action: {\
                type: "run_command",\
                command: "trigger waypoint set 1100000"\
            }\
        },\
        {\
            label: {\
                text: "Personal Waypoints",\
                color: "dark_aqua"\
            },\
            tooltip: {\
                text: "Click to view your personal waypoints",\
                color: "gray"\
            },\
            action: {\
                type: "run_command",\
                command: "trigger waypoint set 1"\
            }\
        }\
    ]\
}