$execute if block ~ ~ ~ $(block) run function lapis:block/destroy_with_loot
$execute if block ~ ~1 ~ $(block) positioned ~ ~1 ~ run function lapis:chopping/destroy {block:"$(block)"}
