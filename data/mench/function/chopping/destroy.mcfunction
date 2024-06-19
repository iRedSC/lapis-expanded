$execute if block ~ ~ ~ $(block) run setblock ~ ~ ~ air destroy
$execute if block ~ ~1 ~ $(block) positioned ~ ~1 ~ run function mench:chopping/destroy {block:"$(block)"}
