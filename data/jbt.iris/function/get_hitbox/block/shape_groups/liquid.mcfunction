# this is so janky but it works, no other tool targets water via a raycast so this is fine but it also sucks
execute if predicate jbt.main:issneaking unless block ~ ~ ~ #jbt.main:liquids[level=0] run return run data modify storage jbt.iris:data Shape set value []

execute if block ~ ~1 ~ #jbt.main:liquids run return run data modify storage jbt.iris:data Shape set value [{min: [0.0, 0.0, 0.0], max: [1.0, 1.0, 1.0]}]

data modify storage jbt.iris:data Shape set value [{min: [0.0, 0.0, 0.0], max: [1.0, 0.85, 1.0]}]