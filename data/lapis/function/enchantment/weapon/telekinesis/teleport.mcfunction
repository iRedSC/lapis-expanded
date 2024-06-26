

tag @s add lapis.self
execute as @e[distance=..25] if score @s lapis.id = @n[tag=lapis.self] lapis.telekinesis.id run tag @s add lapis.temp.controller

execute as @n[tag=lapis.temp.controller] unless predicate lapis:sneaking run scoreboard players reset @n[tag=lapis.self] lapis.telekinesis.id


execute at @n[tag=lapis.temp.controller] anchored eyes positioned ^ ^ ^3 run tp @s ~ ~0.25 ~ ~ ~
execute at @s anchored eyes positioned ^ ^ ^ unless entity @s[distance=..1] at @s run tp @s ~ ~-2 ~ ~ ~

tag @n[tag=lapis.temp.controller] remove lapis.temp.controller
tag @s remove lapis.self
