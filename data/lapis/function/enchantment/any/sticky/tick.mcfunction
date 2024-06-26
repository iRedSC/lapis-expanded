
tag @s add lapis.temp
particle minecraft:falling_honey ~ ~0.25 ~ 0.1 0.1 0.1 0 1 normal @a
execute as @n[distance=..5, type=!#taglib:non_living] at @s run tp @n[tag=lapis.temp] ~ ~ ~ ~ ~
execute store success entity @s Air byte 1 run data modify entity @s Air set value 1b
tag @s remove lapis.temp