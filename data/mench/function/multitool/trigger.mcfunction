
scoreboard players set $ mench.temp 0
execute unless score $ mench.temp matches 1.. store success score $ mench.temp if predicate mench:multitool/diamond/mainhand/shovel run item modify entity @s weapon.mainhand mench:multitool/diamond/axe
execute unless score $ mench.temp matches 1.. store success score $ mench.temp if predicate mench:multitool/diamond/mainhand/pickaxe run item modify entity @s weapon.mainhand mench:multitool/diamond/shovel
execute unless score $ mench.temp matches 1.. store success score $ mench.temp if predicate mench:multitool/diamond/mainhand/hoe run item modify entity @s weapon.mainhand mench:multitool/diamond/pickaxe
execute unless score $ mench.temp matches 1.. store success score $ mench.temp if predicate mench:multitool/diamond/mainhand/axe run item modify entity @s weapon.mainhand mench:multitool/diamond/hoe

execute unless score $ mench.temp matches 1.. store success score $ mench.temp if predicate mench:multitool/diamond/offhand/shovel run item modify entity @s weapon.offhand mench:multitool/diamond/axe
execute unless score $ mench.temp matches 1.. store success score $ mench.temp if predicate mench:multitool/diamond/offhand/pickaxe run item modify entity @s weapon.offhand mench:multitool/diamond/shovel
execute unless score $ mench.temp matches 1.. store success score $ mench.temp if predicate mench:multitool/diamond/offhand/hoe run item modify entity @s weapon.offhand mench:multitool/diamond/pickaxe
execute unless score $ mench.temp matches 1.. store success score $ mench.temp if predicate mench:multitool/diamond/offhand/axe run item modify entity @s weapon.offhand mench:multitool/diamond/hoe

advancement revoke @s only mench:multitool