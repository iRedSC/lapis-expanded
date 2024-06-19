tag @s add mench.greed.player

scoreboard players set $level mench.temp 0
execute store result score $ mench.temp run data get entity @s Inventory[{Slot:100b}].components."minecraft:enchantments".levels."mench:greed"
scoreboard players operation $level mench.temp += $ mench.temp

execute store result score $ mench.temp run data get entity @s Inventory[{Slot:101b}].components."minecraft:enchantments".levels."mench:greed"
scoreboard players operation $level mench.temp += $ mench.temp

execute store result score $ mench.temp run data get entity @s Inventory[{Slot:102b}].components."minecraft:enchantments".levels."mench:greed"
scoreboard players operation $level mench.temp += $ mench.temp

execute store result score $ mench.temp run data get entity @s Inventory[{Slot:103b}].components."minecraft:enchantments".levels."mench:greed"
scoreboard players operation $level mench.temp += $ mench.temp


execute store result storage mench:data temp.radius int 2 run scoreboard players get $level mench.temp


function mench:greed/trigger_test with storage mench:data temp
tag @s remove mench.green.player