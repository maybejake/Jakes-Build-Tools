execute store result storage jbt:flask player_points int 1 run experience query @s points
execute store result storage jbt:flask player_levels int 1 run experience query @s levels

execute if entity @s[predicate=jbt:flask/mainhand,predicate=!jbt:flask/offhand] run function jbt:flask/modify/mainhand with storage jbt:flask
execute if entity @s[predicate=jbt:flask/offhand,predicate=!jbt:flask/mainhand] run function jbt:flask/modify/offhand with storage jbt:flask

playsound minecraft:item.bucket.fill master @a ~ ~1 ~ 1 1.5
playsound minecraft:entity.illusioner.cast_spell master @a ~ ~1 ~ 0.2 2
playsound minecraft:block.amethyst_block.hit master @a ~ ~1 ~ 1 0.5

experience set @s 0 points
experience set @s 0 levels