tag @s add lapis.greed.player

scoreboard players set $level lapis.temp 0
execute store result score $ lapis.temp run data get entity @s Inventory[{Slot:100b}].components."minecraft:enchantments".levels."lapis:armor/greed"
scoreboard players operation $level lapis.temp += $ lapis.temp

execute store result score $ lapis.temp run data get entity @s Inventory[{Slot:101b}].components."minecraft:enchantments".levels."lapis:armor/greed"
scoreboard players operation $level lapis.temp += $ lapis.temp

execute store result score $ lapis.temp run data get entity @s Inventory[{Slot:102b}].components."minecraft:enchantments".levels."lapis:armor/greed"
scoreboard players operation $level lapis.temp += $ lapis.temp

execute store result score $ lapis.temp run data get entity @s Inventory[{Slot:103b}].components."minecraft:enchantments".levels."lapis:armor/greed"
scoreboard players operation $level lapis.temp += $ lapis.temp



execute store result storage lapis:data temp.radius int 2 run scoreboard players get $level lapis.temp


function lapis:greed/trigger_test with storage lapis:data temp
tag @s remove lapis.greed.player