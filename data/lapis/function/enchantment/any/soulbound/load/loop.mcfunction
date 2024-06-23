



# put the item into a temp item frame
data modify entity @n[tag=lapis.item] Item set from storage lapis:data temp.soulbound.saved[-1]

# get the slot the item should be in
execute store result score $slot lapis.temp run data get storage lapis:data temp.soulbound.saved[-1].Slot

# if the slot number puts the item in the hotbar, set the macro data accordingly
execute if score $slot lapis.temp matches 0..8 run data modify storage lapis:data temp.soulbound.give.container set value "hotbar"
# do the same for the inventory, then readjust the slot number if needed
execute if score $slot lapis.temp matches 9..35 run data modify storage lapis:data temp.soulbound.give.container set value "inventory"
execute if score $slot lapis.temp matches 9..35 run scoreboard players remove $slot lapis.temp 9
execute store result storage lapis:data temp.soulbound.give.slot int 1 run scoreboard players get $slot lapis.temp 


execute if score $slot lapis.temp matches 100..103 run data modify storage lapis:data temp.soulbound.give.container set value "armor"
execute if score $slot lapis.temp matches 100 run data modify storage lapis:data temp.soulbound.give.slot set value "feet"
execute if score $slot lapis.temp matches 101 run data modify storage lapis:data temp.soulbound.give.slot set value "legs"
execute if score $slot lapis.temp matches 102 run data modify storage lapis:data temp.soulbound.give.slot set value "chest"
execute if score $slot lapis.temp matches 103 run data modify storage lapis:data temp.soulbound.give.slot set value "head"

execute if score $slot lapis.temp matches -106 run data modify storage lapis:data temp.soulbound.give set value {container: "weapon", slot: "offhand"}



function lapis:enchantment/any/soulbound/load/give with storage lapis:data temp.soulbound.give


data remove storage lapis:data temp.soulbound.saved[-1]

execute if data storage lapis:data temp.soulbound.saved[0] run function lapis:enchantment/any/soulbound/load/loop