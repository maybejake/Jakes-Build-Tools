execute if entity @s[predicate=jbt:issneaking] run tag @s add jbt_tape_reset
execute at @s anchored eyes positioned ^ ^ ^ anchored feet run function jbt:tape/ray/start
tag @s remove jbt_tape_reset