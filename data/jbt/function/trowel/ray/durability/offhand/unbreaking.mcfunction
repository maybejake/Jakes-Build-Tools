execute store result score @s jbt_trowel_unbreaking_chance run random value 1..100
execute if entity @s[predicate=jbt:unbreaking/offhand/3] if score @s jbt_trowel_unbreaking_chance matches ..75 run return run scoreboard players set @s jbt_trowel_unbreaking_check 1
execute if entity @s[predicate=jbt:unbreaking/offhand/2] if score @s jbt_trowel_unbreaking_chance matches ..66 run return run scoreboard players set @s jbt_trowel_unbreaking_check 1
execute if entity @s[predicate=jbt:unbreaking/offhand/1] if score @s jbt_trowel_unbreaking_chance matches ..50 run return run scoreboard players set @s jbt_trowel_unbreaking_check 1

