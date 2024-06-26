


execute on attacker run tag @s add lapis.temp
execute as @n[tag=lapis.temp] run function lapis:id/get

scoreboard players operation @s lapis.telekinesis.id = @n[tag=lapis.temp] lapis.id

tag @n[tag=lapis.temp] remove lapis.temp