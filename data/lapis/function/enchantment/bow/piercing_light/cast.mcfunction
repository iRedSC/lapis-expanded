
scoreboard players remove @s lapis.lifetime 1

# execute if score @s lapis.lifetime matches ..375 run particle dust{color:[0.463,0.278,0.827],scale:1} ~ ~ ~ 0 0 0 1 0 force
execute if score @s lapis.lifetime matches ..145 run particle minecraft:ominous_spawning ~ ~ ~ 0 0 0 1 0 force
execute if score @s lapis.lifetime matches ..145 run particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0 0 0 1 0 force

execute positioned ~ ~-0.5 ~ as @e[type=!#taglib:non_living, tag=!lapis.temp.shooter,distance=..1.5] run damage @s 4 lapis:piercing_light by @s from @n[tag=lapis.temp.shooter]
execute if entity @s[tag=lapis.knockoff] positioned ~ ~-0.5 ~ as @e[type=!#taglib:non_living, tag=!lapis.temp.shooter, distance=..1.5, tag=!lapis.knockoff.dropped] run function lapis:enchantment/bow/knockoff/trigger

execute positioned ^ ^ ^0.5 if block ~ ~ ~ #lapis:piercing_light if score @s lapis.lifetime matches 1.. run function lapis:enchantment/bow/piercing_light/cast