scoreboard players set @s jbt_hammer_raycast_hit 1

setblock ~ ~ ~ minecraft:barrier replace
execute at @s anchored eyes positioned ^ ^ ^-2 run function jbt:hammer/side/start
setblock ~ ~ ~ minecraft:air replace

execute if score @s jbt_side matches 1 run function jbt:hammer/break/northsouth
execute if score @s jbt_side matches 2 run function jbt:hammer/break/northsouth
execute if score @s jbt_side matches 3 run function jbt:hammer/break/eastwest
execute if score @s jbt_side matches 4 run function jbt:hammer/break/eastwest
execute if score @s jbt_side matches 5 run function jbt:hammer/break/updown
execute if score @s jbt_side matches 6 run function jbt:hammer/break/updown