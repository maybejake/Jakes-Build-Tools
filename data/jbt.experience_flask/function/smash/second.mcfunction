#using 2.5 * level^2 - 40.5 * level + 360

scoreboard players operation $level jbt.dummy = @s jbt.flask_levels

scoreboard players operation $level_squared jbt.dummy = $level jbt.dummy
scoreboard players operation $level_squared jbt.dummy *= @s jbt.flask_levels

scoreboard players set $25level jbt.dummy 25
scoreboard players operation $25level jbt.dummy *= $level_squared jbt.dummy

scoreboard players set $405level jbt.dummy 405
scoreboard players operation $405level jbt.dummy *= $level jbt.dummy

scoreboard players operation $25level jbt.dummy -= $405level jbt.dummy

scoreboard players set $10 jbt.dummy 10
scoreboard players operation $25level jbt.dummy /= $10 jbt.dummy

scoreboard players add $25level jbt.dummy 360

scoreboard players operation @s jbt.flask_value = $25level jbt.dummy