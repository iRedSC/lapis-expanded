


scoreboard players reset @s lapis.soulbound

execute store result storage lapis:data temp.player.id int 1 run scoreboard players get @s lapis.id

function lapis:enchantment/any/soulbound/remove/delete_storage with storage lapis:data temp.player

advancement revoke @s only lapis:enchantment/any/soulbound/remove