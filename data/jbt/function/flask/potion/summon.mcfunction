playsound minecraft:entity.splash_potion.throw master @a ~ ~ ~ 1 0.8

tag @s add jbt_flask_thrown
execute anchored eyes positioned ^ ^ ^ summon minecraft:potion run function jbt:flask/potion/setup
tag @s remove jbt_flask_thrown