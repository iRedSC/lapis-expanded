
execute as @p[tag=lapis.temp.mined_block] at @s unless predicate lapis:enchantment/holding/blast run return fail
execute facing entity @p[tag=lapis.temp.mined_block] eyes if block ~ ~ ~ #minecraft:air run function lapis:enchantment/tool/blast/destroy with storage minesense:data data