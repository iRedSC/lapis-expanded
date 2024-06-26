
summon item ~ ~ ~ {PickupDelay:40,Tags:["lapis.temp.item"],Item:{id:"minecraft:stone",count:1}}

$item replace entity @n[tag=lapis.temp.item] contents from entity @s $(slot)
$item replace entity @s $(slot) with air

execute store result score $random lapis.temp run random value -10..10
execute store result entity @n[tag=lapis.temp.item] Motion[0] double 0.05 run scoreboard players get $random lapis.temp

execute store result score $random lapis.temp run random value 0..3
execute store result entity @n[tag=lapis.temp.item] Motion[1] double 0.1 run scoreboard players get $random lapis.temp

execute store result score $random lapis.temp run random value -10..10
execute store result entity @n[tag=lapis.temp.item] Motion[2] double 0.05 run scoreboard players get $random lapis.temp 

tag @n[tag=lapis.temp.item] remove lapis.temp.item