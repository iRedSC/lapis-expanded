
# $data modify storage lapis:data soulbound.saved.$(id) set value []
data modify storage lapis:data soulbound.temp.saved set value []

data modify storage lapis:data soulbound.temp.inventory set from entity @s Inventory
function lapis:soulbound/save/loop

$data modify storage lapis:data soulbound.saved.$(id) set from storage lapis:data soulbound.temp.saved
