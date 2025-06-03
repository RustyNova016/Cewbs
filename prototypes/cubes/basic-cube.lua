data:extend({
    {
        type = "recipe",
        name = lib.dormant_cube_name("", ""),
        energy_required = 10,
        --enabled = false,
        ingredients = {
            { type = "item", name = "cube-core",  amount = 1 },
            { type = "item", name = "cube-jelly", amount = 15 },
            { type = "item", name = "ultradense-plate", amount = 6 },
        },
        results = { { type = "item", name = lib.dormant_cube_name("", ""), amount = 1 } },
        main_product = lib.dormant_cube_name("", "")
    },
    {
        type = "recipe",
        name = lib.dormant_cube_name("extra", ""),
        energy_required = 10,
        --enabled = false,
        ingredients = {
            { type = "item", name = lib.energized_cube_name("", ""), amount = 4 },
            { type = "item", name = "cube-matter",       amount = 20 },
            { type = "item", name = "undimensional-widget", amount = 2 },
        },
        results = { { type = "item", name = lib.dormant_cube_name("extra", ""), amount = 1 } },
        main_product = lib.dormant_cube_name("extra", "")
    },
})
