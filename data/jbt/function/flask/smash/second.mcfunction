scoreboard objectives add temp dummy

#using 2.5 * level^2 - 40.5 * level + 360

scoreboard players operation $level temp = @s jbt_flask_marker_levels

scoreboard players operation $level_squared temp = $level temp
scoreboard players operation $level_squared temp *= @s jbt_flask_marker_levels

scoreboard players set $25level temp 25
scoreboard players operation $25level temp *= $level_squared temp

scoreboard players set $405level temp 405
scoreboard players operation $405level temp *= $level temp

scoreboard players operation $25level temp -= $405level temp

scoreboard players set $10 temp 10
scoreboard players operation $25level temp /= $10 temp

scoreboard players add $25level temp 360

scoreboard players operation @s jbt_flask_marker_value = $25level temp

scoreboard objectives remove temp