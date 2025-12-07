#> jbt.iris:raycast/test_for_entity
#
# @within jbt.iris:raycast/loop
# @output
#   Result: 0
#   Success: 1 if an entity was hit, 0 otherwise

execute unless data storage jbt.iris:settings {TargetEntities: true} run return fail
execute align xyz unless entity @e[type=!#jbt.iris:ignore, tag=!jbt.iris.ignore, dx=0, dy=0, dz=0, tag=!jbt.iris.executing] run return fail
execute align xyz as @e[type=!#jbt.iris:ignore, tag=!jbt.iris.ignore, dx=0, dy=0, dz=0, tag=!jbt.iris.executing] run function jbt.iris:get_hitbox/entity
return run function jbt.iris:raycast/check_intersection/loop
