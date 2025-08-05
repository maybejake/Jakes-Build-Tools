#using level^2 + 6 * level

scoreboard players operation $level jbt.dummy = @s jbt.flask_levels

scoreboard players operation $level_squared jbt.dummy = $level jbt.dummy
scoreboard players operation $level_squared jbt.dummy *= $level jbt.dummy

scoreboard players set $6level jbt.dummy 6
scoreboard players operation $6level jbt.dummy *= $level jbt.dummy

scoreboard players operation $level_squared jbt.dummy += $6level jbt.dummy

scoreboard players operation @s jbt.flask_value = $level_squared jbt.dummy