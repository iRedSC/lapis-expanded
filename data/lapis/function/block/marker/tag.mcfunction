
tag @s add lapis.temp.player

execute as @e[tag=lapis.block_marker, distance=..0.01] if score @s lapis.id = @n[tag=lapis.temp.player] lapis.id run tag @s add lapis.temp

execute unless entity @n[tag=lapis.temp] run function lapis:block/marker/summon

scoreboard players operation @n[tag=lapis.temp] lapis.id = @s lapis.id

$execute as @n[tag=lapis.temp] run tag @s add $(tag)

tag @n[tag=lapis.temp] remove lapis.temp
tag @s remove lapis.temp.player