execute if score @s jbt.flask_levels matches ..16 run function jbt.experience_flask:smash/first
execute if score @s jbt.flask_levels matches 17..31 run function jbt.experience_flask:smash/second
execute if score @s jbt.flask_levels matches 32.. run function jbt.experience_flask:smash/third

scoreboard players operation @s jbt.flask_value += @s jbt.flask_points

function jbt.experience_flask:smash/convert

kill @s