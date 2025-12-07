#ban containers
$execute if items entity @s hotbar.$(slot) *[minecraft:container,!minecraft:container=[]] run return fail

#check blacklists
$execute if items entity @s hotbar.$(slot) #jbt.main:blacklist run return fail

$setblock -20000000 -64 98 $(block)
setblock -20000000 -64 98 bedrock
return 1