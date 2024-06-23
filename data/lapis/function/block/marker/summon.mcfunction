
summon marker ~ ~ ~ {Tags:["lapis.temp", "lapis.block_marker"]}

execute as @e[tag=lapis.block_marker] if score @s lapis.id = @n[tag=lapis.temp.player] lapis.id run kill @s
scoreboard players operation @n[tag=lapis.temp] lapis.id = @s lapis.id


