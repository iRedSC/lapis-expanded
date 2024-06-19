
scoreboard players reset @s lapis.soulbound

execute store result storage lapis:data soulbound.temp_id.id int 1 run scoreboard players get @s lapis.id

function lapis:soulbound/remove/delete_storage with storage lapis:data soulbound.temp_id

advancement revoke @s only lapis:soulbound/remove