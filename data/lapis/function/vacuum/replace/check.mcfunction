
data remove storage lapis:data temp.vacuum.stack_check
execute store result score $count lapis.temp run data get storage lapis:data temp.vacuum.box.replaced[-1].count

# tellraw @a {"nbt":"temp.vacuum.box.replaced[-1]","storage":"lapis:data"}

scoreboard players operation $count lapis.temp += $add_count lapis.temp
execute store result storage lapis:data temp.vacuum.stack_check.count int 1 run scoreboard players get $count lapis.temp
data modify storage lapis:data temp.vacuum.stack_check.max_stack_size set from storage lapis:data temp.vacuum.box.replaced[-1].components."minecraft:max_stack_size"
data modify storage lapis:data temp.vacuum.stack_check.id set from storage lapis:data temp.vacuum.box.replaced[-1].id

scoreboard players reset $full_stack lapis.temp
execute unless data storage lapis:data temp.vacuum.stack_check.max_stack_size run function lapis:vacuum/replace/default with storage lapis:data temp.vacuum.stack_check
execute if data storage lapis:data temp.vacuum.stack_check.max_stack_size run function lapis:vacuum/replace/custom with storage lapis:data temp.vacuum.stack_check