

tag @s remove lapis.temp
scoreboard players operation $temp lapis.veinmine = @s lapis.veinmine
scoreboard players remove $temp lapis.veinmine 1

execute if score $temp lapis.veinmine matches 1.. run return run function lapis:axe/chopping/run
kill @s