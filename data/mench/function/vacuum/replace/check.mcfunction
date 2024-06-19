
data remove storage mench:data temp.vacuum.stack_check
execute store result score $count mench.temp run data get storage mench:data temp.vacuum.box.replaced[-1].count

# tellraw @a {"nbt":"temp.vacuum.box.replaced[-1]","storage":"mench:data"}

scoreboard players operation $count mench.temp += $add_count mench.temp
execute store result storage mench:data temp.vacuum.stack_check.count int 1 run scoreboard players get $count mench.temp
data modify storage mench:data temp.vacuum.stack_check.max_stack_size set from storage mench:data temp.vacuum.box.replaced[-1].components."minecraft:max_stack_size"
data modify storage mench:data temp.vacuum.stack_check.id set from storage mench:data temp.vacuum.box.replaced[-1].id

scoreboard players reset $full_stack mench.temp
execute unless data storage mench:data temp.vacuum.stack_check.max_stack_size run function mench:vacuum/replace/default with storage mench:data temp.vacuum.stack_check
execute if data storage mench:data temp.vacuum.stack_check.max_stack_size run function mench:vacuum/replace/custom with storage mench:data temp.vacuum.stack_check