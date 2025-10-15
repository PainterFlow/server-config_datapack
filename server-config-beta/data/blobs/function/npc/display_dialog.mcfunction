dialog show @s blobs:npc/npc

tellraw @a[tag=debugRenderThread] {text:"[BLOBS-RENDER-THREAD] ",color:"dark_purple",bold:1b,extra:[{text:"Displaying Helper NPC dialog",color:"gray",italic:1b,bold:0b}]}

# Move this to the Rendering API