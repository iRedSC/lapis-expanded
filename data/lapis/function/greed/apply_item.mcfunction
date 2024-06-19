
data modify entity @s Owner set from entity @a[limit=1, tag=lapis.greed.player] UUID
data modify entity @s PickupDelay set value 1
execute at @s run particle minecraft:shriek{delay:0}
playsound minecraft:ui.toast.in master @a ~ ~ ~ 1 2 0
tp @s ~ ~ ~

tag @s add lapis.greed