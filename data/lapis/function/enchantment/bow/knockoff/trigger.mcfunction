
tag @s add lapis.knockoff.dropped
execute if predicate lapis:chance/0.25 run function lapis:enchantment/bow/knockoff/drop {slot:"armor.head"}
execute if predicate lapis:chance/0.25 run function lapis:enchantment/bow/knockoff/drop {slot:"armor.chest"}
execute if predicate lapis:chance/0.25 run function lapis:enchantment/bow/knockoff/drop {slot:"armor.legs"}
execute if predicate lapis:chance/0.25 run function lapis:enchantment/bow/knockoff/drop {slot:"armor.feet"}

execute if predicate lapis:chance/0.25 run function lapis:enchantment/bow/knockoff/drop {slot:"weapon.mainhand"}
execute if predicate lapis:chance/0.25 run function lapis:enchantment/bow/knockoff/drop {slot:"weapon.offhand"}