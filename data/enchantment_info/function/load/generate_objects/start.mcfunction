
$data modify storage enchantment_info:data temp.run.run set value '$(run)'
data modify storage enchantment_info:data temp.registry.packs set from storage enchantment_info:data registry.packs
function enchantment_info:load/generate_objects/loop_available