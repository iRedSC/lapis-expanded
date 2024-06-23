

execute if items entity @s weapon.mainhand minecraft:goat_horn[minecraft:enchantments~[{enchantments:"lapis:goat_horn/inspiring_call"}]] store result score $level lapis.temp run data get entity @s SelectedItem.components."minecraft:enchantments".levels."lapis:goat_horn/inspiring_call"
execute unless items entity @s weapon.mainhand minecraft:goat_horn[minecraft:enchantments~[{enchantments:"lapis:goat_horn/inspiring_call"}]] store result score $level lapis.temp run data get entity @s Inventory[{Slot:-106b}].components."minecraft:enchantments".levels."lapis:goat_horn/inspiring_call"


execute if predicate lapis:chance/0.25 if score $level lapis.temp matches 1 run function lapis:enchantment/goat_horn/inspiring_call/apply {duration: 10, amp: 0}
execute if predicate lapis:chance/0.25 if score $level lapis.temp matches 2 run function lapis:enchantment/goat_horn/inspiring_call/apply {duration: 15, amp: 0}
execute if predicate lapis:chance/0.25 if score $level lapis.temp matches 3 run function lapis:enchantment/goat_horn/inspiring_call/apply {duration: 20, amp: 1}

schedule function lapis:enchantment/goat_horn/reset_score 1t replace

advancement revoke @s only lapis:enchantment/goat_horn/inspiring_call/play