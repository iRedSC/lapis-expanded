

execute store result score $result lapis.temp run random value 0..13
scoreboard players set $level lapis.temp 0

function lapis:enchantment/totem_of_undying/blessing/apply/start

advancement revoke @s only lapis:enchantment/totem_of_undying/blessing/use/level_1