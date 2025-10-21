$data modify entity @n[tag=Global_Storage] data.namespaces append value {$(name):"$(entity_tag)"}
$data modify entity @n[tag=Global_Storage] data.render_data.extensions append value $(button)

tellraw @a[tag=debugMainThread] {text:"[BLOBS-MAIN_extension] ",color:"dark_purple",bold:1b,extra:[{text:"Registered Extensions",color:"gray",italic:1b,bold:0b}]}