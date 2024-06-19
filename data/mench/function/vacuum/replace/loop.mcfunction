

data modify storage mench:data temp.vacuum.temp set from storage mench:data temp.vacuum.box.block[-1]
data modify storage mench:data temp.vacuum.box.replaced append from storage mench:data temp.vacuum.box.block[-1]

$execute if data storage mench:data temp.vacuum.temp{id:"$(id)"} run function mench:vacuum/replace/check 

# say BOX
# tellraw @a {"nbt":"temp.vacuum.box.replaced","storage":"mench:data"}
execute if score $full_stack mench.temp matches 0 run function mench:vacuum/replace/replace

data remove storage mench:data temp.vacuum.box.block[-1]
execute if data storage mench:data temp.vacuum.box.block[0] run function mench:vacuum/replace/loop with storage mench:data temp.vacuum.item