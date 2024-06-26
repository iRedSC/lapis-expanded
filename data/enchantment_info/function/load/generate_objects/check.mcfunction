
# use macro to check if enchantment is on item

$execute unless data storage enchantment_info:data temp.item."$(id)" run return fail

$data modify storage enchantment_info:data temp.macro set from storage enchantment_info:data registry.info."$(id)"
$data modify storage enchantment_info:data temp.macro.level set from storage enchantment_info:data temp.item."$(id)"

function enchantment_info:load/generate_objects/set with storage enchantment_info:data temp.macro