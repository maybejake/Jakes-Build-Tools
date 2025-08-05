scoreboard players set $repeat jbt.dummy 0
execute if score @s jbt.flask_value matches 32768.. run scoreboard players set $repeat jbt.dummy 1

execute if score $repeat jbt.dummy matches 1 run scoreboard players remove @s jbt.flask_value 32767
execute if score $repeat jbt.dummy matches 1 run data modify storage jbt:temp flask.value set value 32767

execute if score $repeat jbt.dummy matches 0 run execute store result storage jbt:temp flask.value int 1 run scoreboard players get @s jbt.flask_value

function jbt.experience_flask:smash/motion
execute run function jbt.experience_flask:smash/empty_orb with storage jbt:temp flask

function jbt.experience_flask:smash/motion
execute run function jbt.experience_flask:smash/empty_orb with storage jbt:temp flask

function jbt.experience_flask:smash/motion
execute run function jbt.experience_flask:smash/orb with storage jbt:temp flask

execute if score $repeat jbt.dummy matches 1 run function jbt.experience_flask:smash/convert