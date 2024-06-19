

data modify storage mench:data temp.vacuum.replace.slot set from storage mench:data temp.vacuum.custom_data[-1]

function mench:vacuum/unreplace/run with storage mench:data temp.vacuum.replace

data remove storage mench:data temp.vacuum.custom_data[-1]

execute if data storage mench:data temp.vacuum.custom_data[0] run function mench:vacuum/unreplace/loop