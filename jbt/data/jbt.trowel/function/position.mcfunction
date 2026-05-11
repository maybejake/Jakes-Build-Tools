execute if block ~ ~ ~ #jbt.main:blocks run return run function jbt.trowel:on_block

execute if data storage jbt.iris:output TargetedFace{Direction:"UP"} positioned ~ ~1 ~ if block ~ ~ ~ #jbt.main:blocks run return run function jbt.trowel:on_block
execute if data storage jbt.iris:output TargetedFace{Direction:"NORTH"} positioned ~ ~ ~-1 if block ~ ~ ~ #jbt.main:blocks run return run function jbt.trowel:on_block
execute if data storage jbt.iris:output TargetedFace{Direction:"EAST"} positioned ~1 ~ ~ if block ~ ~ ~ #jbt.main:blocks run return run function jbt.trowel:on_block
execute if data storage jbt.iris:output TargetedFace{Direction:"SOUTH"} positioned ~ ~ ~1 if block ~ ~ ~ #jbt.main:blocks run return run function jbt.trowel:on_block
execute if data storage jbt.iris:output TargetedFace{Direction:"WEST"} positioned ~-1 ~ ~ if block ~ ~ ~ #jbt.main:blocks run return run function jbt.trowel:on_block
execute if data storage jbt.iris:output TargetedFace{Direction:"DOWN"} positioned ~ ~-1 ~ if block ~ ~ ~ #jbt.main:blocks run return run function jbt.trowel:on_block