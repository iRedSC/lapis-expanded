
# loops through each packs enchantment registry and checks which are on the item

data modify storage enchantment_info:data temp.registry.current set from storage enchantment_info:data temp.registry.packs[-1]
function enchantment_info:load/generate_objects/loop_check

data remove storage enchantment_info:data temp.registry.packs[-1]

execute if data storage enchantment_info:data temp.registry.packs[0] run function enchantment_info:load/generate_objects/loop_available