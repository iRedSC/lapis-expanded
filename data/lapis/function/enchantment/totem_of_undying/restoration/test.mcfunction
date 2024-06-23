
tag @s add lapis.restoration
execute unless entity @s[tag=lapis.restoration.save] run function lapis:enchantment/totem_of_undying/restoration/save/trigger
tag @s add lapis.restoration.save