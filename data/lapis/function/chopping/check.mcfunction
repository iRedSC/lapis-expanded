tag @s add lapis.temp.player
scoreboard players operation $temp lapis.id = @s lapis.id
execute as @e[tag=lapis.veinmine] if score @s lapis.id = $temp lapis.id run tag @s add lapis.temp

execute if predicate lapis:enchantments/holding_chopping_tool store result score $level lapis.temp run data get entity @s SelectedItem.components."minecraft:enchantments".levels."lapis:chopping"


execute if score $level lapis.temp matches 1 run scoreboard players set $temp lapis.veinmine 5
execute if score $level lapis.temp matches 2 run scoreboard players set $temp lapis.veinmine 15
execute if score $level lapis.temp matches 3 run scoreboard players set $temp lapis.veinmine 35
execute if score $level lapis.temp matches 4 run scoreboard players set $temp lapis.veinmine 65
execute if score $level lapis.temp matches 5 run scoreboard players set $temp lapis.veinmine 105
scoreboard players operation @n[tag=lapis.temp] lapis.veinmine = $temp lapis.veinmine

execute store success score $success lapis.temp run function lapis:chopping/test with storage minesense:data data
execute if score $success lapis.temp matches 1 if predicate lapis:enchantments/holding_chopping_tool as @e[tag=lapis.temp] at @s if block ~ ~ ~ #minecraft:air run function lapis:chopping/start
tag @s remove lapis.temp.player