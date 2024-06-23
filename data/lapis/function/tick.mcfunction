execute as @e[tag=lapis.tick] at @s run function lapis:entity/tick

execute as @e[scores={lapis.shock_duration=1..}] at @s run function lapis:enchantment/weapon/shocking_strikes/shock

execute as @e[tag=lapis.particle] at @s run function lapis:particle

execute as @e[type=item, tag=!lapis.checked] at @s run function lapis:item/check

execute as @a[tag=lapis.has_vacuum] at @s run function lapis:vacuum/trigger

execute as @a[scores={lapis.time_since_death=1}] at @s run function #lapis:respawn

execute as @a[tag=!lapis.restoration, tag=lapis.restoration.save] run function lapis:enchantment/totem_of_undying/restoration/remove
tag @a remove lapis.restoration