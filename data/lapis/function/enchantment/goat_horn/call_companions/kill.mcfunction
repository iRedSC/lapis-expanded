

particle minecraft:poof ~ ~ ~ 0 0 0 0.1 25 force @a
data modify entity @s Owner set value [I; 1, 1, 1, 1]
tp @s ~ ~300 ~
kill @s
playsound minecraft:entity.breeze.land master @a ~ ~ ~ 1 1 0