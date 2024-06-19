
tag @s add lapis.item.checked
execute store result score $pickup_delay lapis.temp run data get entity @s PickupDelay
execute unless predicate lapis:enchantments/no_vacuum if score $pickup_delay lapis.temp matches ..1 run function lapis:vacuum/find