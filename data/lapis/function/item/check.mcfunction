
execute if items entity @s contents *[minecraft:enchantments~[{enchantments:"lapis:any/permanence"}]] run function lapis:item/set_permanence
execute if items entity @s contents *[minecraft:enchantments~[{enchantments:"lapis:any/sticky"}]] run function lapis:item/set_sticky


tag @s add lapis.checked