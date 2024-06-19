
tag @s add mench.item.checked
execute store result score $pickup_delay mench.temp run data get entity @s PickupDelay
execute unless predicate mench:enchantments/no_vacuum if score $pickup_delay mench.temp matches ..1 run function mench:vacuum/find