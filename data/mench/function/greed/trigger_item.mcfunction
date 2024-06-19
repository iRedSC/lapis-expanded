scoreboard players set $ mench.temp 0

data remove storage mench:data temp.thrower
data modify storage mench:data temp.thrower set from entity @s Thrower
execute store success score $ mench.temp run data modify storage mench:data temp.thrower set from entity @a[limit=1,tag=mench.greed.player] UUID
execute if score $ mench.temp matches 1 run function mench:greed/apply_item
