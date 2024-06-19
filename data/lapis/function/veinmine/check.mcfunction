tag @s add lapis.temp.player
scoreboard players operation $temp lapis.id = @s lapis.id
execute as @e[tag=lapis.veinmine] if score @s lapis.id = $temp lapis.id run tag @s add lapis.temp

scoreboard players set $temp lapis.veinmine 25
scoreboard players operation @n[tag=lapis.temp] lapis.veinmine = $temp lapis.veinmine
execute if predicate lapis:enchantments/holding_veinmine_tool as @e[tag=lapis.temp] at @s if block ~ ~ ~ #minecraft:air run function lapis:veinmine/start
tag @s remove lapis.temp.player