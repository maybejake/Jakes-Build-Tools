playsound minecraft:entity.splash_potion.throw neutral @a ~ ~ ~ 1 0.8

tag @s add jbt_flask_thrown
execute anchored eyes positioned ^ ^ ^ summon minecraft:splash_potion run function jbt.experience_flask:potion/setup
tag @s remove jbt_flask_thrown