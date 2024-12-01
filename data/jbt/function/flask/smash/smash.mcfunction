execute if score @s jbt_flask_marker_levels matches ..16 run function jbt:flask/smash/first
execute if score @s jbt_flask_marker_levels matches 17..31 run function jbt:flask/smash/second
execute if score @s jbt_flask_marker_levels matches 32.. run function jbt:flask/smash/third

scoreboard players operation @s jbt_flask_marker_value += @s jbt_flask_marker_points

function jbt:flask/smash/convert

kill @s