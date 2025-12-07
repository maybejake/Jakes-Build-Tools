scoreboard players set $side jbt.dummy 0
setblock ~ ~ ~ minecraft:barrier replace
execute at @s anchored eyes positioned ^ ^ ^-2 run function jbt.hammer:side/start
setblock ~ ~ ~ minecraft:air replace

execute if score $side jbt.dummy matches 1 run function jbt.hammer:break/northsouth
execute if score $side jbt.dummy matches 2 run function jbt.hammer:break/northsouth
execute if score $side jbt.dummy matches 3 run function jbt.hammer:break/eastwest
execute if score $side jbt.dummy matches 4 run function jbt.hammer:break/eastwest
execute if score $side jbt.dummy matches 5 run function jbt.hammer:break/updown
execute if score $side jbt.dummy matches 6 run function jbt.hammer:break/updown