execute as @e if items entity @s player.cursor mace run item modify entity @s player.cursor {function:"set_enchantments",add:false,enchantments:{density:5,smite:5,bane_of_arthropods:5,unbreaking:3,mending:1,breach:0}}
execute as @e if items entity @s weapon.offhand mace run item modify entity @s weapon.offhand {function:"set_enchantments",add:false,enchantments:{density:5,smite:5,bane_of_arthropods:5,unbreaking:3,mending:1,breach:0}}
execute as @e if items entity @s weapon.mainhand mace run item modify entity @s weapon.mainhand {function:"set_enchantments",add:false,enchantments:{density:5,smite:5,bane_of_arthropods:5,unbreaking:3,mending:1,breach:0}}

# THIS IS NOT FINISHED !!!!
# DO NOT ENABLE 