#> jbt.iris:get_hitbox/block/xor
#
# Compute bitwise XOR (^) on two scores
#
# @within jbt.iris:get_hitbox/block/offset
# @reads
#   score $a jbt.iris
#       The first operand
#   score $b jbt.iris
#       The second operand
# @output
#   Return: The result of the XOR operation on both operands
#   Success: 1

scoreboard players operation $a^b jbt.iris = $a jbt.iris
scoreboard players operation $a^b jbt.iris += $b jbt.iris

# Compute a&b
scoreboard players set $a&b jbt.iris 0
execute if score $a jbt.iris matches ..-1 if score $b jbt.iris matches ..-1 run scoreboard players set $a&b jbt.iris -2147483648
scoreboard players operation $a jbt.iris += $a jbt.iris
scoreboard players operation $b jbt.iris += $b jbt.iris
execute if score $a jbt.iris matches ..-1 if score $b jbt.iris matches ..-1 run scoreboard players add $a&b jbt.iris 1073741824
scoreboard players operation $a jbt.iris += $a jbt.iris
scoreboard players operation $b jbt.iris += $b jbt.iris
execute if score $a jbt.iris matches ..-1 if score $b jbt.iris matches ..-1 run scoreboard players add $a&b jbt.iris 536870912
scoreboard players operation $a jbt.iris += $a jbt.iris
scoreboard players operation $b jbt.iris += $b jbt.iris
execute if score $a jbt.iris matches ..-1 if score $b jbt.iris matches ..-1 run scoreboard players add $a&b jbt.iris 268435456
scoreboard players operation $a jbt.iris += $a jbt.iris
scoreboard players operation $b jbt.iris += $b jbt.iris
execute if score $a jbt.iris matches ..-1 if score $b jbt.iris matches ..-1 run scoreboard players add $a&b jbt.iris 134217728
scoreboard players operation $a jbt.iris += $a jbt.iris
scoreboard players operation $b jbt.iris += $b jbt.iris
execute if score $a jbt.iris matches ..-1 if score $b jbt.iris matches ..-1 run scoreboard players add $a&b jbt.iris 67108864
scoreboard players operation $a jbt.iris += $a jbt.iris
scoreboard players operation $b jbt.iris += $b jbt.iris
execute if score $a jbt.iris matches ..-1 if score $b jbt.iris matches ..-1 run scoreboard players add $a&b jbt.iris 33554432
scoreboard players operation $a jbt.iris += $a jbt.iris
scoreboard players operation $b jbt.iris += $b jbt.iris
execute if score $a jbt.iris matches ..-1 if score $b jbt.iris matches ..-1 run scoreboard players add $a&b jbt.iris 16777216
scoreboard players operation $a jbt.iris += $a jbt.iris
scoreboard players operation $b jbt.iris += $b jbt.iris
execute if score $a jbt.iris matches ..-1 if score $b jbt.iris matches ..-1 run scoreboard players add $a&b jbt.iris 8388608
scoreboard players operation $a jbt.iris += $a jbt.iris
scoreboard players operation $b jbt.iris += $b jbt.iris
execute if score $a jbt.iris matches ..-1 if score $b jbt.iris matches ..-1 run scoreboard players add $a&b jbt.iris 4194304
scoreboard players operation $a jbt.iris += $a jbt.iris
scoreboard players operation $b jbt.iris += $b jbt.iris
execute if score $a jbt.iris matches ..-1 if score $b jbt.iris matches ..-1 run scoreboard players add $a&b jbt.iris 2097152
scoreboard players operation $a jbt.iris += $a jbt.iris
scoreboard players operation $b jbt.iris += $b jbt.iris
execute if score $a jbt.iris matches ..-1 if score $b jbt.iris matches ..-1 run scoreboard players add $a&b jbt.iris 1048576
scoreboard players operation $a jbt.iris += $a jbt.iris
scoreboard players operation $b jbt.iris += $b jbt.iris
execute if score $a jbt.iris matches ..-1 if score $b jbt.iris matches ..-1 run scoreboard players add $a&b jbt.iris 524288
scoreboard players operation $a jbt.iris += $a jbt.iris
scoreboard players operation $b jbt.iris += $b jbt.iris
execute if score $a jbt.iris matches ..-1 if score $b jbt.iris matches ..-1 run scoreboard players add $a&b jbt.iris 262144
scoreboard players operation $a jbt.iris += $a jbt.iris
scoreboard players operation $b jbt.iris += $b jbt.iris
execute if score $a jbt.iris matches ..-1 if score $b jbt.iris matches ..-1 run scoreboard players add $a&b jbt.iris 131072
scoreboard players operation $a jbt.iris += $a jbt.iris
scoreboard players operation $b jbt.iris += $b jbt.iris
execute if score $a jbt.iris matches ..-1 if score $b jbt.iris matches ..-1 run scoreboard players add $a&b jbt.iris 65536
scoreboard players operation $a jbt.iris += $a jbt.iris
scoreboard players operation $b jbt.iris += $b jbt.iris
execute if score $a jbt.iris matches ..-1 if score $b jbt.iris matches ..-1 run scoreboard players add $a&b jbt.iris 32768
scoreboard players operation $a jbt.iris += $a jbt.iris
scoreboard players operation $b jbt.iris += $b jbt.iris
execute if score $a jbt.iris matches ..-1 if score $b jbt.iris matches ..-1 run scoreboard players add $a&b jbt.iris 16384
scoreboard players operation $a jbt.iris += $a jbt.iris
scoreboard players operation $b jbt.iris += $b jbt.iris
execute if score $a jbt.iris matches ..-1 if score $b jbt.iris matches ..-1 run scoreboard players add $a&b jbt.iris 8192
scoreboard players operation $a jbt.iris += $a jbt.iris
scoreboard players operation $b jbt.iris += $b jbt.iris
execute if score $a jbt.iris matches ..-1 if score $b jbt.iris matches ..-1 run scoreboard players add $a&b jbt.iris 4096
scoreboard players operation $a jbt.iris += $a jbt.iris
scoreboard players operation $b jbt.iris += $b jbt.iris
execute if score $a jbt.iris matches ..-1 if score $b jbt.iris matches ..-1 run scoreboard players add $a&b jbt.iris 2048
scoreboard players operation $a jbt.iris += $a jbt.iris
scoreboard players operation $b jbt.iris += $b jbt.iris
execute if score $a jbt.iris matches ..-1 if score $b jbt.iris matches ..-1 run scoreboard players add $a&b jbt.iris 1024
scoreboard players operation $a jbt.iris += $a jbt.iris
scoreboard players operation $b jbt.iris += $b jbt.iris
execute if score $a jbt.iris matches ..-1 if score $b jbt.iris matches ..-1 run scoreboard players add $a&b jbt.iris 512
scoreboard players operation $a jbt.iris += $a jbt.iris
scoreboard players operation $b jbt.iris += $b jbt.iris
execute if score $a jbt.iris matches ..-1 if score $b jbt.iris matches ..-1 run scoreboard players add $a&b jbt.iris 256
scoreboard players operation $a jbt.iris += $a jbt.iris
scoreboard players operation $b jbt.iris += $b jbt.iris
execute if score $a jbt.iris matches ..-1 if score $b jbt.iris matches ..-1 run scoreboard players add $a&b jbt.iris 128
scoreboard players operation $a jbt.iris += $a jbt.iris
scoreboard players operation $b jbt.iris += $b jbt.iris
execute if score $a jbt.iris matches ..-1 if score $b jbt.iris matches ..-1 run scoreboard players add $a&b jbt.iris 64
scoreboard players operation $a jbt.iris += $a jbt.iris
scoreboard players operation $b jbt.iris += $b jbt.iris
execute if score $a jbt.iris matches ..-1 if score $b jbt.iris matches ..-1 run scoreboard players add $a&b jbt.iris 32
scoreboard players operation $a jbt.iris += $a jbt.iris
scoreboard players operation $b jbt.iris += $b jbt.iris
execute if score $a jbt.iris matches ..-1 if score $b jbt.iris matches ..-1 run scoreboard players add $a&b jbt.iris 16
scoreboard players operation $a jbt.iris += $a jbt.iris
scoreboard players operation $b jbt.iris += $b jbt.iris
execute if score $a jbt.iris matches ..-1 if score $b jbt.iris matches ..-1 run scoreboard players add $a&b jbt.iris 8
scoreboard players operation $a jbt.iris += $a jbt.iris
scoreboard players operation $b jbt.iris += $b jbt.iris
execute if score $a jbt.iris matches ..-1 if score $b jbt.iris matches ..-1 run scoreboard players add $a&b jbt.iris 4
scoreboard players operation $a jbt.iris += $a jbt.iris
scoreboard players operation $b jbt.iris += $b jbt.iris
execute if score $a jbt.iris matches ..-1 if score $b jbt.iris matches ..-1 run scoreboard players add $a&b jbt.iris 2
scoreboard players operation $a jbt.iris += $a jbt.iris
scoreboard players operation $b jbt.iris += $b jbt.iris
execute if score $a jbt.iris matches ..-1 if score $b jbt.iris matches ..-1 run scoreboard players add $a&b jbt.iris 1

# Compute a^b = a+b-2(a&b)
scoreboard players operation $a^b jbt.iris -= $a&b jbt.iris
scoreboard players operation $a^b jbt.iris -= $a&b jbt.iris

# Return the result
return run scoreboard players get $a^b jbt.iris
