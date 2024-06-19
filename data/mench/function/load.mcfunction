

# scoreboard objectives add mench.pickup_delay dummy
# scoreboard objectives add mench.spawned dummy

scoreboard objectives add mench.temp dummy
scoreboard players set $loaded mench.temp 1

scoreboard objectives add mench.id dummy
scoreboard players set $next mench.id 0

scoreboard objectives add mench.blocked_with_shield minecraft.custom:minecraft.damage_blocked_by_shield

forceload add 440044 440044
setblock 440044 -1 440044 minecraft:yellow_shulker_box
setblock 440044 -2 440044 minecraft:yellow_shulker_box
summon item_frame 440044 1000 440044 {Invulnerable:1b,Invisible:1b,Fixed:1b,Tags:["mench.item"],Item:{}}