execute store result score $unbreaking_chance jbt.dummy run random value 1..100
execute if entity @s[predicate=jbt.main:unbreaking/offhand/3] if score $unbreaking_chance jbt.dummy matches ..75 run return 1
execute if entity @s[predicate=jbt.main:unbreaking/offhand/2] if score $unbreaking_chance jbt.dummy matches ..66 run return 1
execute if entity @s[predicate=jbt.main:unbreaking/offhand/1] if score $unbreaking_chance jbt.dummy matches ..50 run return 1
return fail