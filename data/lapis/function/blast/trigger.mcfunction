

execute as @e[tag=, type=marker] run tag @s add lapis.temp
execute as @n[tag=lapis.temp] run tag @s add lapis.blast

function lapis:id/get

execute as @e[tag=lapis.blast] if score @s lapis.id = @s lapis.id run kill @s
scoreboard players operation @n[tag=lapis.temp] lapis.id = @s lapis.id

tag @n[tag=lapis.temp] remove lapis.temp
