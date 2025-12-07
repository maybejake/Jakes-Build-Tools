execute if predicate jbt.experience_flask:flask unless predicate jbt.experience_flask:corked at @s run return run function jbt.experience_flask:store
execute if predicate jbt.experience_flask:flask if predicate jbt.experience_flask:corked at @s run return run function jbt.experience_flask:empty/check
return fail