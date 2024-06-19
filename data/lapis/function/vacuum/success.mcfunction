function lapis:vacuum/unreplace/loop
$loot replace entity @p[tag=lapis.temp.player] hotbar.$(slot) mine 440044 0 440044
execute unless entity @p[tag=lapis.temp.player,distance=..0.1] run particle minecraft:shriek{delay:0}
kill @s