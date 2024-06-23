execute as @a if items entity @s weapon.mainhand minecraft:enchanted_book[!minecraft:custom_data] run item modify entity @s weapon.mainhand enchantment_info:set_component
execute as @a if items entity @s weapon.offhand minecraft:enchanted_book[!minecraft:custom_data] run item modify entity @s weapon.offhand enchantment_info:set_component

scoreboard players enable @a enchantment_info
execute as @a[scores={enchantment_info=1..}] run function enchantment_info:trigger

scoreboard players remove @a[scores={enchantment_info.cooldown=1..}] enchantment_info.cooldown 1    