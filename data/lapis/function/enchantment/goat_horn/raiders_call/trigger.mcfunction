

execute if items entity @s weapon.mainhand minecraft:goat_horn[minecraft:enchantments~[{enchantments:"lapis:goat_horn/raiders_call"}]] store result score $level lapis.temp run data get entity @s SelectedItem.components."minecraft:enchantments".levels."lapis:goat_horn/raiders_call"
execute unless items entity @s weapon.mainhand minecraft:goat_horn[minecraft:enchantments~[{enchantments:"lapis:goat_horn/raiders_call"}]] store result score $level lapis.temp run data get entity @s Inventory[{Slot:-106b}].components."minecraft:enchantments".levels."lapis:goat_horn/raiders_call"


execute if predicate lapis:chance/0.1 if score $level lapis.temp matches 1 run effect give @s raid_omen 30 0
execute if predicate lapis:chance/0.1 if score $level lapis.temp matches 2 run effect give @s raid_omen 30 1
execute if predicate lapis:chance/0.1 if score $level lapis.temp matches 3 run effect give @s raid_omen 30 2
execute if predicate lapis:chance/0.1 if score $level lapis.temp matches 4 run effect give @s raid_omen 30 3
execute if predicate lapis:chance/0.1 if score $level lapis.temp matches 5 run effect give @s raid_omen 30 4

schedule function lapis:enchantment/goat_horn/reset_score 1t replace
advancement revoke @s only lapis:enchantment/goat_horn/raiders_call/play