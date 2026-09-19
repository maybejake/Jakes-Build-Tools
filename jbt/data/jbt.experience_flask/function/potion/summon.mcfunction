playsound minecraft:entity.splash_potion.throw player @a ~ ~ ~ 1 0.8

data modify storage jbt:temp flask.uuid set from entity @s UUID
execute anchored eyes positioned ^ ^ ^ summon minecraft:splash_potion run function jbt.experience_flask:potion/setup