scoreboard players set @s jbt.raycast_distance 0

execute if entity @s[tag=jbt_tape_reset] run function jbt.tape_measure:reset/check

function jbt.tape_measure:ray/ray