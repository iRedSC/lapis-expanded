function lapis:vacuum/unreplace/loop
$loot replace entity @p[tag=lapis.temp.player] hotbar.$(slot) mine 440044 0 440044
particle minecraft:soul ~ ~ ~
kill @s