scoreboard objectives add temp dummy

#using level^2 + 6 * level

scoreboard players operation $level temp = @s jbt_flask_marker_levels

scoreboard players operation $level_squared temp = $level temp
scoreboard players operation $level_squared temp *= $level temp

scoreboard players set $6level temp 6
scoreboard players operation $6level temp *= $level temp

scoreboard players operation $level_squared temp += $6level temp

scoreboard players operation @s jbt_flask_marker_value = $level_squared temp

scoreboard objectives remove temp