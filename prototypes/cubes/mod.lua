require("prototypes.cubes.basic-cube")

local item_sounds = require("__base__.prototypes.item_sounds")

local base_cube = {
    type = "item",
    subgroup = "udforge-basic-cubes",
    icon = lib.icon("test"),
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
---@param tier [number, string]
---@return data.ItemPrototype
function create_energized_cube(tier, type)
    return util.merge({
        base_cube,
        {
            name = cube_lib.energized_cube_name(tier[2], type),
            icon = lib.icon("cubes/" .. cube_lib.energized_cube_name(tier[2], type)),
            --subgroup = "udforge-" .. type,
            order = "a-" .. tier[1],
            fuel_category = "udforge-cube",
            fuel_value = 9 ^ tier[1] .. "MJ",
            fuel_acceleration_multiplier = 1.5,
            fuel_top_speed_multiplier = 4.5,
            burnt_result = "dormant-" .. type .. "-" .. tier[2] .. "-cube",
        }
    })
end

function create_dormant_cube(tier, type)
    return util.merge({
        base_cube,
        {
            name = "dormant-" .. type .. "-" .. tier[2] .. "-cube",
            icon = lib.icon("cubes/dormant-" .. type .. "-" .. tier[2] .. "-cube"),
            --subgroup = "udforge-" .. type,
            order = "b-" .. tier[1],
        }
    })
end

function create_cube_pair(tier, type)
    return {
        create_energized_cube(tier, type),
        create_dormant_cube(tier, type)
    }
end

data:extend(util.merge({
    create_cube_pair({ 1, "" }, ""),
    --create_cube_pair({ 4, "hyper" }, ""),
}))
