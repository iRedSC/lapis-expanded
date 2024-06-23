
scoreboard players set @s lapis.tag.vampiric 1
execute unless predicate lapis:is_daylight run attribute @s minecraft:generic.attack_damage modifier add lapis:armor/vampiric 2 add_value
execute unless predicate lapis:is_daylight run attribute @s minecraft:generic.max_health modifier add lapis:armor/vampiric 20 add_value
execute unless predicate lapis:is_daylight run return run attribute @s minecraft:generic.movement_speed modifier add lapis:armor/vampiric 0.25 add_multiplied_total
function lapis:enchantment/armor/vampiric/remove