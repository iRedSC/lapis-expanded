

execute if items entity @s weapon.mainhand minecraft:goat_horn[minecraft:enchantments~[{enchantments:"lapis:goat_horn/call_companions"}]] store result score $level lapis.temp run data get entity @s SelectedItem.components."minecraft:enchantments".levels."lapis:goat_horn/call_companions"
execute unless items entity @s weapon.mainhand minecraft:goat_horn[minecraft:enchantments~[{enchantments:"lapis:goat_horn/call_companions"}]] store result score $level lapis.temp run data get entity @s Inventory[{Slot:-106b}].components."minecraft:enchantments".levels."lapis:goat_horn/call_companions"

execute if predicate lapis:chance/0.5 rotated ~ 0 positioned ^-1 ^ ^1 if block ~ ~ ~ #taglib:walk_through run function lapis:enchantment/goat_horn/call_companions/summon
execute if predicate lapis:chance/0.5 rotated ~ 0 positioned ^1 ^ ^1 if score $level lapis.temp matches 2..3 if block ~ ~ ~ #taglib:walk_through run function lapis:enchantment/goat_horn/call_companions/summon
execute rotated ~ 0 positioned ^ ^ ^1 if score $level lapis.temp matches 3 if block ~ ~ ~ #taglib:walk_through run function lapis:enchantment/goat_horn/call_companions/summon

tag @s add lapis.temp.player
execute as @e[tag=lapis.temp] run data modify entity @s Owner set from entity @n[tag=lapis.temp.player] UUID
scoreboard players set @e[tag=lapis.temp] lapis.lifetime 400
tag @e[tag=lapis.temp] remove lapis.temp



tag @s remove lapis.temp.player

schedule function lapis:enchantment/goat_horn/reset_score 1t replace
advancement revoke @s only lapis:enchantment/goat_horn/call_companions/play