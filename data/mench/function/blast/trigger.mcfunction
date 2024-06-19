

execute as @e[tag=, type=marker] run tag @s add mench.temp
execute as @n[tag=mench.temp] run tag @s add mench.blast

execute unless score @s mench.id = @s mench.id run scoreboard players add $next mench.id 1
execute unless score @s mench.id = @s mench.id run scoreboard players operation @s mench.id = $next mench.id

execute as @e[tag=mench.blast] if score @s mench.id = @s mench.id run kill @s
scoreboard players operation @n[tag=mench.temp] mench.id = @s mench.id

tag @n[tag=mench.temp] remove mench.temp
