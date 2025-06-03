data:extend({
    {
        type = "recipe",
        name = "cube-coal",
        category = "cubic-crafter",
        energy_required = 10,
        --enabled = false,
        ingredients = {
            { type = "item", name = lib.energized_cube_name("", ""), amount = 1 },
        },
        results = {
            { type = "item", name = "coal",                 amount = 15 },
            { type = "item", name = lib.dormant_cube_name("", ""), amount = 1 },
        },
        main_product = "coal",

    },
})
