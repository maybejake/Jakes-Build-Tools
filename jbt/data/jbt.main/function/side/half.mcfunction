execute store result score $point jbt.dummy run data get storage jbt.iris:output TargetPosition.point[1] 100000
execute if score $point jbt.dummy matches ..50000 run return 1
execute if score $point jbt.dummy matches 50000.. run return 2