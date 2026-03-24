execute if score @s jbt.cooldown matches 1.. run return fail
scoreboard players set @s jbt.cooldown 7

data remove storage jbt:temp flask

execute store result score $levels jbt.dummy run experience query @s levels
execute store result score $points jbt.dummy run experience query @s points

# no xp, do nothing
execute if score $levels jbt.dummy matches ..0 if score $points jbt.dummy matches ..0 run return fail

execute store result storage jbt:temp flask.levels int 1 run scoreboard players get $levels jbt.dummy
execute store result storage jbt:temp flask.points int 1 run scoreboard players get $points jbt.dummy

playsound minecraft:item.bucket.fill neutral @a ~ ~1 ~ 1 1.5
playsound minecraft:entity.illusioner.cast_spell neutral @a ~ ~1 ~ 0.2 2
playsound minecraft:block.amethyst_block.hit neutral @a ~ ~1 ~ 1 0.5

experience set @s[gamemode=!creative] 0 points
experience set @s[gamemode=!creative] 0 levels

execute if predicate jbt.experience_flask:mainhand run return run function jbt.experience_flask:modify/mainhand with storage jbt:temp flask
execute if predicate jbt.experience_flask:offhand run return run function jbt.experience_flask:modify/offhand with storage jbt:temp flask