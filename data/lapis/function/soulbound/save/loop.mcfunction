
execute if data storage lapis:data soulbound.temp.inventory[-1].components."minecraft:enchantments".levels."lapis:soulbound" run data modify storage lapis:data soulbound.temp.saved append from storage lapis:data soulbound.temp.inventory[-1]
data remove storage lapis:data soulbound.temp.inventory[-1]


execute if data storage lapis:data soulbound.temp.inventory[0] run function lapis:soulbound/save/loop