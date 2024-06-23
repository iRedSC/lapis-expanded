

tag @s add lapis.temp.player

summon marker ^ ^ ^3 {Tags:["lapis.launch.target"]}
execute at @n[tag=lapis.launch.target] run particle flame ~ ~ ~ 0 0 0 0 1 force @a

execute as @e[tag=test.launch] at @s unless entity @n[tag=lapis.launch.target,distance=..0.3] facing entity @n[tag=lapis.launch.target] feet run function lapis:launch_toward
kill @e[tag=lapis.launch.target]
tag @s remove lapis.temp.player