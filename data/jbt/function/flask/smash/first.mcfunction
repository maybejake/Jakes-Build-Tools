scoreboard objectives add jbt_temp dummy

#using level^2 + 6 * level

scoreboard players operation $level jbt_temp = @s jbt_flask_marker_levels

scoreboard players operation $level_squared jbt_temp = $level jbt_temp
scoreboard players operation $level_squared jbt_temp *= $level jbt_temp

scoreboard players set $6level jbt_temp 6
scoreboard players operation $6level jbt_temp *= $level jbt_temp

scoreboard players operation $level_squared jbt_temp += $6level jbt_temp

scoreboard players operation @s jbt_flask_marker_value = $level_squared jbt_temp

scoreboard objectives remove jbt_temp