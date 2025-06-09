require("prototypes.cubes.basic-cube")

local item_sounds = require("__base__.prototypes.item_sounds")

local base_cube = {
    type = "item",
    subgroup = "udforge-basic-cubes",
    icon = utils.icon("test"),
    inventory_move_sound = item_sounds.resource_inventory_move,
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.resource_inventory_move,
    stack_size = 1,
    default_import_location = "udforge",
    weight = 999999999 * kg,
    auto_recycle = false,
}

local cube_tiers = { "", "extra", "super", "hyper", "mega", "ultra" }
local cube_types = { "", "inverted", "evil" }

---Create an energized cube item
---@param cube Cube
---@return data.ItemPrototype
function create_energized_cube(cube)
    return util.merge({
        base_cube,
        {
            name = cube_lib.energized_cube_name(cube),
            icon = utils.icon("cubes/" .. cube_lib.energized_cube_name(cube)),
            --subgroup = "udforge-" .. type,
            order = "a-" .. cube.tier.tier,
            fuel_category = "udforge-cube",
            fuel_value = 9 ^ cube.tier.tier .. "MJ",
            fuel_acceleration_multiplier = 1.5,
            fuel_top_speed_multiplier = 4.5,
            burnt_result = cube_lib.dormant_cube_name(cube),
        }
    })
end

function create_dormant_cube(cube)
    return util.merge({
        base_cube,
        {
            name = cube_lib.dormant_cube_name(cube),
            icon = utils.icon("cubes/" .. cube_lib.dormant_cube_name(cube)),
            --subgroup = "udforge-" .. type,
            order = "b-" .. cube.tier.tier,
        }
    })
end

function create_cube_pair(cube)
    local a = {
        create_energized_cube(cube),
        create_dormant_cube(cube)
    }

    return a
end

data:extend(create_cube_pair(glob.cubes.energized_dense_normal))
data:extend(create_cube_pair(glob.cubes.energized_extra_normal))
data:extend(create_cube_pair(glob.cubes.energized_super_normal))
data:extend(create_cube_pair(glob.cubes.energized_hyper_normal))
