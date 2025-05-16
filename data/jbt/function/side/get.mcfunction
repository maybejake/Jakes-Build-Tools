execute unless block ~0.06 ~ ~ #jbt:blocks run scoreboard players set @s jbt_side 4
execute unless block ~-0.06 ~ ~ #jbt:blocks run scoreboard players set @s jbt_side 3
execute unless block ~ ~0.06 ~ #jbt:blocks run scoreboard players set @s jbt_side 6
execute unless block ~ ~-0.06 ~ #jbt:blocks run scoreboard players set @s jbt_side 5
execute unless block ~ ~ ~0.06 #jbt:blocks run scoreboard players set @s jbt_side 2
execute unless block ~ ~ ~-0.06 #jbt:blocks run scoreboard players set @s jbt_side 1

execute store result score @s jbt_half summon minecraft:marker run function jbt:side/half