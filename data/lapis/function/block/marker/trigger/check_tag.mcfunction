

tag @s add lapis.temp.block_marker

execute if entity @s[tag=lapis.blast] run function lapis:enchantment/tool/blast/check
execute if entity @s[tag=lapis.veinmine] run function lapis:enchantment/pickaxe/veinmine/check
execute if entity @s[tag=lapis.chopping] run function lapis:enchantment/tool/chopping/check

function lapis:block/marker/trigger/post_destroy

kill @s