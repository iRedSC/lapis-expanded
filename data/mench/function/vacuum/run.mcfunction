
data remove storage mench:data temp.vacuum
data modify storage mench:data temp.vacuum.custom_data set value []
data modify storage mench:data temp.vacuum.box.replaced set value []
data modify storage mench:data temp.vacuum.box.block set value []



$function mench:vacuum/setblock with entity @p[tag=mench.temp.player] Inventory[{Slot:$(slot)b}]
$data modify storage mench:data temp.vacuum.box.item set from entity @p[tag=mench.temp.player] Inventory[{Slot:$(slot)b}].components."minecraft:container"

data modify storage mench:data temp.vacuum.item set from entity @s Item
execute store result score $add_count mench.temp run data get storage mench:data temp.vacuum.item
function mench:vacuum/convert_loop
data modify storage mench:data temp.vacuum.box.unreplaced set from storage mench:data temp.vacuum.box.block

function mench:vacuum/replace/loop with storage mench:data temp.vacuum.item


data modify block 440044 0 440044 Items set from storage mench:data temp.vacuum.box.replaced

data modify block 440044 -2 440044 Items set from storage mench:data temp.vacuum.box.unreplaced

item replace block 440044 -1 440044 container.0 from entity @s contents

scoreboard players reset $success mench.temp

execute store result score $success mench.temp run loot insert 440044 0 440044 mine 440044 -1 440044 minecraft:acacia_boat[minecraft:custom_data={drop_contents:1b}]
# tellraw @a {"nbt":"Items","block":"440044 -1 440044"}

$execute if score $success mench.temp matches 1 run function mench:vacuum/success {slot:$(slot)}