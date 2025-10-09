tellraw @a[tag=Debug] {text:"[BLOBS-MAIN] ",color:"dark_purple",bold:1b,extra:[{text:"Loaded Data Pack",color:"gray",italic:1b,bold:0b}]}

tag add add Debug
scoreboard objectives add blob trigger
scoreboard players enable @a blob
scoreboard objectives add arrowCount dummy
scoreboard objectives add explosiveCount dummy

scoreboard objectives add arrowCountLimit dummy
scoreboard objectives add explosiveCountLimit dummy
scoreboard players set #limit arrowCountLimit 700
scoreboard players set #limit explosiveCountLimit 500

data modify storage settings {} merge value {settings:{gamerules:[{keepinv:true}]}}

function blobs:lag/loop