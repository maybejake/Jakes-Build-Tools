scoreboard players set @s jbt_tape_raycast_hit 0
scoreboard players set @s jbt_tape_raycast_distance 0

execute if entity @s[tag=jbt_tape_reset] run function jbt:tape/reset/check

function jbt:tape/ray/ray