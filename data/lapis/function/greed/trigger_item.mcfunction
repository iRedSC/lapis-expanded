scoreboard players set $ lapis.temp 0

data remove storage lapis:data temp.thrower
data modify storage lapis:data temp.thrower set from entity @s Thrower
execute store success score $ lapis.temp run data modify storage lapis:data temp.thrower set from entity @a[limit=1,tag=lapis.greed.player] UUID
execute if score $ lapis.temp matches 1 run function lapis:greed/apply_item
