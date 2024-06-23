
execute if items entity @s weapon.offhand *[minecraft:enchantments~[{}]|minecraft:stored_enchantments~[{}]] run item replace entity @n[tag=enchantment_info] contents from entity @s weapon.offhand
execute if items entity @s weapon.mainhand *[minecraft:enchantments~[{}]|minecraft:stored_enchantments~[{}]] run item replace entity @n[tag=enchantment_info] contents from entity @s weapon.mainhand


execute unless score @s enchantment_info.cooldown matches 1.. run tellraw @s ["",{"text":"••• ","color":"white"},{"text":"Enchantments","color":"aqua"},{"text":" •••\n","color":"white"}]
execute unless score @s enchantment_info.cooldown matches 1.. run function #enchantment_info:enchantments
execute unless score @s enchantment_info.cooldown matches 1.. run function #enchantment_info:stored_enchantments
execute unless score @s enchantment_info.cooldown matches 1.. run tellraw @s {"text":"\n•••••••••••••••••••••••••••••••","color":"white"}

item replace entity @n[tag=enchantment_info] contents with bedrock
scoreboard players reset @s enchantment_info
execute unless score @s enchantment_info.cooldown matches 4.. run scoreboard players add @s enchantment_info.cooldown 2
advancement revoke @s only enchantment_info:trigger