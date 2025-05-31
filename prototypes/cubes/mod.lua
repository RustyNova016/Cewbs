local item_sounds = require("__base__.prototypes.item_sounds")

local base_cube = {
    type = "item",
    subgroup = "cubic",
    inventory_move_sound = item_sounds.resource_inventory_move,
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.resource_inventory_move,
    stack_size = 1,
    default_import_location = "udforge",
    weight = 999999999 * kg,
    fuel_category = "cewbs-cube",
    fuel_value = "1MJ",
    burnt_result = "dormant-microcube",
    fuel_acceleration_multiplier = 1.5,
    fuel_top_speed_multiplier = 4.5,
    auto_recycle = false,
}

local cube_tiers = { "", "extra", "super", "hyper", "mega", "ultra" }
local cube_types = { "", "inverted", "evil" }

---Create an energized cube item
---@param tier [number, string]
---@return data.ItemPrototype
function create_energized_cube(tier, type, order, fuel)
    return util.merge({
        base_cube,
        {
            name = "energized-" .. type .. "-" .. tier[1] .. "-cube",
            subgroup = "udforge-" .. type,
            order = tier[0],
            fuel_value = 9 ^ tier .. "KJ",
            burnt_result = "dormant-" .. type .. "-" .. tier[1] .. "-cube",
        }
    })
end
