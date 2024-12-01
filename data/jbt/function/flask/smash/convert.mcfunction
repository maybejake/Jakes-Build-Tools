scoreboard players set @s jbt_flask_marker_repeat 0
execute if score @s jbt_flask_marker_value matches 32768.. run scoreboard players set @s jbt_flask_marker_repeat 1

execute if score @s jbt_flask_marker_repeat matches 1 run scoreboard players remove @s jbt_flask_marker_value 32767
execute if score @s jbt_flask_marker_repeat matches 1 run data modify storage jbt:flask value set value 32767

execute if score @s jbt_flask_marker_repeat matches 0 run execute store result storage jbt:flask value int 1 run scoreboard players get @s jbt_flask_marker_value

function jbt:flask/smash/motion
execute run function jbt:flask/smash/empty_orb with storage jbt:flask

function jbt:flask/smash/motion
execute run function jbt:flask/smash/empty_orb with storage jbt:flask

function jbt:flask/smash/motion
execute run function jbt:flask/smash/orb with storage jbt:flask

execute if score @s jbt_flask_marker_repeat matches 1 run function jbt:flask/smash/convert