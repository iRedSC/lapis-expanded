

execute as @e[tag=, type=marker] run tag @s add lapis.temp
execute as @n[tag=lapis.temp] run tag @s add lapis.veinmine

execute unless score @s lapis.id = @s lapis.id run scoreboard players add $next lapis.id 1
execute unless score @s lapis.id = @s lapis.id run scoreboard players operation @s lapis.id = $next lapis.id


execute as @e[tag=lapis.veinmine] if score @s lapis.id = @s lapis.id run kill @s
scoreboard players operation @n[tag=lapis.temp] lapis.id = @s lapis.id

tag @n[tag=lapis.temp] remove lapis.temp
