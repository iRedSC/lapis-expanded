

tag @s remove lapis.has_vacuum
execute if items entity @s hotbar.* #taglib:shulker_boxes[enchantments~[{"enchantments":"lapis:shulker_box/vacuum"}]] run tag @s add lapis.has_vacuum

advancement revoke @s only lapis:inventory_changed