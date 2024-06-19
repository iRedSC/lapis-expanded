
# data modify storage mench:data temp.vacuum.custom_data append value {}
data modify storage mench:data temp.vacuum.custom_data append from storage mench:data temp.vacuum.box.replaced[-1].Slot
# data modify storage mench:data temp.vacuum.custom_data[-1].data set from storage mench:data temp.vacuum.box.item[-1].components."minecraft:custom_data"

data modify storage mench:data temp.vacuum.box.replaced[-1].components."minecraft:custom_data" set value {mench_temp_lock:1b}
# tellraw @a {"nbt":"temp.vacuum.custom_data","storage":"mench:data"}