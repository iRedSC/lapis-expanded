
function lapis:entity/get_data

$data modify storage test:id data.amount set value $(amount)

execute as @a[tag=lapis.temp.player] run function lapis:entity/get_spawn_egg/__internal__give with storage test:id data