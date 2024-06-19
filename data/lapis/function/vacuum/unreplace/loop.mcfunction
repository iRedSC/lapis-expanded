

data modify storage lapis:data temp.vacuum.replace.slot set from storage lapis:data temp.vacuum.custom_data[-1]

function lapis:vacuum/unreplace/run with storage lapis:data temp.vacuum.replace

data remove storage lapis:data temp.vacuum.custom_data[-1]

execute if data storage lapis:data temp.vacuum.custom_data[0] run function lapis:vacuum/unreplace/loop