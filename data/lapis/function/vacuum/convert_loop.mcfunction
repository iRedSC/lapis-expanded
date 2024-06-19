


data modify storage lapis:data temp.vacuum.box.item[-1].item.slot set from storage lapis:data temp.vacuum.box.item[-1].slot


# tellraw @a {"nbt":"temp.vacuum.box.item[-1]","storage":"lapis:data"}


execute unless data storage lapis:data temp.vacuum.box.item[-1].item.components run function lapis:vacuum/convert/no_components with storage lapis:data temp.vacuum.box.item[-1].item
execute if data storage lapis:data temp.vacuum.box.item[-1].item.components run function lapis:vacuum/convert/components with storage lapis:data temp.vacuum.box.item[-1].item

data remove storage lapis:data temp.vacuum.box.item[-1]

execute if data storage lapis:data temp.vacuum.box.item[0] run function lapis:vacuum/convert_loop
