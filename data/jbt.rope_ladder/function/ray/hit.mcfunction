execute store result score $ladder_max jbt.dummy run clear @s minecraft:ladder[minecraft:custom_data~{jbt_ladder:1b}] 0

execute align xyz run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["jbt_ladder_stand","jbt_ladder_stand_new","smithed.entity","smithed.strict"]}
scoreboard players set @n[type=minecraft:marker,tag=jbt_ladder_stand_new] jbt.ladder_count 1

execute if block ~ ~-1 ~ #jbt.main:ladder positioned ~ ~-1 ~ run function jbt.rope_ladder:loop