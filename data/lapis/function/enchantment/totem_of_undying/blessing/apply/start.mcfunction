

execute store result storage lapis:data temp.blessing.index int 1 run scoreboard players get $result lapis.temp 
execute store result storage lapis:data temp.blessing.level int 1 run scoreboard players get $level lapis.temp 

function lapis:enchantment/totem_of_undying/blessing/apply/run with storage lapis:data temp.blessing