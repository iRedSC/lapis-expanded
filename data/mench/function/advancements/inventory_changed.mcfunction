

advancement grant @s from mench:root
function mench:advancements/display

tag @s remove mench.has_vacuum
execute if items entity @s hotbar.* #taglib:shulker_boxes[enchantments~[{"enchantments":"mench:vacuum"}]] run tag @s add mench.has_vacuum

advancement revoke @s only mench:inventory_changed