local Public = {}

---Create a cube's name from a cube struct
---@param cube Cube
---@return string
Public.cube_name = function(cube)
    return cube.state .. "-" .. cube.type .. "-" .. cube.tier .. "-cube"
end

---Create the dormant version of a cube
---@param cube Cube
---@return Cube
Public.dormant = function(cube)
    return util.merge({
        cube,
        {
            state = "dormant"
        }
    })
end

---Create the energized version of a cube
---@param cube Cube
---@return Cube
Public.energized = function(cube)
    return util.merge({
        cube,
        {
            state = "energized"
        }
    })
end

Public.energized_cube_name = function(tier, type)
    return "energized-" .. tier .. "-" .. type .. "-cube"
end

Public.dormant_cube_name = function(tier, type)
    return "dormant-" .. tier .. "-" .. type .. "-cube"
end

function Public.cube_ingredient(tier, type)
    return { type = "item", name = utils.energized_cube_name(tier, type), amount = 1 }
end

function Public.cube_product(tier, type)
    return { type = "item", name = utils.dormant_cube_name(tier, type), amount = 1 }
end

Public.cubes = {
    ---@type CubeTier[]
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
}

return Public
