
execute as @e[tag=lapis.particle] at @s run function lapis:particle
execute as @e[type=item, tag=!lapis.checked] run function lapis:item/check
tag @e[tag=!lapis.ignore, tag=!lapis, type=marker] add lapis.ignore

execute as @a[tag=lapis.has_vacuum] at @s run function lapis:vacuum/trigger

execute as @a[scores={lapis.time_since_death=1}] at @s run function #lapis:respawn

