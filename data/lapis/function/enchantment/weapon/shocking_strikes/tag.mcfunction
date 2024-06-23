

execute store result score $level lapis.temp run data get entity @s SelectedItem.components."minecraft:enchantments".levels."lapis:weapon/shocking_strikes"
scoreboard players operation $level lapis.temp *= $num.20 lapis.const