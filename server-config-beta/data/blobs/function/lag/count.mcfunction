function blobs:lag/reset
execute as @e[type=arrow] run scoreboard players add #count arrowCount 1
execute as @e[type=tnt] run scoreboard players add #count explosiveCount 1