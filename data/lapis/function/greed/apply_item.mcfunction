
data modify entity @s Owner set from entity @a[limit=1, tag=lapis.greed.player] UUID
data modify entity @s PickupDelay set value 1
tp @s ~ ~ ~

tag @s add lapis.greed