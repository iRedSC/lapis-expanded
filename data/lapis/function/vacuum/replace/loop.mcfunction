

data modify storage lapis:data temp.vacuum.temp set from storage lapis:data temp.vacuum.box.block[-1]
data modify storage lapis:data temp.vacuum.box.replaced append from storage lapis:data temp.vacuum.box.block[-1]

$execute if data storage lapis:data temp.vacuum.temp{id:"$(id)"} run function lapis:vacuum/replace/check 

# say BOX
# tellraw @a {"nbt":"temp.vacuum.box.replaced","storage":"lapis:data"}
execute if score $full_stack lapis.temp matches 0 run function lapis:vacuum/replace/replace

data remove storage lapis:data temp.vacuum.box.block[-1]
execute if data storage lapis:data temp.vacuum.box.block[0] run function lapis:vacuum/replace/loop with storage lapis:data temp.vacuum.item