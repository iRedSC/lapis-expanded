
data modify storage enchantment_info:data temp.display set value []
data modify storage enchantment_info:data temp.item set from entity @n[tag=enchantment_info] Item.components."minecraft:enchantments".levels
data modify storage enchantment_info:data temp.item merge from entity @n[tag=enchantment_info] Item.components."minecraft:stored_enchantments".levels
function enchantment_info:load/generate_objects/start {run: 'tellraw @s {"nbt":"api.info.full","storage":"enchantment_info:data","interpret":true}'}