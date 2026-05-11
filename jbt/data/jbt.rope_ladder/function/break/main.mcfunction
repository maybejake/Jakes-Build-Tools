scoreboard players add @s jbt.timer 1
execute if score @s jbt.timer matches 1 positioned ~ ~ ~ as @n[type=minecraft:item,nbt={Item:{count:1,id:"minecraft:ladder"},Age:0s},distance=..1] run kill @s

execute if score @s jbt.timer matches 1 run scoreboard players set $count jbt.dummy 0
execute if score @s jbt.timer matches 1 run function jbt.rope_ladder:break/loop
execute if score @s jbt.timer matches 1 run loot spawn ~ ~ ~ loot jbt.rope_ladder:_drop

#doododoododododoodododo sound
execute if score @s jbt.timer matches 1 run playsound minecraft:block.bamboo.break block @a ~ ~ ~ 1 0
execute if score @s jbt.timer matches 2 run playsound minecraft:block.bamboo.break block @a ~ ~ ~ 1 0.4
execute if score @s jbt.timer matches 3 run playsound minecraft:block.bamboo.break block @a ~ ~ ~ 1 0.2
execute if score @s jbt.timer matches 4 run playsound minecraft:block.bamboo.break block @a ~ ~ ~ 1 0.6
execute if score @s jbt.timer matches 5 run playsound minecraft:block.bamboo.break block @a ~ ~ ~ 1 0.4
execute if score @s jbt.timer matches 6 run playsound minecraft:block.bamboo.break block @a ~ ~ ~ 1 0.8
execute if score @s jbt.timer matches 7 run playsound minecraft:block.bamboo.break block @a ~ ~ ~ 1 0.6
execute if score @s jbt.timer matches 8 run playsound minecraft:block.bamboo.break block @a ~ ~ ~ 1 1
execute if score @s jbt.timer matches 8.. run kill @s