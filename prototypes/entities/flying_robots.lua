local construction = {
    filename = "__ultradense-forge__/graphics/entity/construction-cube.png",
    priority = "high",
    line_length = 1,
    width = 66,
    height = 76,
    direction_count = 1,
    frame_count = 1,
    scale = 0.5
}

data:extend({
    util.merge({
        data.raw["construction-robot"]["construction-robot"],
        {
            name = "construction-cube",
            icon = utils.icon("construction-cube"),
            speed = 0.03,
            max_energy = "100MJ",
            energy_per_tick = "0.01kJ",
            speed_multiplier_when_out_of_energy = 0.2,
            energy_per_move = "0.1kJ",
            min_to_charge = 0.2,
            max_to_charge = 0.95,

            -- idle = construction,
            -- idle_with_cargo = construction,
            -- in_motion = construction,
            -- in_motion_with_cargo = construction,
            -- working = construction,
            -- shadow_idle = construction,
            -- shadow_idle_with_cargo = construction,
            -- shadow_in_motion = construction,
            -- shadow_in_motion_with_cargo = construction,
            -- shadow_working = construction,
        }
    }),

    util.merge({
        data.raw["item"]["construction-robot"],
        {
            name = "construction-cube",
            icon = utils.icon("construction-cube"),
            place_result = "construction-cube",
            weight = utils.rocket_stack_size(25),
            stack_size = 25
        }
    }),


    {
        type = "recipe",
        name = "construction-cube",
        icon = utils.icon("construction-cube"),
        energy_required = 30,
        --enabled = false,
        ingredients = {
            --{ type = "item", name = "energized-hyper-cube",       amount = 1 },
            { type = "item", name = "cube-matter",        amount = 20 },
            --{ type = "item", name = "cube-control-unit",       amount = 20 },
            --{ type = "item", name = "kr-imersium-gear-wheel", amount = 20 },
            --{ type = "item", name = "kr-rare-metals",         amount = 80 },
            --{ type = "item", name = "kr-ai-core",             amount = 10 },
            { type = "item", name = "construction-robot", amount = 1 },
        },
        results = { { type = "item", name = "construction-cube", amount = 1 } },
    },
})
