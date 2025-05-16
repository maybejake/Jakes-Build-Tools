scoreboard objectives add jbt_temp dummy

#using 4.5 * level^2 - 162.5 * level + 2220

scoreboard players operation $level jbt_temp = @s jbt_flask_marker_levels

scoreboard players operation $level_squared jbt_temp = $level jbt_temp
scoreboard players operation $level_squared jbt_temp *= @s jbt_flask_marker_levels

scoreboard players set $45level jbt_temp 45
scoreboard players operation $45level jbt_temp *= $level_squared jbt_temp

scoreboard players set $1625level jbt_temp 1625
scoreboard players operation $1625level jbt_temp *= $level jbt_temp

scoreboard players operation $45level jbt_temp -= $1625level jbt_temp

scoreboard players set $10 jbt_temp 10
scoreboard players operation $45level jbt_temp /= $10 jbt_temp

scoreboard players add $45level jbt_temp 2220

scoreboard players operation @s jbt_flask_marker_value = $45level jbt_temp

scoreboard objectives remove jbt_temp