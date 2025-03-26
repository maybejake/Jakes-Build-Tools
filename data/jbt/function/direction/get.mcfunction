execute if entity @s[y_rotation=135..180] run return run tag @s add jbt_north
execute if entity @s[y_rotation=-180..-135] run return run tag @s add jbt_north
execute if entity @s[y_rotation=-135..-45] run return run tag @s add jbt_east
execute if entity @s[y_rotation=-45..45] run return run tag @s add jbt_south
execute if entity @s[y_rotation=45..135] run return run tag @s add jbt_west