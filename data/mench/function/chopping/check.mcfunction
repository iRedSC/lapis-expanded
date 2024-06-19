tag @s add mench.temp.player
scoreboard players operation $temp mench.id = @s mench.id
execute as @e[tag=mench.chopping] if score @s mench.id = $temp mench.id run tag @s add mench.temp

execute as @n[tag=mench.temp] at @s facing entity @p[tag=mench.temp.player] eyes run tp @s ~ ~ ~ ~ ~
execute if predicate mench:enchantments/holding_chopping_tool as @e[tag=mench.temp] at @s if block ~ ~ ~ #minecraft:air run function mench:chopping/destroy with storage minesense:data data

kill @e[tag=mench.temp]
tag @s remove mench.temp.player