advancement revoke @s only jbt.mob_bag:interact
execute if entity @s[tag=!jbt_bag_cooldown,predicate=jbt.mob_bag:filled] at @s anchored eyes positioned ^ ^ ^ anchored feet run return run function jbt.mob_bag:return/start
execute if entity @s[predicate=!jbt.mob_bag:filled] at @s anchored eyes positioned ^ ^ ^ anchored feet run function jbt.mob_bag:remove/start