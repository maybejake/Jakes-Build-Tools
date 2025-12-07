data modify entity @s Time set value 1000

execute if data entity @s BlockState{Name:"minecraft:anvil"} at @s run return run playsound minecraft:block.anvil.land block @a ~ ~ ~ 1 1
execute at @s run playsound minecraft:block.copper.hit block @a ~ ~ ~ 1 0.75