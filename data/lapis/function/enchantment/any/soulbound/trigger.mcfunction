

scoreboard players set @s lapis.soulbound 1

execute store result storage lapis:data temp.player.id int 1 run scoreboard players get @s lapis.id

function lapis:enchantment/any/soulbound/save/trigger with storage lapis:data temp.player

advancement revoke @s only lapis:enchantment/any/soulbound/add