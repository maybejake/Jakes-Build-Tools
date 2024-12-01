execute unless entity @s as @e[tag=jbt_flask_fix] run function jbt:flask/potion/fix
execute store result entity @s Air short 1 run time query gametime
tag @s remove jbt_flask_fix