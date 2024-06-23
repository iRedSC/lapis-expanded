
$execute if items entity @s weapon.mainhand totem_of_undying[minecraft:enchantments~[{enchantments:"lapis:totem_of_undying/restoration"}]] run data modify storage lapis:data restoration.saved.$(id).item set from entity @s SelectedItem 
$execute if items entity @s weapon.mainhand totem_of_undying[minecraft:enchantments~[{enchantments:"lapis:totem_of_undying/restoration"}]] run data modify storage lapis:data restoration.saved.$(id).slot set value "weapon.mainhand"

$execute if items entity @s weapon.offhand totem_of_undying[minecraft:enchantments~[{enchantments:"lapis:totem_of_undying/restoration"}]] run data modify storage lapis:data restoration.saved.$(id).item set from entity @s Inventory[{Slot:-106b}]
$execute if items entity @s weapon.offhand totem_of_undying[minecraft:enchantments~[{enchantments:"lapis:totem_of_undying/restoration"}]] run data modify storage lapis:data restoration.saved.$(id).slot set value "weapon.offhand"

$data remove storage lapis:data restoration.saved.$(id).item.components."minecraft:enchantments".levels."lapis:totem_of_undying/restoration"