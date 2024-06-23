
execute as @p[tag=lapis.temp.mined_block] unless predicate lapis:enchantment/holding/voiding run return fail
execute if block ~ ~ ~ #minecraft:air run function lapis:enchantment/tool/voiding/destroy