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
            tier = 1,
            tier_name = "extra",
        },
        ---@type CubeTier
        super = {
            tier = 1,
            tier_name = "super",
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
    }
}
