
execute if items entity @s weapon.offhand *[minecraft:enchantments~[{}]|minecraft:stored_enchantments~[{}]] run item replace entity @n[tag=enchantment_info] contents from entity @s weapon.offhand
execute if items entity @s weapon.mainhand *[minecraft:enchantments~[{}]|minecraft:stored_enchantments~[{}]] run item replace entity @n[tag=enchantment_info] contents from entity @s weapon.mainhand


execute unless score @s enchantment_info.cooldown matches 1.. run tellraw @s ["",{"text":"••• ","color":"white"},{"text":"Enchantments","color":"aqua"},{"text":" •••\n","color":"white"}]
execute unless score @s enchantment_info.cooldown matches 1.. run function enchantment_info:load/item_to_storage
execute unless score @s enchantment_info.cooldown matches 1.. run tellraw @s {"text":"\n•••••••••••••••••••••••••••••••","color":"white"}

item replace entity @n[tag=enchantment_info] contents with air
scoreboard players reset @s enchantment_info