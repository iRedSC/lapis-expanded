
# loop through an enchantment registry and check if any are on the item


data modify storage enchantment_info:data temp.macro set value {}
data modify storage enchantment_info:data temp.macro.id set from storage enchantment_info:data temp.registry.current.enchantments[-1]
# tellraw @a {"nbt": "temp.macro", "storage": "enchantment_info:data"}
function enchantment_info:load/generate_objects/check with storage enchantment_info:data temp.macro

data remove storage enchantment_info:data temp.registry.current.enchantments[-1]

execute if data storage enchantment_info:data temp.registry.current.enchantments[0] run function enchantment_info:load/generate_objects/loop_check