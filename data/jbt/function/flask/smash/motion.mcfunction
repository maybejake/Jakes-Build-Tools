execute store result score @s jbt_flask_orb_x run random value -13..13
execute store result score @s jbt_flask_orb_y run random value 15..25
execute store result score @s jbt_flask_orb_z run random value -13..13

execute if score @s jbt_flask_orb_x matches 0 run scoreboard players set @s jbt_flask_orb_x 1
execute if score @s jbt_flask_orb_y matches 0 run scoreboard players set @s jbt_flask_orb_y 1
execute if score @s jbt_flask_orb_z matches 0 run scoreboard players set @s jbt_flask_orb_z 1

execute store result storage jbt:flask orbx double 0.01 run scoreboard players get @s jbt_flask_orb_x
execute store result storage jbt:flask orby double 0.01 run scoreboard players get @s jbt_flask_orb_y
execute store result storage jbt:flask orbz double 0.01 run scoreboard players get @s jbt_flask_orb_z