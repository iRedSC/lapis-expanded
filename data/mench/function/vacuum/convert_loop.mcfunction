


data modify storage mench:data temp.vacuum.box.item[-1].item.slot set from storage mench:data temp.vacuum.box.item[-1].slot


# tellraw @a {"nbt":"temp.vacuum.box.item[-1]","storage":"mench:data"}


execute unless data storage mench:data temp.vacuum.box.item[-1].item.components run function mench:vacuum/convert/no_components with storage mench:data temp.vacuum.box.item[-1].item
execute if data storage mench:data temp.vacuum.box.item[-1].item.components run function mench:vacuum/convert/components with storage mench:data temp.vacuum.box.item[-1].item

data remove storage mench:data temp.vacuum.box.item[-1]

execute if data storage mench:data temp.vacuum.box.item[0] run function mench:vacuum/convert_loop
