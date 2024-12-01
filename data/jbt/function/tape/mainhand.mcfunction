tag @s add jbt_tape_mainhand
execute unless entity @s[predicate=jbt:issneaking] at @s anchored eyes positioned ^ ^ ^ anchored feet run function jbt:tape/ray/start
execute if entity @s[predicate=jbt:issneaking] run function jbt:tape/reset/mainhand
tag @s remove jbt_tape_mainhand