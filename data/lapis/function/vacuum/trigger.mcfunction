
tag @s add lapis.temp.player

execute as @e[type=item, tag=!lapis.ignore, distance=..2] at @s run function lapis:vacuum/check
execute positioned ~ ~1 ~ as @e[tag=!lapis.item.checked, type=item, tag=!lapis.ignore, distance=..2] at @s run function lapis:vacuum/check

tag @e[tag=lapis.item.checked] remove lapis.item.checked
tag @s remove lapis.temp.player