do
    ---@class CubeTier
    ---@field tier integer
    ---@field tier_name string
end

do
    ---@class Cube
    ---@field tier CubeTier
    ---@field type string,
    ---@field state string
end

local cube_attr = {
    tiers = {
        ---@type CubeTier
        dense = {
            tier = 1,
            tier_name = "",
        },
        ---@type CubeTier
        extra = {
            tier = 2,
            tier_name = "extra",
        },
        ---@type CubeTier
        super = {
            tier = 3,
            tier_name = "super",
        },
        ---@type CubeTier
        hyper = {
            tier = 4,
            tier_name = "hyper",
        }
    },
    types = {
        normal = ""
    },
    state = {
        energized = "energized",
        dormant = "dormant",
        replicube = "replicube",
        replicube_dormant = "replicube-dormant",
        projected = "projected",
    }
}

return {
    cube_attr = cube_attr,

    cubes = {
        dormant_dense_normal = {
            state = cube_attr.state.dormant,
            tier = cube_attr.tiers.dense,
            type = cube_attr.types.normal
        },
        energized_dense_normal = {
            state = cube_attr.state.energized,
            tier = cube_attr.tiers.dense,
            type = cube_attr.types.normal
        },

        dormant_extra_normal = {
            state = cube_attr.state.dormant,
            tier = cube_attr.tiers.extra,
            type = cube_attr.types.normal
        },
        energized_extra_normal = {
            state = cube_attr.state.energized,
            tier = cube_attr.tiers.extra,
            type = cube_attr.types.normal
        },

        dormant_super_normal = {
            state = cube_attr.state.dormant,
            tier = cube_attr.tiers.super,
            type = cube_attr.types.normal
        },
        energized_super_normal = {
            state = cube_attr.state.energized,
            tier = cube_attr.tiers.super,
            type = cube_attr.types.normal
        },

        dormant_hyper_normal = {
            state = cube_attr.state.dormant,
            tier = cube_attr.tiers.hyper,
            type = cube_attr.types.normal
        },
        energized_hyper_normal = {
            state = cube_attr.state.energized,
            tier = cube_attr.tiers.hyper,
            type = cube_attr.types.normal
        },
    }
}
