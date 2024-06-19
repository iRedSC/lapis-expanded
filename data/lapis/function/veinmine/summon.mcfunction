summon marker ~ ~ ~ {Tags:["lapis.veinmine", "lapis.temp"]}

function lapis:block/destroy_with_loot

scoreboard players operation @n[tag=lapis.temp] lapis.veinmine = $temp lapis.veinmine

execute as @n[tag=lapis.temp] at @s run function lapis:veinmine/start