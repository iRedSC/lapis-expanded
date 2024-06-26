data modify storage enchantment_info:data registry.packs append value {name:"Lapis Expanded", enchantments: ["lapis:any/permanence", "lapis:any/soulbound", "lapis:bow/knockoff", "lapis:bow/piercing_light", "lapis:tool/multitool", "lapis:tool/blast", "lapis:tool/voiding", "lapis:tool/autosmelt"]}

# data modify storage enchantment_info:data registry.info."lapis:" set value {name: "", tier: 0, max_level: 1, items: "", description_color: "white", description: ""} 

data modify storage enchantment_info:data registry.info."lapis:bow/knockoff" set value {name: "Knockoff", tier: 2, max_level: 3, items: "Bow", description_color: "white", description: "Arrows have a chance to knock armor and weapons off of foes."} 
data modify storage enchantment_info:data registry.info."lapis:bow/piercing_light" set value {name: "Piercing Light", tier: 3, max_level: 3, items: "Crossbow", description_color: "white", description: "Turns arrows into rays of light that can penetrate even the toughest of armor."} 

data modify storage enchantment_info:data registry.info."lapis:tool/multitool" set value {name: "Multitool", tier: 2, max_level: 1, items: "Tools", description_color: "white", description: "Tool changes to match the block you are mining."} 
data modify storage enchantment_info:data registry.info."lapis:tool/blast" set value {name: "Blast", tier: 2, max_level: 1, items: "Tools", description_color: "white", description: "Mine a 3x3 area."} 
data modify storage enchantment_info:data registry.info."lapis:tool/autosmelt" set value {name: "Autosmelt", tier: 1, max_level: 1, items: "Tools", description_color: "white", description: "Smelt all mined blocks."} 
data modify storage enchantment_info:data registry.info."lapis:tool/voiding" set value {name: "Voiding", tier: -1, max_level: 1, items: "Tools", description_color: "white", description: "Prevents block drops."} 

data modify storage enchantment_info:data registry.info."lapis:any/soulbound" set value {name: "Soulbound", tier: 2, max_level: 1, items: "Armor, Tools, Weapons, Shulker Box", description_color: "white", description: "Item remains in your inventory after death."}
data modify storage enchantment_info:data registry.info."lapis:any/permanence" set value {name: "Permanence", tier: 1, max_level: 1, items: "Armor, Tools, Weapons, Shulker Box", description_color: "white", description: "When dropped, cannot be destroyed, nor can it despawn."} 

