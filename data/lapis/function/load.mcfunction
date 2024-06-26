
scoreboard objectives add lapis.tag.vampiric dummy
scoreboard objectives add lapis.telekinesis.id dummy

scoreboard objectives add lapis.const dummy
scoreboard players set $num.20 lapis.const 20
scoreboard players set $num.40 lapis.const 40

scoreboard objectives add lapis.lifetime dummy

scoreboard objectives add lapis.shock_duration dummy

scoreboard objectives add lapis.played_goat_horn minecraft.used:minecraft.goat_horn

scoreboard objectives add lapis.soulbound dummy
scoreboard objectives add lapis.time_since_death minecraft.custom:minecraft.time_since_death

scoreboard objectives add lapis.veinmine dummy

scoreboard objectives add lapis.temp dummy
scoreboard players set $loaded lapis.temp 1

scoreboard objectives add lapis.id dummy


scoreboard objectives add lapis.blocked_with_shield minecraft.custom:minecraft.damage_blocked_by_shield

forceload add 0 0

forceload add 440044 440044

setblock 440044 -1 440044 minecraft:yellow_shulker_box
setblock 440044 -2 440044 minecraft:yellow_shulker_box
summon item_frame 440044 1000 440044 {Invulnerable:1b,Invisible:1b,Fixed:1b,Tags:["lapis.item"],Item:{}}

data modify storage lapis:data lookup.effects.blessing set value ["minecraft:regeneration", "minecraft:absorption", "minecraft:speed", "minecraft:strength", "minecraft:resistance", "minecraft:fire_resistance", "minecraft:night_vision", "minecraft:water_breathing", "minecraft:invisibility", "minecraft:health_boost", "minecraft:jump_boost", "minecraft:haste", "minecraft:dolphins_grace", "minecraft:conduit_power"]