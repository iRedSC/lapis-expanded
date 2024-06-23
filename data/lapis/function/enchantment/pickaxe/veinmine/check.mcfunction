

execute as @p[tag=lapis.temp.mined_block] unless predicate lapis:enchantment/holding/veinmine run return fail
execute as @p[tag=lapis.temp.mined_block] store result score $level lapis.temp run data get entity @s SelectedItem.components."minecraft:enchantments".levels."lapis:pickaxe/veinmine"

execute if score $level lapis.temp matches 1 run scoreboard players set $temp lapis.veinmine 2
execute if score $level lapis.temp matches 2 run scoreboard players set $temp lapis.veinmine 4
execute if score $level lapis.temp matches 3 run scoreboard players set $temp lapis.veinmine 6
scoreboard players operation @s lapis.veinmine = $temp lapis.veinmine

execute store success score $success lapis.temp run function lapis:enchantment/pickaxe/veinmine/test with storage minesense:data data
execute if score $success lapis.temp matches 1 if block ~ ~ ~ #minecraft:air run function lapis:enchantment/pickaxe/veinmine/start