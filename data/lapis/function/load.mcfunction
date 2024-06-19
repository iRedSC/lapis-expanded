

# scoreboard objectives add lapis.pickup_delay dummy
# scoreboard objectives add lapis.spawned dummy

scoreboard objectives add lapis.veinmine dummy

scoreboard objectives add lapis.temp dummy
scoreboard players set $loaded lapis.temp 1

scoreboard objectives add lapis.id dummy
scoreboard players set $next lapis.id 0

scoreboard objectives add lapis.blocked_with_shield minecraft.custom:minecraft.damage_blocked_by_shield

forceload add 440044 440044
setblock 440044 -1 440044 minecraft:yellow_shulker_box
setblock 440044 -2 440044 minecraft:yellow_shulker_box
summon item_frame 440044 1000 440044 {Invulnerable:1b,Invisible:1b,Fixed:1b,Tags:["lapis.item"],Item:{}}