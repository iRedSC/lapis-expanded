

summon text_display ~ ~ ~ {Tags:["lapis.temp.get_id"]}

ride @s mount @n[tag=lapis.temp.get_id]

data modify storage test:id data.data set from entity @n[tag=lapis.temp.get_id] Passengers[0]
data modify storage test:id data.id set from storage test:id data.data.id
data modify storage test:id data.name set value {"text": ""}
data modify storage test:id data.name set string storage test:id data.data.CustomName
data remove storage test:id data.data.Pos
data remove storage test:id data.data.UUID

ride @s dismount
kill @n[tag=lapis.temp.get_id]

tp @s ~ ~ ~ ~ ~