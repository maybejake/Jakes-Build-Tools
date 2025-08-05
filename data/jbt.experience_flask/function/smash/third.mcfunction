#using 4.5 * level^2 - 162.5 * level + 2220

scoreboard players operation $level jbt.dummy = @s jbt.flask_levels

scoreboard players operation $level_squared jbt.dummy = $level jbt.dummy
scoreboard players operation $level_squared jbt.dummy *= @s jbt.flask_levels

scoreboard players set $45level jbt.dummy 45
scoreboard players operation $45level jbt.dummy *= $level_squared jbt.dummy

scoreboard players set $1625level jbt.dummy 1625
scoreboard players operation $1625level jbt.dummy *= $level jbt.dummy

scoreboard players operation $45level jbt.dummy -= $1625level jbt.dummy

scoreboard players set $10 jbt.dummy 10
scoreboard players operation $45level jbt.dummy /= $10 jbt.dummy

scoreboard players add $45level jbt.dummy 2220

scoreboard players operation @s jbt.flask_value = $45level jbt.dummy