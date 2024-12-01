#reset
scoreboard objectives remove temp
scoreboard objectives add temp dummy

#store values
execute summon minecraft:marker run function jbt:side/store

#north=1 south=2 west=3 east=4 down=5 up=6
execute if score $pos2 temp matches ..2 run return run function jbt:side/sides/north
execute if score $pos2 temp matches 47.. run return run function jbt:side/sides/south
execute if score $pos0 temp matches ..2 run return run function jbt:side/sides/west
execute if score $pos0 temp matches 47.. run return run function jbt:side/sides/east
execute if score $pos1 temp matches ..2 run return run function jbt:side/sides/down
execute if score $pos1 temp matches 47.. run return run function jbt:side/sides/up