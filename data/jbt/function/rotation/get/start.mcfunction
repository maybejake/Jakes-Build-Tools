scoreboard players set @s jbt_rotation 0
execute store result score @s jbt_rotation run function jbt:rotation/get/topbottom with storage jbt:rotation
execute if score @s jbt_rotation matches 1.. run return 1
execute store result score @s jbt_rotation run function jbt:rotation/get/xyz with storage jbt:rotation
execute if score @s jbt_rotation matches 1.. run return 1
execute store result score @s jbt_rotation run function jbt:rotation/get/neswud with storage jbt:rotation
execute if score @s jbt_rotation matches 1.. run return 1
execute store result score @s jbt_rotation run function jbt:rotation/get/neswfc with storage jbt:rotation
execute if score @s jbt_rotation matches 1.. run return 1
execute store result score @s jbt_rotation run function jbt:rotation/get/neswtb with storage jbt:rotation
execute if score @s jbt_rotation matches 1.. run return 1
execute store result score @s jbt_rotation run return run function jbt:rotation/get/nesw with storage jbt:rotation
return fail