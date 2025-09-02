tellraw @a[team=debug] {text:"Running Server-Config V1.2",italic:false,bold:true,color:green}

scoreboard objectives add arrowCount dummy
scoreboard objectives add explosiveCount dummy
scoreboard objectives add itemCount dummy

scoreboard objectives add arrowCountLimit dummy
scoreboard objectives add explosiveCountLimit dummy
scoreboard objectives add itemCountLimit dummy
scoreboard players set #limit arrowCountLimit 700
scoreboard players set #limit explosiveCountLimit 500
scoreboard players set #limit itemCountLimit 1000

data modify storage settings {} merge value {settings:{gamerules:[{keepinv:true}]}}

function blobs:lag/loop
