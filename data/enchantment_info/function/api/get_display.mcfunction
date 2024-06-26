

$data modify storage enchantment_info:data temp.macro set from storage enchantment_info:data registry.info."$(id)"
$data modify storage enchantment_info:data temp.macro.level set value $(level)

function enchantment_info:api/__internal__/load/set with storage enchantment_info:data temp.macro