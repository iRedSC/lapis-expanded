
execute if predicate lapis:chance/0.5 run particle minecraft:electric_spark ~ ~1 ~ 0 0.5 0 2 2
damage @s 0.05 lapis:shock
scoreboard players remove @s lapis.shock_duration 1