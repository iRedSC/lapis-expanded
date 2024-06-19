
tag @s add mench.temp.player

execute as @e[type=item, tag=!mench.ignore, distance=..2] at @s run function mench:vacuum/check
execute positioned ~ ~1 ~ as @e[tag=!mench.item.checked, type=item, tag=!mench.ignore, distance=..2] at @s run function mench:vacuum/check

tag @e[tag=mench.item.checked] remove mench.item.checked
tag @s remove mench.temp.player