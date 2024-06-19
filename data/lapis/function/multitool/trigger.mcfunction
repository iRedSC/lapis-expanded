
scoreboard players set $ lapis.temp 0
execute unless score $ lapis.temp matches 1.. store success score $ lapis.temp if predicate lapis:multitool/diamond/mainhand/shovel run item modify entity @s weapon.mainhand lapis:multitool/diamond/axe
execute unless score $ lapis.temp matches 1.. store success score $ lapis.temp if predicate lapis:multitool/diamond/mainhand/pickaxe run item modify entity @s weapon.mainhand lapis:multitool/diamond/shovel
execute unless score $ lapis.temp matches 1.. store success score $ lapis.temp if predicate lapis:multitool/diamond/mainhand/hoe run item modify entity @s weapon.mainhand lapis:multitool/diamond/pickaxe
execute unless score $ lapis.temp matches 1.. store success score $ lapis.temp if predicate lapis:multitool/diamond/mainhand/axe run item modify entity @s weapon.mainhand lapis:multitool/diamond/hoe

execute unless score $ lapis.temp matches 1.. store success score $ lapis.temp if predicate lapis:multitool/diamond/offhand/shovel run item modify entity @s weapon.offhand lapis:multitool/diamond/axe
execute unless score $ lapis.temp matches 1.. store success score $ lapis.temp if predicate lapis:multitool/diamond/offhand/pickaxe run item modify entity @s weapon.offhand lapis:multitool/diamond/shovel
execute unless score $ lapis.temp matches 1.. store success score $ lapis.temp if predicate lapis:multitool/diamond/offhand/hoe run item modify entity @s weapon.offhand lapis:multitool/diamond/pickaxe
execute unless score $ lapis.temp matches 1.. store success score $ lapis.temp if predicate lapis:multitool/diamond/offhand/axe run item modify entity @s weapon.offhand lapis:multitool/diamond/hoe

advancement revoke @s only lapis:multitool