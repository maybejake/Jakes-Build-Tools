scoreboard objectives add jbt_temp dummy

#using 2.5 * level^2 - 40.5 * level + 360

scoreboard players operation $level jbt_temp = @s jbt_flask_marker_levels

scoreboard players operation $level_squared jbt_temp = $level jbt_temp
scoreboard players operation $level_squared jbt_temp *= @s jbt_flask_marker_levels

scoreboard players set $25level jbt_temp 25
scoreboard players operation $25level jbt_temp *= $level_squared jbt_temp

scoreboard players set $405level jbt_temp 405
scoreboard players operation $405level jbt_temp *= $level jbt_temp

scoreboard players operation $25level jbt_temp -= $405level jbt_temp

scoreboard players set $10 jbt_temp 10
scoreboard players operation $25level jbt_temp /= $10 jbt_temp

scoreboard players add $25level jbt_temp 360

scoreboard players operation @s jbt_flask_marker_value = $25level jbt_temp

scoreboard objectives remove jbt_temp