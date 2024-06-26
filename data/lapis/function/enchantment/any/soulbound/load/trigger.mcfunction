

execute store result storage lapis:data temp.player.id int 1 run scoreboard players get @s lapis.id

execute store result score $keep_inventory lapis.temp run gamerule keepInventory
execute if score $keep_inventory lapis.temp matches 0 run function lapis:enchantment/any/soulbound/load/start with storage lapis:data temp.player