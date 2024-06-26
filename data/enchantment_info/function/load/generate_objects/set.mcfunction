


$data modify storage enchantment_info:data temp.macro.max_level_numeral set from storage enchantment_info:data lookup.numerals.$(max_level)
$data modify storage enchantment_info:data temp.macro.level_numeral set from storage enchantment_info:data lookup.numerals.$(level)
$data modify storage enchantment_info:data temp.macro.tier_color set from storage enchantment_info:data lookup.tiers.$(tier)
data modify storage enchantment_info:data temp.macro.pack_name set from storage enchantment_info:data temp.registry.current.name


execute if data storage enchantment_info:data temp.macro{max_level: 1} run data modify storage enchantment_info:data temp.macro.level_numeral set value ""

data remove storage enchantment_info:data api.info
function enchantment_info:load/generate_objects/set_storage with storage enchantment_info:data temp.macro
function enchantment_info:load/generate_objects/run with storage enchantment_info:data temp.run