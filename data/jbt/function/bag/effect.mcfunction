advancement revoke maybejake only jbt:mob_bag
execute if entity @s[tag=!jbt_bag_cooldown,predicate=jbt:bag/filled] at @s anchored eyes positioned ^ ^ ^ anchored feet run return run function jbt:bag/return_ray/start
execute if entity @s[predicate=!jbt:bag/filled] at @s anchored eyes positioned ^ ^ ^ anchored feet run function jbt:bag/remove_ray/start