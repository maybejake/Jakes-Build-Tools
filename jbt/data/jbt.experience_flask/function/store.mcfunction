execute if score @s jbt.cooldown matches 1.. run return fail
scoreboard players set @s jbt.cooldown 7

data remove storage jbt:temp flask

execute store result storage jbt:temp flask.levels int 1 run experience query @s levels
execute store result storage jbt:temp flask.points int 1 run experience query @s points

# no xp, do nothing
execute if data storage jbt:temp flask{levels:0, points:0} run return fail

# calculate experience
data modify storage jbt:temp flask.experience set compute default float jbt.experience_flask:experience

playsound minecraft:item.bucket.fill player @a ~ ~1 ~ 1 1.5
playsound minecraft:entity.illusioner.cast_spell player @a ~ ~1 ~ 0.2 2
playsound minecraft:block.amethyst_block.hit player @a ~ ~1 ~ 1 0.5

experience set @s[gamemode=!creative] 0 points
experience set @s[gamemode=!creative] 0 levels

execute if predicate jbt.experience_flask:mainhand run return run item modify entity @s weapon.mainhand jbt.experience_flask:store
execute if predicate jbt.experience_flask:offhand run return run item modify entity @s weapon.offhand jbt.experience_flask:store