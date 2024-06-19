

summon item ~ ~ ~ {PickupDelay:0,Tags:["lapis.soulbound_item", "lapis.temp"],Item:{id:"minecraft:stone",count:1}}

data modify entity @n[tag=lapis.temp] Item set from storage lapis:data soulbound.temp.saved[-1]

data remove storage lapis:data soulbound.temp.saved[-1]
tag @n[tag=lapis.temp] remove lapis.temp

execute if data storage lapis:data soulbound.temp.saved[0] run function lapis:soulbound/load/loop