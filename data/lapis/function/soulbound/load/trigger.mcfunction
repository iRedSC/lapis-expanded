

scoreboard players reset @s lapis.soulbound
execute store result storage lapis:data soulbound.temp_id.id int 1 run scoreboard players get @s lapis.id

execute store result score $ lapis.temp run gamerule keepInventory
execute if score $ lapis.temp matches 0 run function lapis:soulbound/load/start with storage lapis:data soulbound.temp_id