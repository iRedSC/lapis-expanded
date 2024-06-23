
tag @s add lapis.temp
particle minecraft:sculk_charge_pop ~ ~ ~
execute as @e[type=!#taglib:non_living,distance=..2] unless score @s lapis.id = @n[tag=lapis.temp] lapis.id run function lapis:enchantment/bow/godhunter/damage
tag @s remove lapis.temp