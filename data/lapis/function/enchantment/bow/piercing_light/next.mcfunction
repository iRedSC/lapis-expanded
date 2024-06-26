
# tellraw @a {"nbt":"{}", "entity":"@s"}
execute store result score $count lapis.temp if entity @e[tag=lapis.piercing_light]


execute in minecraft:overworld run summon marker 0.0 0.0 0.0 {Tags:["lapis.temp"]}
data modify entity @n[tag=lapis.temp] Pos set from entity @s Motion

tag @s add lapis.temp.arrow
execute positioned ~ ~-1 ~ as @e[tag=lapis.temp.test, distance=..2] if score @s lapis.id = @n[tag=lapis.temp.arrow] lapis.id run tag @s add lapis.temp.shooter
tag @e[tag=lapis.temp.shooter,type=!player] add lapis.temp.non_player
tag @s remove lapis.temp.arrow

execute if score $count lapis.temp matches 50.. if entity @n[tag=lapis.temp.non_player] positioned 0.0 0.0 0.0 facing entity @n[tag=lapis.temp] eyes positioned as @s rotated ~ ~10 run function lapis:enchantment/bow/piercing_light/cast_slow
execute unless score $count lapis.temp matches 50.. if entity @n[tag=lapis.temp.non_player] positioned 0.0 0.0 0.0 facing entity @n[tag=lapis.temp] eyes positioned as @s rotated ~ ~10 run function lapis:enchantment/bow/piercing_light/cast
execute if score $count lapis.temp matches 50.. unless entity @n[tag=lapis.temp.non_player] positioned 0.0 0.0 0.0 facing entity @n[tag=lapis.temp] eyes positioned as @s run function lapis:enchantment/bow/piercing_light/cast_light
execute unless score $count lapis.temp matches 50.. unless entity @n[tag=lapis.temp.non_player] positioned 0.0 0.0 0.0 facing entity @n[tag=lapis.temp] eyes positioned as @s run function lapis:enchantment/bow/piercing_light/cast


tag @n[tag=lapis.temp.shooter] remove lapis.temp.shooter
tag @n[tag=lapis.temp.non_player] remove lapis.temp.non_player
tag @n[tag=lapis.knockoff.dropped] remove lapis.knockoff.dropped

kill @e[tag=lapis.temp]
kill @s