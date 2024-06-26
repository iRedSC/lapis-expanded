say mined block
tag @s add lapis.temp.mined_block

execute as @e[tag=lapis.block_marker] at @s if score @s lapis.id = @p[tag=lapis.temp.mined_block] lapis.id run function lapis:block/marker/trigger/check_tag

tag @s remove lapis.temp.mined_block