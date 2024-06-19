execute store result score $tile_drops lapis.temp run gamerule doTileDrops
gamerule doTileDrops false
execute as @p[tag=lapis.temp.player] run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ air destroy
execute if score $tile_drops lapis.temp matches 1 run gamerule doTileDrops true