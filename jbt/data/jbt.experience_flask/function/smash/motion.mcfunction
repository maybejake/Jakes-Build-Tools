execute store result score $x jbt.dummy run random value -13..13
execute store result score $y jbt.dummy run random value 15..25
execute store result score $z jbt.dummy run random value -13..13

execute if score $x jbt.dummy matches 0 run scoreboard players set $x jbt.dummy 1
execute if score $y jbt.dummy matches 0 run scoreboard players set $y jbt.dummy 1
execute if score $z jbt.dummy matches 0 run scoreboard players set $z jbt.dummy 1

execute store result storage jbt:temp flask.orbx double 0.01 run scoreboard players get $x jbt.dummy
execute store result storage jbt:temp flask.orby double 0.01 run scoreboard players get $y jbt.dummy
execute store result storage jbt:temp flask.orbz double 0.01 run scoreboard players get $z jbt.dummy