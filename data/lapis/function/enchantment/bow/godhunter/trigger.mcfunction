
execute as @n[type=!#taglib:non_living] run function lapis:id/get
scoreboard players operation @s lapis.id = @n[type=!#taglib:non_living] lapis.id
tag @s add lapis.godhunter
tag @s add lapis.tick