scoreboard objectives add temp dummy

#using 4.5 * level^2 - 162.5 * level + 2220

scoreboard players operation $level temp = @s jbt_flask_marker_levels

scoreboard players operation $level_squared temp = $level temp
scoreboard players operation $level_squared temp *= @s jbt_flask_marker_levels

scoreboard players set $45level temp 45
scoreboard players operation $45level temp *= $level_squared temp

scoreboard players set $1625level temp 1625
scoreboard players operation $1625level temp *= $level temp

scoreboard players operation $45level temp -= $1625level temp

scoreboard players set $10 temp 10
scoreboard players operation $45level temp /= $10 temp

scoreboard players add $45level temp 2220

scoreboard players operation @s jbt_flask_marker_value = $45level temp

scoreboard objectives remove temp