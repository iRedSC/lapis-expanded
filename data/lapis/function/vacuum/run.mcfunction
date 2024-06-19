
data remove storage lapis:data temp.vacuum
data modify storage lapis:data temp.vacuum.custom_data set value []
data modify storage lapis:data temp.vacuum.box.replaced set value []
data modify storage lapis:data temp.vacuum.box.block set value []



$function lapis:vacuum/setblock with entity @p[tag=lapis.temp.player] Inventory[{Slot:$(slot)b}]
$data modify storage lapis:data temp.vacuum.box.item set from entity @p[tag=lapis.temp.player] Inventory[{Slot:$(slot)b}].components."minecraft:container"

data modify storage lapis:data temp.vacuum.item set from entity @s Item
execute store result score $add_count lapis.temp run data get storage lapis:data temp.vacuum.item
function lapis:vacuum/convert_loop
data modify storage lapis:data temp.vacuum.box.unreplaced set from storage lapis:data temp.vacuum.box.block

function lapis:vacuum/replace/loop with storage lapis:data temp.vacuum.item


data modify block 440044 0 440044 Items set from storage lapis:data temp.vacuum.box.replaced

data modify block 440044 -2 440044 Items set from storage lapis:data temp.vacuum.box.unreplaced

item replace block 440044 -1 440044 container.0 from entity @s contents

scoreboard players reset $success lapis.temp

execute store result score $success lapis.temp run loot insert 440044 0 440044 mine 440044 -1 440044 minecraft:acacia_boat[minecraft:custom_data={drop_contents:1b}]
# tellraw @a {"nbt":"Items","block":"440044 -1 440044"}

$execute if score $success lapis.temp matches 1 run function lapis:vacuum/success {slot:$(slot)}