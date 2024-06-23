execute store result score $tile_drops lapis.temp run gamerule doTileDrops
gamerule doTileDrops false
execute as @p[tag=lapis.temp.mined_block] run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand

function lapis:block/marker/trigger/post_destroy

setblock ~ ~ ~ air destroy

execute if score $tile_drops lapis.temp matches 1 run gamerule doTileDrops true