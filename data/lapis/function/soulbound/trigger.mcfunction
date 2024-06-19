
function lapis:id/get
scoreboard players set @s lapis.soulbound 1

execute store result storage lapis:data soulbound.temp_id.id int 1 run scoreboard players get @s lapis.id

function lapis:soulbound/save/trigger with storage lapis:data soulbound.temp_id

advancement revoke @s only lapis:soulbound/add