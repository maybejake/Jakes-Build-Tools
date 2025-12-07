#> jbt.iris:setup/load
#
# Defines scoreboard objectives and sets up storage if it has not already been done
#
# @handles #minecraft:load

# IDE storage definitions for Spyglass
#define storage jbt.iris:data
#define storage jbt.iris:args
#define storage jbt.iris:settings
#define storage jbt.iris:output

# Setup scoreboard and storage
function jbt.iris:setup/scoreboard
execute unless data storage jbt.iris:data is_setup run function jbt.iris:setup/storage
