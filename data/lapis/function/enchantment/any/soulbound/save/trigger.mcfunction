


data modify storage lapis:data temp.soulbound.saved set value []

data modify storage lapis:data temp.soulbound.inventory set from entity @s Inventory
function lapis:enchantment/any/soulbound/save/loop

$data modify storage lapis:data db.players.$(id).soulbound set from storage lapis:data temp.soulbound.saved
