tellraw @a[team=debug] {text:"Running Server-Config",italic:false,bold:true,color:green}

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