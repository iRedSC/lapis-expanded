

data remove storage lapis:data temp.soulbound.saved

$data modify storage lapis:data temp.soulbound.saved set from storage lapis:data db.players.$(id).soulbound

execute if data storage lapis:data temp.soulbound.saved run function lapis:enchantment/any/soulbound/load/loop