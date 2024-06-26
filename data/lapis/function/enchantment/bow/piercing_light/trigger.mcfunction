
execute as @n[type=!#taglib:non_living] run function lapis:id/get
scoreboard players operation @s lapis.id = @n[type=!#taglib:non_living] lapis.id
tag @n[type=!#taglib:non_living] add lapis.temp.test
scoreboard players set @s lapis.lifetime 150
tag @s add lapis.piercing_light

execute if data entity @s weapon.components."minecraft:enchantments".levels."lapis:bow/knockoff" run tag @s add lapis.knockoff

playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 2 1 1
playsound minecraft:block.beacon.activate master @a ~ ~ ~ 2 0 1
playsound minecraft:block.respawn_anchor.charge master @a ~ ~ ~ 2 2 1

schedule function lapis:enchantment/bow/piercing_light/test 1t append

