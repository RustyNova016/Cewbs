data:extend({
    {
        type = "recipe",
        name = cube_lib.dormant_cube_name("", ""),
        category = "cubic-crafting",
        energy_required = 10,
        --enabled = false,
        ingredients = {
            { type = "item", name = "cube-core",  amount = 1 },
            { type = "item", name = "cube-jelly", amount = 15 },
            { type = "item", name = "ultradense-plate", amount = 6 },
        },
        results = { { type = "item", name = cube_lib.dormant_cube_name("", ""), amount = 1 } },
        main_product = cube_lib.dormant_cube_name("", "")
    },
    -- {
    --     type = "recipe",
    --     name = cube_lib.dormant_cube_name("extra", ""),
    --     energy_required = 10,
    --     --enabled = false,
    --     ingredients = {
    --         { type = "item", name = cube_lib.energized_cube_name("", ""), amount = 4 },
    --         { type = "item", name = "cube-matter",       amount = 20 },
    --         { type = "item", name = "undimensional-widget", amount = 2 },
    --     },
    --     results = { { type = "item", name = cube_lib.dormant_cube_name("extra", ""), amount = 1 } },
    --     main_product = cube_lib.dormant_cube_name("extra", "")
    -- },

    {
        type = "recipe",
        name = cube_lib.dormant_cube_name("", "") .. "-recovery",
        category = "cube-recovery",
        energy_required = 10,
        --enabled = false,
        ingredients = { { type = "item", name = cube_lib.dormant_cube_name("", ""), amount = 1 }, },
        results = { { type = "item", name = cube_lib.energized_cube_name("", ""), amount = 1 } },
        main_product = cube_lib.energized_cube_name("", "")
    },
})
