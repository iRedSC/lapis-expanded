
forceload add 440044 440044
summon item_frame 440044 1000 440044 {Invulnerable:1b,Invisible:1b,Fixed:1b,Tags:["enchantment_info"],Item:{}}

scoreboard objectives add enchantment_info trigger

data modify storage enchantment_info:data lookup.numerals set value {1: "I", 2: "II", 3: "III", 4: "IV", 5: "V", 6: "VI", 7: "VII", 8: "VIII", 9: "IX", 10: "X"}
data modify storage enchantment_info:data lookup.tiers set value {-2: "#590006", -1: "#FF5555", 0: "#AAAAAA", 1: "#00AAAA", 2: "#FFAA00", 3: "#7647d3"}


data modify storage enchantment_info:data registry.packs set value []
function #enchantment_info:load