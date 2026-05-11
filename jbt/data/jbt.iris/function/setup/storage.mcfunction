#> jbt.iris:setup/storage
#
# Sets up storage for Iris
#
# @within jbt.iris:setup/load

data merge storage jbt.iris:data {is_setup: 1b}

# Set default settings
data merge storage jbt.iris:settings {\
    TargetEntities: false,\
    MaxRecursionDepth: 16,\
    Blacklist: "#jbt.iris:shape_groups/air"\
}
