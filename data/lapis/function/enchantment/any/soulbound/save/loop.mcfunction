

# if the current item has the enchantment, add it to saved list
execute if data storage lapis:data temp.soulbound.inventory[-1].components."minecraft:enchantments".levels."lapis:any/soulbound" run data modify storage lapis:data temp.soulbound.saved append from storage lapis:data temp.soulbound.inventory[-1]

# remove current item from list
data remove storage lapis:data temp.soulbound.inventory[-1]

# repeat this function if the list is not empty
execute if data storage lapis:data temp.soulbound.inventory[0] run function lapis:enchantment/any/soulbound/save/loop