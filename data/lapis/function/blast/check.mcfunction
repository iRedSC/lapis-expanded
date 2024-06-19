tag @s add lapis.temp.player
scoreboard players operation $temp lapis.id = @s lapis.id
execute as @e[tag=lapis.blast] if score @s lapis.id = $temp lapis.id run tag @s add lapis.temp

execute as @n[tag=lapis.temp] at @s facing entity @p[tag=lapis.temp.player] eyes run tp @s ~ ~ ~ ~ ~
execute if predicate lapis:enchantments/holding_blast_tool as @e[tag=lapis.temp] at @s if block ~ ~ ~ #minecraft:air run function lapis:blast/destroy with storage minesense:data data

kill @e[tag=lapis.temp]
tag @s remove lapis.temp.player