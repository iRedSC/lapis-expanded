
# data modify storage lapis:data temp.vacuum.custom_data append value {}
data modify storage lapis:data temp.vacuum.custom_data append from storage lapis:data temp.vacuum.box.replaced[-1].Slot
# data modify storage lapis:data temp.vacuum.custom_data[-1].data set from storage lapis:data temp.vacuum.box.item[-1].components."minecraft:custom_data"

data modify storage lapis:data temp.vacuum.box.replaced[-1].components."minecraft:custom_data" set value {lapis_temp_lock:1b}
# tellraw @a {"nbt":"temp.vacuum.custom_data","storage":"lapis:data"}