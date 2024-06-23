

execute if items entity @n[tag=enchantment_info] contents enchanted_book[stored_enchantments~[{enchantments:"minecraft:protection"}]] run tellraw @s {"text":"[Protection]","color":"gray","hoverEvent":{"action":"show_text","contents":["Protection is cool"]}}