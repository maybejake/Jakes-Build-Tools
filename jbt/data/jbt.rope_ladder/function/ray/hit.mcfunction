execute store result score $ladder_max jbt.dummy run clear @s minecraft:ladder[minecraft:custom_data~{jbt:{id:"rope_ladder"}}] 0
execute if entity @s[gamemode=creative] run scoreboard players set $ladder_max jbt.dummy 999

execute align xyz run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["jbt.marker","jbt.ladder_marker","jbt.ladder_marker_new","smithed.entity","smithed.strict"]}

scoreboard players set $ladder_count jbt.dummy 0
execute if block ~ ~-1 ~ #jbt.main:ladder positioned ~ ~-1 ~ run function jbt.rope_ladder:loop

#save ladder count
scoreboard players add $ladder_count jbt.dummy 1
execute align xyz positioned ~0.5 ~0.5 ~0.5 as @n[type=minecraft:marker,tag=jbt.ladder_marker_new,distance=..0.1] run scoreboard players operation @s jbt.ladder_count = $ladder_count jbt.dummy