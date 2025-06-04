data:extend({
    {
        type = "recipe",
        name = "cube-coal",
        category = "cubic-crafting",
        energy_required = 10,
        --enabled = false,
        ingredients = {
            { type = "item", name = cube_lib.energized_cube_name("", ""), amount = 1 },
        },
        results = {
            { type = "item", name = "coal",                             amount = 15 },
            { type = "item", name = cube_lib.dormant_cube_name("", ""), amount = 1 },
        },
        main_product = "coal",

    },

    {
        type = "recipe",
        name = "cube-iron-plate",
        category = "cubic-crafting",
        energy_required = 10,
        --enabled = false,
        ingredients = {
            { type = "item", name = cube_lib.energized_cube_name("", ""), amount = 1 },
        },
        results = {
            { type = "item", name = "iron-plate",                       amount = 10 },
            { type = "item", name = cube_lib.dormant_cube_name("", ""), amount = 1 },
        },
        main_product = "iron-plate",

    },

    {
        type = "recipe",
        name = "cube-iron-plate",
        category = "cubic-crafting",
        energy_required = 10,
        --enabled = false,
        ingredients = {
            { type = "item", name = cube_lib.energized_cube_name("", ""), amount = 1 },
        },
        results = {
            { type = "item", name = "copper-plate",                     amount = 3 },
            { type = "item", name = cube_lib.dormant_cube_name("", ""), amount = 1 },
        },
        main_product = "copper-plate",

    },
})
