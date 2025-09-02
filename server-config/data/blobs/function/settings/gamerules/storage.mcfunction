$data modify storage blobs:tmp {} merge value {keepinv:$(keepinv)}

# Convert the boolean to a byte and store as settings.gamerules.keepinv
execute store result storage blobs:settings settings.gamerules[0].keepinv byte 1 run data get storage blobs:tmp keepinv

# Apply gamerule from the byte flag
execute if data storage blobs:temp {keepinv:1b} run gamerule keepInventory true
execute unless data storage blobs:temp {keepinv:1b} run gamerule keepInventory false

# Cleanup
data remove storage blobs:tmp keepinv