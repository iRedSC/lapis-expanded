
summon marker ~ ~ ~ {Tags:["lapis.temp", "lapis.blast"]}

function lapis:id/get

execute as @e[tag=lapis.blast] if score @s lapis.id = @s lapis.id run kill @s
scoreboard players operation @n[tag=lapis.temp] lapis.id = @s lapis.id

tag @n[tag=lapis.temp] remove lapis.temp
