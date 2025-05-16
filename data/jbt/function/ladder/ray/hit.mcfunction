scoreboard players set @s jbt_ladder_raycast_hit 1

execute store result score @s jbt_ladder_max run clear @s minecraft:ladder[minecraft:custom_data~{jbt_ladder:1b}] 0

execute align xyz run summon minecraft:armor_stand ~0.5 ~0.5 ~0.5 {Tags:["jbt_ladder_stand","jbt_ladder_stand_new","smithed.entity","smithed.strict"],DisabledSlots:0,Invulnerable:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Marker:1b,Invisible:1b}
scoreboard players set @n[type=minecraft:armor_stand,tag=jbt_ladder_stand_new] jbt_ladder_number 1

execute if block ~ ~-1 ~ #jbt:ladder positioned ~ ~-1 ~ run function jbt:ladder/loop